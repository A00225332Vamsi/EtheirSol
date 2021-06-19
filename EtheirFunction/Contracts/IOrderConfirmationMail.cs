using System;
using System.Collections.Generic;
using System.Text;
using Ethier.Model;

namespace EthierFunction.Contracts
{
    public interface IOrderConfirmationMail
    {
        public void SendMail(EmailContent insurerEmailContent, string mailUserName, string mailPassword);
    }
}
