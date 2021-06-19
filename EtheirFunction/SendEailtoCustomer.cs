using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Ethier.Model;
using System.Net.Http;
using Etheir.Data.Interfaces;
using Etheir.Data.Repositories;
using Microsoft.Extensions.DependencyInjection;
using EtheirFunction;
using Microsoft.Extensions.Configuration;
using Twilio;
using Twilio.Rest.Api.V2010.Account;

namespace EthierFunction
{
    public static class SendEailtoCustomer
    {
        [FunctionName("SendEailtoCustomer")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", "post", Route = null)] HttpRequestMessage req,
            ILogger log)
        {
            log.LogInformation("C# HTTP trigger function processed a request.");
            var content = req.Content;
            var ERepository = StartupHelper.SetupAzureFunction().ServiceProvier.GetService<IEtheirRepository>();

            string jsonContent = content.ReadAsStringAsync().Result;
            var inputContent = JsonConvert.DeserializeObject<ApexScaleTicket>(jsonContent);
            var config = new ConfigurationBuilder()
               .SetBasePath(Directory.GetCurrentDirectory())
               .AddJsonFile("local.settings.json").Build();

            if (!string.IsNullOrEmpty(config.ToString()))
            {
                string dbconnectionStr = config["ConnectionStrings:EtheirConnection"];

                if (ERepository.InsertData(inputContent, dbconnectionStr) > 0)
                {
                    //sending Email
                    string guid = inputContent.CustomerID + inputContent.OrderID;
                    EmailContent objEmail = new EmailContent();
                    objEmail.From = "EtheirService@gmail.com";
                    objEmail.To = "info.vkapps@gmail.com,raydenor1212@gmail.com";
                    objEmail.ReplyTo = "info.vkapps@gmail.com";
                    objEmail.ReployToDisplayName = inputContent.CustomerID;
                    objEmail.Subject = "Order Confirmation Mail";
                    objEmail.body = "Thank you for your order. Your order #" + inputContent.OrderID + " is on its way! Estimated delivery is 12:42 PM today. Click here for a love map: https://web.fleetcomplete.com/login?guid=" + guid + " ";
                    objEmail.FromDisplayName = "EtheirService";
                    objEmail.ToDisplayName = inputContent.CustomerID;
                    objEmail.Port = 587;
                    objEmail.Host = "smtp.gmail.com"; //for gmail host  
                    SendEmail.SendMail(objEmail, "EtheirService@gmail.com", "Vamsi@21");

                    //sending SMS

                    string accountSid = config["TwilioAccountDetails:AccountSid"];
                    string authToken = config["TwilioAccountDetails:AuthToken"]; ;

                    TwilioClient.Init(accountSid, authToken);

                    var message = MessageResource.Create(
                        body: "Thank you for your order. Your order #" + inputContent.OrderID + " is on its way! Estimated delivery is 12:42 PM today. Click here for a love map: https://web.fleetcomplete.com/login?guid=" + guid,
                        from: new Twilio.Types.PhoneNumber("+19704451154"),
                        to: new Twilio.Types.PhoneNumber("+1 249-885-2222, +1 226-798-3341, +1 647-330-7055")
                       
                    );
                }

                //    ? "This HTTP triggered function executed successfully. Pass a name in the query string or in the request body for a personalized response."
                //    : $"Hello, {name}. This HTTP triggered function executed successfully.";

                return new OkObjectResult(true);
            }
            else
            {
                return new EmptyResult();
            }
        }
    }
}
