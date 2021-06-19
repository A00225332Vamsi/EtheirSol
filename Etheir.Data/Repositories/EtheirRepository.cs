using Etheir.Data.Interfaces;
using Ethier.Model;
using Microsoft.Extensions.Configuration;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Etheir.Data.Repositories
{
    public class EtheirRepository : IEtheirRepository
    {
        public int InsertData(ApexScaleTicket apexScaleTicket, string Constring)
        {
            int i = 0;
            try { 
            //var dbconfig = new ConfigurationBuilder()
            //                   .SetBasePath(Directory.GetCurrentDirectory())
            //                   .AddJsonFile("local.settings.json", optional: true, reloadOnChange: true)
            //                   .AddEnvironmentVariables();
          
            var dbconfig = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("local.settings.json").Build();

            if (!string.IsNullOrEmpty(dbconfig.ToString()))
            {
             //var   dbconnectionStr = dbconfig["ConnectionStrings:EtheirConnection"];
                    var dbconnectionStr = Constring;
                    using (SqlConnection connection = new SqlConnection(dbconnectionStr))
                    {
                        string sql = "usp_InsertEither";
                        using (SqlCommand cmd = new SqlCommand(sql, connection))
                        {

                            cmd.Parameters.AddWithValue("@acQty", apexScaleTicket.AcQty);
                            cmd.Parameters.AddWithValue("@address1", apexScaleTicket.Address1);
                            cmd.Parameters.AddWithValue("@address2", apexScaleTicket.Address2);
                            cmd.Parameters.AddWithValue("@airEntrainment", apexScaleTicket.AirEntrainment);
                            cmd.Parameters.AddWithValue("@altTicketQty", apexScaleTicket.AltTicketQty);
                            cmd.Parameters.AddWithValue("@altTicketQtyEdited", apexScaleTicket.AltTicketQtyEdited);
                            cmd.Parameters.AddWithValue("@altTicketUnitID", apexScaleTicket.AltTicketUnitID);
                            cmd.Parameters.AddWithValue("@altTicketUseCvtNet", apexScaleTicket.AltTicketUseCvtNet);
                            cmd.Parameters.AddWithValue("@applyMinimums", apexScaleTicket.ApplyMinimums);
                            cmd.Parameters.AddWithValue("@approvalCode", apexScaleTicket.ApprovalCode);
                            cmd.Parameters.AddWithValue("@approvalDateTime", apexScaleTicket.ApprovalDateTime);
                            cmd.Parameters.AddWithValue("@approvalStatus", apexScaleTicket.ApprovalStatus);
                            cmd.Parameters.AddWithValue("@approvalUserID", apexScaleTicket.ApprovalUserID);
                            cmd.Parameters.AddWithValue("@auditTime", apexScaleTicket.AuditTime);
                            cmd.Parameters.AddWithValue("@auditDate", apexScaleTicket.AuditDate);
                            cmd.Parameters.AddWithValue("@auditTransferred", apexScaleTicket.AuditTransferred);
                            cmd.Parameters.AddWithValue("@auditType", apexScaleTicket.AuditType);
                            cmd.Parameters.AddWithValue("@auditUID1", apexScaleTicket.AuditUID1);
                            cmd.Parameters.AddWithValue("@auditUID2", apexScaleTicket.AuditUID2);
                            cmd.Parameters.AddWithValue("@auditUserID", apexScaleTicket.AuditUserID);
                            cmd.Parameters.AddWithValue("@basePackageAmount", apexScaleTicket.BasePackageAmount);
                            cmd.Parameters.AddWithValue("@batchID", apexScaleTicket.BatchID);
                            cmd.Parameters.AddWithValue("@batchIDAp", apexScaleTicket.BatchIDAp);
                            cmd.Parameters.AddWithValue("@batchIDAr", apexScaleTicket.BatchIDAr);
                            cmd.Parameters.AddWithValue("@binID", apexScaleTicket.BinID);
                            cmd.Parameters.AddWithValue("@block", apexScaleTicket.Block);
                            cmd.Parameters.AddWithValue("@calcium", apexScaleTicket.Calcium);
                            cmd.Parameters.AddWithValue("@carrierID", apexScaleTicket.CarrierID);
                            cmd.Parameters.AddWithValue("@cashStatus", apexScaleTicket.CashStatus);
                            cmd.Parameters.AddWithValue("@checkInDate", apexScaleTicket.CheckInDate);
                            cmd.Parameters.AddWithValue("@checkInTime", apexScaleTicket.CheckInTime);
                            cmd.Parameters.AddWithValue("@city", apexScaleTicket.City);
                            cmd.Parameters.AddWithValue("@cityID", apexScaleTicket.CityID);
                            cmd.Parameters.AddWithValue("@closed", apexScaleTicket.Closed);
                            cmd.Parameters.AddWithValue("@cmrNumber", apexScaleTicket.CMRNumber);
                            cmd.Parameters.AddWithValue("@comment1", apexScaleTicket.Comment1);
                            cmd.Parameters.AddWithValue("@comment2", apexScaleTicket.Comment2);
                            cmd.Parameters.AddWithValue("@comment3", apexScaleTicket.Comment3);
                            cmd.Parameters.AddWithValue("@country", apexScaleTicket.Country);
                            cmd.Parameters.AddWithValue("@county", apexScaleTicket.County);
                            cmd.Parameters.AddWithValue("@credited", apexScaleTicket.Credited);
                            cmd.Parameters.AddWithValue("@customerID", apexScaleTicket.CustomerID);
                            cmd.Parameters.AddWithValue("@customerJob", apexScaleTicket.CustomerJob);
                            cmd.Parameters.AddWithValue("@cvtNetUnitID", apexScaleTicket.CvtNetUnitID);
                            cmd.Parameters.AddWithValue("@cvtNetWeight", apexScaleTicket.CvtNetWeight);
                            cmd.Parameters.AddWithValue("@dateIn", apexScaleTicket.DateIn);
                            cmd.Parameters.AddWithValue("@deliveryAddress1", apexScaleTicket.DeliveryAddress1);
                            cmd.Parameters.AddWithValue("@deliveryAddress2", apexScaleTicket.DeliveryAddress2);
                            cmd.Parameters.AddWithValue("@deliveryAddress3", apexScaleTicket.DeliveryAddress3);
                            cmd.Parameters.AddWithValue("@description", apexScaleTicket.Description);
                            cmd.Parameters.AddWithValue("@destinationID", apexScaleTicket.DestinationID);
                            cmd.Parameters.AddWithValue("@dispatchDate", apexScaleTicket.DispatchDate);
                            cmd.Parameters.AddWithValue("@dispatchLoadID", apexScaleTicket.DispatchLoadID);
                            cmd.Parameters.AddWithValue("@dispatchNo", apexScaleTicket.DispatchNo);
                            cmd.Parameters.AddWithValue("@distanceToDest", apexScaleTicket.DistanceToDest);
                            cmd.Parameters.AddWithValue("@driverID", apexScaleTicket.DriverID);
                            cmd.Parameters.AddWithValue("@endingPackageAmount", apexScaleTicket.EndingPackageAmount);
                            cmd.Parameters.AddWithValue("@exportStatus", apexScaleTicket.ExportStatus);
                            cmd.Parameters.AddWithValue("@externalMsgID", apexScaleTicket.ExternalMsgID);
                            cmd.Parameters.AddWithValue("@factorGroupID", apexScaleTicket.FactorGroupID);
                            cmd.Parameters.AddWithValue("@feeCodeID", apexScaleTicket.FeeCodeID);
                            cmd.Parameters.AddWithValue("@freightFob", apexScaleTicket.FreightFob);
                            cmd.Parameters.AddWithValue("@freightMode", apexScaleTicket.FreightMode);
                            cmd.Parameters.AddWithValue("@freightPaySource", apexScaleTicket.FreightPaySource);
                            cmd.Parameters.AddWithValue("@freightPayUseCvtNet", apexScaleTicket.FreightPayUseCvtNet);
                            cmd.Parameters.AddWithValue("@freightQty", apexScaleTicket.FreightQty);
                            cmd.Parameters.AddWithValue("@freightRateSource", apexScaleTicket.FreightRateSource);
                            cmd.Parameters.AddWithValue("@freightRateType", apexScaleTicket.FreightRateType);
                            cmd.Parameters.AddWithValue("@freightStatus", apexScaleTicket.FreightStatus);
                            cmd.Parameters.AddWithValue("@freightType", apexScaleTicket.FreightType);
                            cmd.Parameters.AddWithValue("@freightUnitID", apexScaleTicket.FreightUnitID);
                            cmd.Parameters.AddWithValue("@freightUseCvtNet", apexScaleTicket.FreightUseCvtNet);
                            cmd.Parameters.AddWithValue("@globalUID", apexScaleTicket.GlobalUID);
                            cmd.Parameters.AddWithValue("@grid", apexScaleTicket.Grid);
                            cmd.Parameters.AddWithValue("@gross", apexScaleTicket.Gross);
                            cmd.Parameters.AddWithValue("@grossCertGUID", apexScaleTicket.GrossCertGUID);
                            cmd.Parameters.AddWithValue("@grossStatus", apexScaleTicket.GrossStatus);
                            cmd.Parameters.AddWithValue("@hotWater", apexScaleTicket.HotWater);
                            cmd.Parameters.AddWithValue("@ice", apexScaleTicket.Ice);
                            cmd.Parameters.AddWithValue("@incoterms", apexScaleTicket.Incoterms);
                            cmd.Parameters.AddWithValue("@invoiceNo", apexScaleTicket.InvoiceNo);
                            cmd.Parameters.AddWithValue("@invoiceStatus", apexScaleTicket.InvoiceStatus);
                            cmd.Parameters.AddWithValue("@invoiceUniqueID", apexScaleTicket.InvoiceUniqueID);
                            cmd.Parameters.AddWithValue("@isMultiTktSplitLoad", apexScaleTicket.IsMultiTktSplitLoad);
                            cmd.Parameters.AddWithValue("@itemCount", apexScaleTicket.ItemCount);
                            cmd.Parameters.AddWithValue("@itemNo", apexScaleTicket.ItemNo);
                            cmd.Parameters.AddWithValue("@jobCostID", apexScaleTicket.JobCostID);
                            cmd.Parameters.AddWithValue("@jobID", apexScaleTicket.JobID);
                            cmd.Parameters.AddWithValue("@journeyItemNo", apexScaleTicket.JourneyItemNo);
                            cmd.Parameters.AddWithValue("@journeyUID", apexScaleTicket.JourneyUID);
                            cmd.Parameters.AddWithValue("@loadDate", apexScaleTicket.LoadDate);
                            cmd.Parameters.AddWithValue("@loadStationID", apexScaleTicket.LoadStationID);
                            cmd.Parameters.AddWithValue("@loadTargetGross", apexScaleTicket.LoadTargetGross);
                            cmd.Parameters.AddWithValue("@loadTargetNet", apexScaleTicket.LoadTargetNet);
                            cmd.Parameters.AddWithValue("@loadTime", apexScaleTicket.LoadTime);
                            cmd.Parameters.AddWithValue("@locationID", apexScaleTicket.LocationID);
                            cmd.Parameters.AddWithValue("@loginLocationID", apexScaleTicket.LoginLocationID);
                            cmd.Parameters.AddWithValue("@lot", apexScaleTicket.Lot);
                            cmd.Parameters.AddWithValue("@lotAccumQty", apexScaleTicket.LotAccumQty);
                            cmd.Parameters.AddWithValue("@lotLoadNo", apexScaleTicket.LotLoadNo);
                            cmd.Parameters.AddWithValue("@lotNo", apexScaleTicket.LotNo);
                            cmd.Parameters.AddWithValue("@mapBook", apexScaleTicket.MapBook);
                            cmd.Parameters.AddWithValue("@masterOrderID", apexScaleTicket.MasterOrderID);
                            cmd.Parameters.AddWithValue("@matlUnitID", apexScaleTicket.MatlUnitID);
                            cmd.Parameters.AddWithValue("@matlUseCvtNet", apexScaleTicket.MatlUseCvtNet);
                            cmd.Parameters.AddWithValue("@maxWeightLimit", apexScaleTicket.MaxWeightLimit);
                            cmd.Parameters.AddWithValue("@minimumFreightPayQty", apexScaleTicket.MinimumFreightPayQty);
                            cmd.Parameters.AddWithValue("@minimumFreightQty", apexScaleTicket.MinimumFreightQty);
                            cmd.Parameters.AddWithValue("@minimumQty", apexScaleTicket.MinimumQty);
                            cmd.Parameters.AddWithValue("@miscStatus", apexScaleTicket.MiscStatus);
                            cmd.Parameters.AddWithValue("@mixID", apexScaleTicket.MixID);
                            cmd.Parameters.AddWithValue("@mobileTktSubmitted", apexScaleTicket.MobileTktSubmitted);
                            cmd.Parameters.AddWithValue("@msgID", apexScaleTicket.MsgID);
                            cmd.Parameters.AddWithValue("@net", apexScaleTicket.Net);
                            cmd.Parameters.AddWithValue("@netStatus", apexScaleTicket.NetStatus);
                            cmd.Parameters.AddWithValue("@nextUniqueID", apexScaleTicket.NextUniqueID);
                            cmd.Parameters.AddWithValue("@notesID", apexScaleTicket.NotesID);
                            cmd.Parameters.AddWithValue("@okStatus", apexScaleTicket.OkStatus);
                            cmd.Parameters.AddWithValue("@orderID", apexScaleTicket.OrderID);
                            cmd.Parameters.AddWithValue("@orderItem", apexScaleTicket.OrderItem);
                            cmd.Parameters.AddWithValue("@orderLoads", apexScaleTicket.OrderLoads);
                            cmd.Parameters.AddWithValue("@orderQty", apexScaleTicket.OrderQty);
                            cmd.Parameters.AddWithValue("@orgCompanyID", apexScaleTicket.OrgCompanyID);
                            cmd.Parameters.AddWithValue("@originSystem", apexScaleTicket.OriginSystem);
                            cmd.Parameters.AddWithValue("@packageManuallySet", apexScaleTicket.PackageManuallySet);
                            cmd.Parameters.AddWithValue("@page", apexScaleTicket.Page);
                            cmd.Parameters.AddWithValue("@payInfo", apexScaleTicket.PayInfo);
                            cmd.Parameters.AddWithValue("@payMethod", apexScaleTicket.PayMethod);
                            cmd.Parameters.AddWithValue("@payRefID", apexScaleTicket.PayRefID);
                            cmd.Parameters.AddWithValue("@podDate", apexScaleTicket.PodDate);
                            cmd.Parameters.AddWithValue("@podTicketReceived", apexScaleTicket.PodTicketReceived);
                            cmd.Parameters.AddWithValue("@podTime", apexScaleTicket.PodTime);
                            cmd.Parameters.AddWithValue("@postStatus", apexScaleTicket.PostStatus);
                            cmd.Parameters.AddWithValue("@prevailingWage", apexScaleTicket.PrevailingWage);
                            cmd.Parameters.AddWithValue("@previousUniqueID", apexScaleTicket.PreviousUniqueID);
                            cmd.Parameters.AddWithValue("@priceSource", apexScaleTicket.PriceSource);
                            cmd.Parameters.AddWithValue("@productID", apexScaleTicket.ProductID);
                            cmd.Parameters.AddWithValue("@purchaseOrder", apexScaleTicket.PurchaseOrder);
                            // cmd.Parameters.AddWithValue("@qty", apexScaleTicket.Qty);
                            cmd.Parameters.AddWithValue("@receiveStatus", apexScaleTicket.ReceiveStatus);
                            cmd.Parameters.AddWithValue("@reconciled", apexScaleTicket.Reconciled);
                            cmd.Parameters.AddWithValue("@referSplitTicketNo", apexScaleTicket.ReferSplitTicketNo);
                            cmd.Parameters.AddWithValue("@referSplitUniqueID", apexScaleTicket.ReferSplitUniqueID);
                            cmd.Parameters.AddWithValue("@referTicketNo", apexScaleTicket.ReferTicketNo);
                            cmd.Parameters.AddWithValue("@referUniqueID", apexScaleTicket.ReferUniqueID);
                            cmd.Parameters.AddWithValue("@releaseID", apexScaleTicket.ReleaseID);
                            cmd.Parameters.AddWithValue("@repriced", apexScaleTicket.Repriced);
                            cmd.Parameters.AddWithValue("@reprintCount", apexScaleTicket.ReprintCount);
                            cmd.Parameters.AddWithValue("@returnTicket", apexScaleTicket.ReturnTicket);
                            cmd.Parameters.AddWithValue("@scaleIDGross", apexScaleTicket.ScaleIDGross);
                            cmd.Parameters.AddWithValue("@scaleIDTare", apexScaleTicket.ScaleIDTare);
                            cmd.Parameters.AddWithValue("@scaleStatLocationID", apexScaleTicket.ScaleStatLocationID);
                            cmd.Parameters.AddWithValue("@scaleStatMsgID", apexScaleTicket.ScaleStatMsgID);
                            cmd.Parameters.AddWithValue("@scaleStatScaleID", apexScaleTicket.ScaleStatScaleID);
                            cmd.Parameters.AddWithValue("@scaleStatType", apexScaleTicket.ScaleStatType);
                            cmd.Parameters.AddWithValue("@scaleUnitID", apexScaleTicket.ScaleUnitID);
                            cmd.Parameters.AddWithValue("@sellOrBuy", apexScaleTicket.SellOrBuy);
                            cmd.Parameters.AddWithValue("@shipLocationID", apexScaleTicket.ShipLocationID);
                            cmd.Parameters.AddWithValue("@shipmentNo", apexScaleTicket.ShipmentNo);
                            cmd.Parameters.AddWithValue("@shipmentUniqueID", apexScaleTicket.ShipmentUniqueID);
                            cmd.Parameters.AddWithValue("@shipOrReceive", apexScaleTicket.ShipOrReceive);
                            cmd.Parameters.AddWithValue("@shipTerms", apexScaleTicket.ShipTerms);
                            cmd.Parameters.AddWithValue("@shipTo", apexScaleTicket.ShipTo);
                            cmd.Parameters.AddWithValue("@shipVia", apexScaleTicket.ShipVia);
                            cmd.Parameters.AddWithValue("@slump", apexScaleTicket.Slump);
                            cmd.Parameters.AddWithValue("@slumpAtDestination", apexScaleTicket.SlumpAtDestination);
                            cmd.Parameters.AddWithValue("@sourceID", apexScaleTicket.SourceID);
                            cmd.Parameters.AddWithValue("@specialPricing", apexScaleTicket.SpecialPricing);
                            cmd.Parameters.AddWithValue("@splitCap1CertGUID", apexScaleTicket.SplitCap1CertGUID);
                            cmd.Parameters.AddWithValue("@splitCap2CertGUID", apexScaleTicket.SplitCap2CertGUID);
                            cmd.Parameters.AddWithValue("@splitCap3CertGUID", apexScaleTicket.SplitCap3CertGUID);
                            cmd.Parameters.AddWithValue("@splitCap4CertGUID", apexScaleTicket.SplitCap4CertGUID);
                            cmd.Parameters.AddWithValue("@splitCapture1", apexScaleTicket.SplitCapture1);
                            cmd.Parameters.AddWithValue("@splitCapture2", apexScaleTicket.SplitCapture2);
                            cmd.Parameters.AddWithValue("@splitCapture3", apexScaleTicket.SplitCapture3);
                            cmd.Parameters.AddWithValue("@splitCapture4", apexScaleTicket.SplitCapture4);
                            cmd.Parameters.AddWithValue("@splitCaptureMethod", apexScaleTicket.SplitCaptureMethod);
                            cmd.Parameters.AddWithValue("@splitLoad", apexScaleTicket.SplitLoad);
                            cmd.Parameters.AddWithValue("@splitLoadCount", apexScaleTicket.SplitLoadCount);
                            cmd.Parameters.AddWithValue("@splitLoadTotalGross", apexScaleTicket.SplitLoadTotalGross);
                            cmd.Parameters.AddWithValue("@splitLoadTotalNet", apexScaleTicket.SplitLoadTotalNet);
                            cmd.Parameters.AddWithValue("@splitLoadTotalTare", apexScaleTicket.SplitLoadTotalTare);
                            cmd.Parameters.AddWithValue("@splitMaterialFreight", apexScaleTicket.SplitMaterialFreight);
                            cmd.Parameters.AddWithValue("@state", apexScaleTicket.State);
                            cmd.Parameters.AddWithValue("@substituteProductID", apexScaleTicket.SubstituteProductID);
                            cmd.Parameters.AddWithValue("@superPlasticizer", apexScaleTicket.SuperPlasticizer);
                            cmd.Parameters.AddWithValue("@tare", apexScaleTicket.Tare);
                            cmd.Parameters.AddWithValue("@tareCertGUID", apexScaleTicket.TareCertGUID);
                            cmd.Parameters.AddWithValue("@tareStatus", apexScaleTicket.TareStatus);
                            cmd.Parameters.AddWithValue("@taxCodeID", apexScaleTicket.TaxCodeID);
                            cmd.Parameters.AddWithValue("@ticketDate", apexScaleTicket.TicketDate);
                            cmd.Parameters.AddWithValue("@ticketMessage", apexScaleTicket.TicketMessage);
                            cmd.Parameters.AddWithValue("@ticketMessage2", apexScaleTicket.TicketMessage2);
                            cmd.Parameters.AddWithValue("@ticketNo", apexScaleTicket.TicketNo);
                            cmd.Parameters.AddWithValue("@ticketPrinterID", apexScaleTicket.TicketPrinterID);
                            cmd.Parameters.AddWithValue("@ticketTime", apexScaleTicket.TicketTime);
                            cmd.Parameters.AddWithValue("@ticketType", apexScaleTicket.TicketType);
                            cmd.Parameters.AddWithValue("@timeIn", apexScaleTicket.TimeIn);
                            cmd.Parameters.AddWithValue("@todayLoads", apexScaleTicket.TodayLoads);
                            cmd.Parameters.AddWithValue("@todayQty", apexScaleTicket.TodayQty);
                            cmd.Parameters.AddWithValue("@toleranceOverridden", apexScaleTicket.ToleranceOverridden);
                            cmd.Parameters.AddWithValue("@trailer1", apexScaleTicket.Trailer1);
                            cmd.Parameters.AddWithValue("@trailer2", apexScaleTicket.Trailer2);
                            cmd.Parameters.AddWithValue("@trailer3", apexScaleTicket.Trailer3);
                            cmd.Parameters.AddWithValue("@trailerTare1", apexScaleTicket.TrailerTare1);
                            cmd.Parameters.AddWithValue("@trailerTare2", apexScaleTicket.TrailerTare2);
                            cmd.Parameters.AddWithValue("@trailerTare3", apexScaleTicket.TrailerTare3);
                            cmd.Parameters.AddWithValue("@trailerType1", apexScaleTicket.TrailerType1);
                            cmd.Parameters.AddWithValue("@trailerType2", apexScaleTicket.TrailerType2);
                            cmd.Parameters.AddWithValue("@trailerType3", apexScaleTicket.TrailerType3);
                            cmd.Parameters.AddWithValue("@trailrTare1CertGUID", apexScaleTicket.TrailrTare1CertGUID);
                            cmd.Parameters.AddWithValue("@trailrTare2CertGUID", apexScaleTicket.TrailrTare2CertGUID);
                            cmd.Parameters.AddWithValue("@trailrTare3CertGUID", apexScaleTicket.TrailrTare3CertGUID);
                            cmd.Parameters.AddWithValue("@train", apexScaleTicket.Train);
                            cmd.Parameters.AddWithValue("@transLocationID", apexScaleTicket.TransLocationID);
                            cmd.Parameters.AddWithValue("@ufCustomerOrder1", apexScaleTicket.UfCustomerOrder1);
                            cmd.Parameters.AddWithValue("@ufCustomerOrder2", apexScaleTicket.UfCustomerOrder2);
                            cmd.Parameters.AddWithValue("@ufCustomerOrder3", apexScaleTicket.UfCustomerOrder3);
                            cmd.Parameters.AddWithValue("@ufCustomerOrder4", apexScaleTicket.UfCustomerOrder4);
                            cmd.Parameters.AddWithValue("@ufCustomerOrder5", apexScaleTicket.UfCustomerOrder5);
                            cmd.Parameters.AddWithValue("@ufCustomerOrder6", apexScaleTicket.UfCustomerOrder6);
                            cmd.Parameters.AddWithValue("@ufLocationProduct1", apexScaleTicket.UfLocationProduct1);
                            cmd.Parameters.AddWithValue("@ufOrderDispatch1", apexScaleTicket.UfOrderDispatch1);
                            cmd.Parameters.AddWithValue("@ufOrderDispatch2", apexScaleTicket.UfOrderDispatch2);
                            cmd.Parameters.AddWithValue("@ufText1", apexScaleTicket.UfText1);
                            cmd.Parameters.AddWithValue("@ufType1", apexScaleTicket.UfType1);
                            cmd.Parameters.AddWithValue("@ufType2", apexScaleTicket.UfType2);
                            cmd.Parameters.AddWithValue("@ufType3", apexScaleTicket.UfType3);
                            cmd.Parameters.AddWithValue("@ufType4", apexScaleTicket.UfType4);
                            cmd.Parameters.AddWithValue("@ufType5", apexScaleTicket.UfType5);
                            cmd.Parameters.AddWithValue("@uniqueID", apexScaleTicket.UniqueID);
                            cmd.Parameters.AddWithValue("@unit", apexScaleTicket.Unit);
                            cmd.Parameters.AddWithValue("@useDeliveredPrice", apexScaleTicket.UseDeliveredPrice);
                            cmd.Parameters.AddWithValue("@userDate", apexScaleTicket.UserDate);
                            cmd.Parameters.AddWithValue("@userID", apexScaleTicket.UserID);
                            cmd.Parameters.AddWithValue("@userTime", apexScaleTicket.UserTime);
                            cmd.Parameters.AddWithValue("@varianceTargetNet", apexScaleTicket.VarianceTargetNet);
                            cmd.Parameters.AddWithValue("@vehicleID", apexScaleTicket.VehicleID);
                            cmd.Parameters.AddWithValue("@vehicleType", apexScaleTicket.VehicleType);
                            cmd.Parameters.AddWithValue("@vehicleWeightCalc", apexScaleTicket.VehicleWeightCalc);
                            cmd.Parameters.AddWithValue("@vendorQty", apexScaleTicket.VendorQty);
                            cmd.Parameters.AddWithValue("@voidReason", apexScaleTicket.VoidReason);
                            cmd.Parameters.AddWithValue("@voidStatus", apexScaleTicket.VoidStatus);
                            cmd.Parameters.AddWithValue("@water", apexScaleTicket.Water);
                            cmd.Parameters.AddWithValue("@waterMax", apexScaleTicket.WaterMax);
                            cmd.Parameters.AddWithValue("@xfrGroupCount", apexScaleTicket.XfrGroupCount);
                            cmd.Parameters.AddWithValue("@xfrGroupNo", apexScaleTicket.XfrGroupNo);
                            cmd.Parameters.AddWithValue("@xfrSequenceNo", apexScaleTicket.XfrSequenceNo);
                            cmd.Parameters.AddWithValue("@zip", apexScaleTicket.Zip);
                            cmd.Parameters.AddWithValue("@zoneID", apexScaleTicket.ZoneID);


                            cmd.CommandType = CommandType.StoredProcedure;

                            connection.Open();
                            i = cmd.ExecuteNonQuery();
                            connection.Close();
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return i;
        }
    }
}
