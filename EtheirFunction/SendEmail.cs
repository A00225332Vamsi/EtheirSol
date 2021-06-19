using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;

using Ethier.Model;

namespace EtheirFunction
{
    public static class SendEmail
    {
        public static void SendMail(EmailContent EmailContent, string mailUserName, string mailPassword)
        {
            try {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress(EmailContent.From, EmailContent.FromDisplayName, Encoding.ASCII);
                    string[] tomail = EmailContent.To.Split(',');
                    foreach (string to in tomail)
                    {
                        mail.To.Add(new MailAddress(to, EmailContent.ToDisplayName, Encoding.ASCII));
                    }
                    mail.Subject = EmailContent.Subject;
                    mail.IsBodyHtml = true;
                    mail.Body = EmailContent.body;
                    if (!string.IsNullOrEmpty(EmailContent.attachment))
                    {
                        MemoryStream str = new MemoryStream();
                        var strWtr = new StreamWriter(str);
                        strWtr.Write(EmailContent.attachment);
                        strWtr.Flush();
                        str.Position = 0;
                        Attachment attachment = new Attachment(str, "VehicleTracker.txt");
                        mail.Attachments.Add(attachment);
                    }
                    mail.ReplyToList.Add(new MailAddress(EmailContent.ReplyTo, EmailContent.ReployToDisplayName, Encoding.ASCII));
                    using (SmtpClient client = new SmtpClient(EmailContent.Host, EmailContent.Port))
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = true;
                        client.Credentials = new NetworkCredential(mailUserName, mailPassword);
                        client.Send(mail);
                    }
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }


}
