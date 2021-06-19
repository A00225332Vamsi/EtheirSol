using System;
using System.Collections.Generic;
using System.Text;
using Ethier.Model;

namespace Etheir.Data.Interfaces
{
   public interface IEtheirRepository
    {
        int InsertData(ApexScaleTicket apexScaleTicket, string dbConString);
    }
}
