using Etheir.Data.Interfaces;
using Etheir.Data.Repositories;
using EthierFunction.Contracts;
using EthierFunction.Implementations;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Text;

namespace EthierFunction
{
    [ExcludeFromCodeCoverage]
    public static class StartupHelper
    {
        public static FunctionHostEnvironment SetupAzureFunction()
        {
            var builder = new ConfigurationBuilder()
                            .SetBasePath(Directory.GetCurrentDirectory())
                            .AddJsonFile("local.settings.json", optional: true, reloadOnChange: true)
                            .AddEnvironmentVariables();
            IConfigurationRoot configuration = builder.Build();
            var services = new ServiceCollection();
          
            
            services.AddSingleton<IOrderConfirmationMail, OrderConfirmationMail>();
            services.AddSingleton<IEtheirRepository, EtheirRepository>();

            var serviceProvider = services.BuildServiceProvider(true);
          
           
            var hostEnvironment = new FunctionHostEnvironment()
            {
                ServiceProvier = serviceProvider
            };
            return hostEnvironment;
        }
    }
}
