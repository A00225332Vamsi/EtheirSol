USE [EtheirDB]
GO
/****** Object:  Table [dbo].[EtheirData]    Script Date: 6/9/2021 11:45:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EtheirData](
	[ticketType] [varchar](150) NULL,
	[ticketNo] [int] NULL,
	[uniqueID] [int] NULL,
	[itemNo] [int] NULL,
	[ticketDate] [datetime] NULL,
	[ticketTime] [datetime] NULL,
	[dispatchNo] [int] NULL,
	[dispatchLoadID] [int] NULL,
	[dispatchDate] [datetime] NULL,
	[locationID] [varchar](150) NULL,
	[customerID] [varchar](150) NULL,
	[orderID] [varchar](150) NULL,
	[orderItem] [varchar](150) NULL,
	[productID] [varchar](150) NULL,
	[mixID] [varchar](150) NULL,
	[feeCodeID] [varchar](150) NULL,
	[taxCodeID] [varchar](150) NULL,
	[jobID] [varchar](150) NULL,
	[jobCostID] [varchar](150) NULL,
	[purchaseOrder] [varchar](150) NULL,
	[releaseID] [varchar](150) NULL,
	[customerJob] [varchar](150) NULL,
	[carrierID] [varchar](150) NULL,
	[vehicleID] [varchar](150) NULL,
	[driverID] [varchar](150) NULL,
	[trailer1] [varchar](150) NULL,
	[trailer2] [varchar](150) NULL,
	[trailer3] [varchar](150) NULL,
	[masterOrderID] [varchar](150) NULL,
	[zoneID] [varchar](150) NULL,
	[cityID] [varchar](150) NULL,
	[loadStationID] [varchar](150) NULL,
	[binID] [varchar](150) NULL,
	[description] [varchar](500) NULL,
	[deliveryAddress1] [varchar](150) NULL,
	[deliveryAddress2] [varchar](150) NULL,
	[deliveryAddress3] [varchar](150) NULL,
	[address1] [varchar](150) NULL,
	[address2] [varchar](150) NULL,
	[city] [varchar](150) NULL,
	[state] [varchar](100) NULL,
	[county] [varchar](100) NULL,
	[country] [varchar](150) NULL,
	[zip] [varchar](150) NULL,
	[comment1] [varchar](150) NULL,
	[comment2] [varchar](150) NULL,
	[comment3] [varchar](150) NULL,
	[scaleIDGross] [int] NULL,
	[scaleIDTare] [int] NULL,
	[scaleUnitID] [varchar](150) NULL,
	[gross] [int] NULL,
	[tare] [int] NULL,
	[net] [int] NULL,
	[qtynumber] [int] NULL,
	[unit] [varchar](150) NULL,
	[freightQty] [int] NULL,
	[matlUnitID] [varchar](150) NULL,
	[freightUnitID] [varchar](150) NULL,
	[voidStatus] [varchar](150) NULL,
	[voidReason] [varchar](150) NULL,
	[shipOrReceive] [varchar](150) NULL,
	[sellOrBuy] [varchar](150) NULL,
	[cashStatus] [varchar](150) NULL,
	[postStatus] [varchar](150) NULL,
	[okStatus] [varchar](150) NULL,
	[exportStatus] [varchar](150) NULL,
	[vehicleType] [varchar](150) NULL,
	[trailerType1] [varchar](150) NULL,
	[trailerType2] [varchar](150) NULL,
	[trailerType3] [varchar](150) NULL,
	[freightFob] [varchar](150) NULL,
	[freightStatus] [varchar](150) NULL,
	[freightMode] [varchar](150) NULL,
	[freightType] [varchar](150) NULL,
	[freightRateType] [varchar](150) NULL,
	[grossStatus] [varchar](150) NULL,
	[tareStatus] [varchar](150) NULL,
	[netStatus] [varchar](150) NULL,
	[msgID] [int] NULL,
	[ticketMessage] [varchar](150) NULL,
	[ticketMessage2] [varchar](150) NULL,
	[todayLoads] [int] NULL,
	[todayQty] [float] NULL,
	[orderLoads] [int] NULL,
	[orderQty] [float] NULL,
	[lotNo] [int] NULL,
	[lotLoadNo] [int] NULL,
	[lotAccumQty] [float] NULL,
	[train] [int] NULL,
	[loadDate] [datetime] NULL,
	[loadTime] [datetime] NULL,
	[dateIn] [datetime] NULL,
	[timeIn] [datetime] NULL,
	[checkInDate] [datetime] NULL,
	[checkInTime] [datetime] NULL,
	[userDate] [datetime] NULL,
	[userTime] [datetime] NULL,
	[shipVia] [varchar](150) NULL,
	[shipTerms] [varchar](150) NULL,
	[payMethod] [varchar](150) NULL,
	[payRefID] [int] NULL,
	[payInfo] [varchar](150) NULL,
	[returnTicket] [varchar](150) NULL,
	[prevailingWage] [varchar](150) NULL,
	[referTicketNo] [int] NULL,
	[referUniqueID] [int] NULL,
	[loginLocationID] [varchar](150) NULL,
	[transLocationID] [varchar](150) NULL,
	[sourceID] [varchar](150) NULL,
	[destinationID] [varchar](150) NULL,
	[approvalStatus] [varchar](150) NULL,
	[approvalCode] [varchar](150) NULL,
	[approvalUserID] [varchar](150) NULL,
	[approvalDateTime] [datetime] NULL,
	[itemCount] [int] NULL,
	[mapBook] [varchar](150) NULL,
	[page] [varchar](150) NULL,
	[grid] [varchar](150) NULL,
	[block] [varchar](150) NULL,
	[lot] [varchar](150) NULL,
	[scaleStatType] [varchar](150) NULL,
	[scaleStatLocationID] [varchar](150) NULL,
	[scaleStatScaleID] [int] NULL,
	[scaleStatMsgID] [int] NULL,
	[shipTo] [varchar](150) NULL,
	[shipLocationID] [varchar](150) NULL,
	[useDeliveredPrice] [varchar](150) NULL,
	[maxWeightLimit] [varchar](150) NULL,
	[specialPricing] [varchar](150) NULL,
	[repriced] [varchar](150) NULL,
	[splitMaterialFreight] [varchar](150) NULL,
	[externalMsgID] [int] NULL,
	[substituteProductID] [varchar](150) NULL,
	[receiveStatus] [varchar](150) NULL,
	[podTicketReceived] [varchar](150) NULL,
	[podDate] [datetime] NULL,
	[podTime] [datetime] NULL,
	[originSystem] [varchar](150) NULL,
	[acQty] [float] NULL,
	[slump] [float] NULL,
	[slumpAtDestination] [float] NULL,
	[calcium] [float] NULL,
	[airEntrainment] [int] NULL,
	[superPlasticizer] [int] NULL,
	[hotWater] [int] NULL,
	[ice] [int] NULL,
	[water] [int] NULL,
	[waterMax] [int] NULL,
	[distanceToDest] [int] NULL,
	[applyMinimums] [varchar](150) NULL,
	[cmrNumber] [varchar](150) NULL,
	[vendorQty] [float] NULL,
	[loadTargetGross] [int] NULL,
	[loadTargetNet] [int] NULL,
	[varianceTargetNet] [int] NULL,
	[ufText1] [varchar](150) NULL,
	[ufCustomerOrder1] [varchar](150) NULL,
	[ufCustomerOrder2] [varchar](150) NULL,
	[ufCustomerOrder3] [varchar](150) NULL,
	[ufCustomerOrder4] [varchar](150) NULL,
	[ufCustomerOrder5] [varchar](150) NULL,
	[ufCustomerOrder6] [varchar](150) NULL,
	[ufOrderDispatch1] [varchar](150) NULL,
	[ufOrderDispatch2] [varchar](150) NULL,
	[ufLocationProduct1] [varchar](150) NULL,
	[ufType1] [varchar](150) NULL,
	[ufType2] [varchar](150) NULL,
	[ufType3] [varchar](150) NULL,
	[ufType4] [varchar](150) NULL,
	[ufType5] [varchar](150) NULL,
	[userID] [varchar](150) NULL,
	[invoiceStatus] [varchar](150) NULL,
	[invoiceNo] [int] NULL,
	[invoiceUniqueID] [int] NULL,
	[miscStatus] [varchar](150) NULL,
	[previousUniqueID] [int] NULL,
	[nextUniqueID] [int] NULL,
	[closed] [varchar](150) NULL,
	[reconciled] [varchar](150) NULL,
	[credited] [varchar](150) NULL,
	[batchID] [int] NULL,
	[batchIDAp] [int] NULL,
	[batchIDAr] [int] NULL,
	[minimumQty] [float] NULL,
	[minimumFreightQty] [float] NULL,
	[minimumFreightPayQty] [float] NULL,
	[incoterms] [varchar](150) NULL,
	[priceSource] [varchar](150) NULL,
	[freightRateSource] [varchar](150) NULL,
	[freightPaySource] [varchar](150) NULL,
	[shipmentNo] [int] NULL,
	[shipmentUniqueID] [int] NULL,
	[vehicleWeightCalc] [varchar](150) NULL,
	[splitLoad] [varchar](150) NULL,
	[splitLoadCount] [int] NULL,
	[splitLoadTotalGross] [int] NULL,
	[splitLoadTotalTare] [int] NULL,
	[splitLoadTotalNet] [int] NULL,
	[splitCaptureMethod] [varchar](150) NULL,
	[splitCapture1] [int] NULL,
	[splitCapture2] [int] NULL,
	[splitCapture3] [int] NULL,
	[splitCapture4] [int] NULL,
	[splitCap1CertGUID] [varchar](150) NULL,
	[splitCap2CertGUID] [varchar](150) NULL,
	[splitCap3CertGUID] [varchar](150) NULL,
	[splitCap4CertGUID] [varchar](150) NULL,
	[trailerTare1] [int] NULL,
	[trailerTare2] [int] NULL,
	[trailerTare3] [int] NULL,
	[trailrTare1CertGUID] [varchar](150) NULL,
	[trailrTare2CertGUID] [varchar](150) NULL,
	[trailrTare3CertGUID] [varchar](150) NULL,
	[isMultiTktSplitLoad] [varchar](150) NULL,
	[referSplitTicketNo] [int] NULL,
	[referSplitUniqueID] [int] NULL,
	[packageManuallySet] [varchar](150) NULL,
	[basePackageAmount] [float] NULL,
	[endingPackageAmount] [float] NULL,
	[altTicketQty] [float] NULL,
	[altTicketUnitID] [varchar](150) NULL,
	[altTicketQtyEdited] [int] NULL,
	[cvtNetWeight] [int] NULL,
	[cvtNetUnitID] [varchar](150) NULL,
	[matlUseCvtNet] [varchar](150) NULL,
	[freightUseCvtNet] [varchar](150) NULL,
	[freightPayUseCvtNet] [varchar](150) NULL,
	[altTicketUseCvtNet] [varchar](150) NULL,
	[factorGroupID] [varchar](150) NULL,
	[mobileTktSubmitted] [varchar](150) NULL,
	[toleranceOverridden] [varchar](150) NULL,
	[journeyUID] [varchar](150) NULL,
	[journeyItemNo] [int] NULL,
	[ticketPrinterID] [int] NULL,
	[reprintCount] [int] NULL,
	[grossCertGUID] [varchar](150) NULL,
	[tareCertGUID] [varchar](150) NULL,
	[globalUID] [varchar](150) NULL,
	[notesID] [int] NULL,
	[auditDate] [datetime] NULL,
	[auditTime] [datetime] NULL,
	[auditUserID] [varchar](150) NULL,
	[auditType] [varchar](150) NULL,
	[auditUID1] [int] NULL,
	[auditUID2] [int] NULL,
	[auditTransferred] [varchar](150) NULL,
	[xfrGroupNo] [int] NULL,
	[xfrSequenceNo] [int] NULL,
	[xfrGroupCount] [int] NULL,
	[orgCompanyID] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertEither]    Script Date: 6/9/2021 11:45:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[usp_InsertEither]
@ticketType  varchar(150) NULL,
           @ticketNo  int   NULL,
           @uniqueID int  NULL,
           @itemNo int  NULL,
           @ticketDate datetime  NULL,
           @ticketTime datetime  NULL,
           @dispatchNo int  NULL,
           @dispatchLoadID int NULL,
           @dispatchDate datetime  NULL,
           @locationID varchar(150)  NULL,
           @customerID varchar(150)  NULL,
           @orderID varchar(150) NULL,
           @orderItem varchar(150) NULL,
           @productID varchar(150) NULL,
           @mixID varchar(150) NULL,
           @feeCodeID varchar(150) NULL,
           @taxCodeID varchar(150) NULL,
           @jobID varchar(150) NULL,
           @jobCostID varchar(150) NULL,
           @purchaseOrder varchar(150) NULL,
           @releaseID varchar(150) NULL,
           @customerJob varchar(150) NULL,
           @carrierID varchar(150) NULL,
           @vehicleID varchar(150) NULL,
           @driverID varchar(150) NULL,
           @trailer1 varchar(150) NULL,
           @trailer2 varchar(150) NULL,
           @trailer3 varchar(150) NULL,
           @masterOrderID varchar(150) NULL,
           @zoneID varchar(150) NULL,
           @cityID varchar(150) NULL,
           @loadStationID varchar(150) NULL,
           @binID varchar(150) NULL,
           @description varchar(500) NULL,
           @deliveryAddress1 varchar(150) NULL,
           @deliveryAddress2 varchar(150) NULL,
           @deliveryAddress3 varchar(150) NULL,
           @address1 varchar(150) NULL,
           @address2 varchar(150) NULL,
           @city varchar(150) NULL,
           @state varchar(100) NULL,
           @county varchar(100) NULL,
           @country varchar(150) NULL,
           @zip varchar(150) NULL,
           @comment1 varchar(150) NULL,
           @comment2 varchar(150) NULL,
           @comment3 varchar(150) NULL,
           @scaleIDGross int NULL,
           @scaleIDTare int NULL,
           @scaleUnitID varchar(150) NULL,
           @gross int NULL,
           @tare int NULL,
           @net int NULL,
           --@qtynumber int NULL,
           @unit varchar(150) NULL,
           @freightQty int NULL,
           @matlUnitID varchar(150) NULL,
           @freightUnitID varchar(150) NULL,
           @voidStatus varchar(150) NULL,
           @voidReason varchar(150) NULL,
           @shipOrReceive varchar(150) NULL,
           @sellOrBuy varchar(150) NULL,
           @cashStatus varchar(150) NULL,
           @postStatus varchar(150) NULL,
           @okStatus varchar(150) NULL,
           @exportStatus varchar(150) NULL,
           @vehicleType varchar(150) NULL,
           @trailerType1 varchar(150) NULL,
           @trailerType2 varchar(150) NULL,
           @trailerType3 varchar(150) NULL,
           @freightFob varchar(150) NULL,
           @freightStatus varchar(150) NULL,
           @freightMode varchar(150) NULL,
           @freightType varchar(150) NULL,
           @freightRateType varchar(150) NULL,
           @grossStatus varchar(150) NULL,
           @tareStatus varchar(150) NULL,
           @netStatus varchar(150) NULL,
           @msgID int NULL,
           @ticketMessage varchar(150) NULL,
           @ticketMessage2 varchar(150) NULL,
           @todayLoads int NULL,
           @todayQty  float NULL,
           @orderLoads int NULL,
           @orderQty  float NULL,
           @lotNo int NULL,
           @lotLoadNo int NULL,
           @lotAccumQty  float NULL,
           @train int NULL,
           @loadDate datetime NULL,
           @loadTime datetime NULL,
           @dateIn datetime NULL,
           @timeIn datetime NULL,
           @checkInDate datetime NULL,
           @checkintime datetime NULL,
           @userDate datetime NULL,
           @userTime datetime NULL,
           @shipVia varchar(150) NULL,
           @shipTerms varchar(150) NULL,
           @payMethod varchar(150) NULL,
           @payRefID int NULL,
           @payInfo varchar(150) NULL,
           @returnTicket varchar(150) NULL,
           @prevailingWage varchar(150) NULL,
           @referTicketNo int NULL,
           @referUniqueID int NULL,
           @loginLocationID varchar(150) NULL,
           @transLocationID varchar(150) NULL,
           @sourceID varchar(150) NULL,
           @destinationID varchar(150) NULL,
           @approvalStatus varchar(150) NULL,
           @approvalCode varchar(150) NULL,
           @approvalUserID varchar(150) NULL,
           @approvaldatetime datetime NULL,
           @itemCount int NULL,
           @mapBook varchar(150) NULL,
           @page varchar(150) NULL,
           @grid varchar(150) NULL,
           @block varchar(150) NULL,
           @lot varchar(150) NULL,
           @scaleStatType varchar(150) NULL,
           @scaleStatLocationID varchar(150) NULL,
           @scaleStatScaleID int NULL,
           @scaleStatMsgID int NULL,
           @shipTo varchar(150) NULL,
           @shipLocationID varchar(150) NULL,
           @useDeliveredPrice varchar(150) NULL,
           @maxWeightLimit varchar(150) NULL,
           @specialPricing varchar(150) NULL,
           @repriced varchar(150) NULL,
           @splitMaterialFreight varchar(150) NULL,
           @externalMsgID int NULL,
           @substituteProductID varchar(150) NULL,
           @receiveStatus varchar(150) NULL,
           @podTicketReceived varchar(150) NULL,
           @podDate datetime NULL,
           @podTime datetime NULL,
           @originSystem varchar(150) NULL,
           @acQty  float NULL,
           @slump  float NULL,
           @slumpAtDestination  float NULL,
           @calcium  float NULL,
           @airEntrainment int NULL,
           @superPlasticizer int NULL,
           @hotWater int NULL,
           @ice int NULL,
           @water int NULL,
           @waterMax int NULL,
           @distanceToDest int NULL,
           @applyMinimums varchar(150) NULL,
           @cmrNumber varchar(150) NULL,
           @vendorQty  float NULL,
           @loadTargetGross int NULL,
           @loadTargetNet int NULL,
           @varianceTargetNet int NULL,
           @ufText1 varchar(150) NULL,
           @ufCustomerOrder1 varchar(150) NULL,
           @ufCustomerOrder2 varchar(150) NULL,
           @ufCustomerOrder3 varchar(150) NULL,
           @ufCustomerOrder4 varchar(150) NULL,
           @ufCustomerOrder5 varchar(150) NULL,
           @ufCustomerOrder6 varchar(150) NULL,
           @ufOrderDispatch1 varchar(150) NULL,
           @ufOrderDispatch2 varchar(150) NULL,
           @ufLocationProduct1 varchar(150) NULL,
           @ufType1 varchar(150) NULL,
           @ufType2 varchar(150) NULL,
           @ufType3 varchar(150) NULL,
           @ufType4 varchar(150) NULL,
           @ufType5 varchar(150) NULL,
           @userID varchar(150) NULL,
           @invoiceStatus varchar(150) NULL,
           @invoiceNo int NULL,
           @invoiceUniqueID int NULL,
           @miscStatus varchar(150) NULL,
           @previousUniqueID int NULL,
           @nextUniqueID int NULL,
           @closed varchar(150) NULL,
           @reconciled varchar(150) NULL,
           @credited varchar(150) NULL,
           @batchID int NULL,
           @batchIDAp int NULL,
           @batchIDAr int NULL,
           @minimumQty float NULL,
           @minimumFreightQty float NULL,
           @minimumFreightPayQty float NULL,
           @incoterms varchar(150) NULL,
           @priceSource varchar(150) NULL,
           @freightRateSource varchar(150) NULL,
           @freightPaySource varchar(150) NULL,
           @shipmentNo int NULL,
           @shipmentUniqueID int NULL,
           @vehicleWeightCalc varchar(150) NULL,
           @splitLoad varchar(150) NULL,
           @splitLoadCount int NULL,
           @splitLoadTotalGross int NULL,
           @splitLoadTotalTare int NULL,
           @splitLoadTotalNet int NULL,
           @splitCaptureMethod varchar(150) NULL,
           @splitCapture1 int NULL,
           @splitCapture2 int NULL,
           @splitCapture3 int NULL,
           @splitCapture4 int NULL,
           @splitCap1CertGUID varchar(150) NULL,
           @splitCap2CertGUID varchar(150) NULL,
           @splitCap3CertGUID varchar(150) NULL,
           @splitCap4CertGUID varchar(150) NULL,
           @trailerTare1 int NULL,
           @trailerTare2 int NULL,
           @trailerTare3 int NULL,
           @trailrTare1CertGUID varchar(150) NULL,
           @trailrTare2CertGUID varchar(150) NULL,
           @trailrTare3CertGUID varchar(150) NULL,
           @isMultiTktSplitLoad varchar(150) NULL,
           @referSplitTicketNo int NULL,
           @referSplitUniqueID int NULL,
           @packageManuallySet varchar(150) NULL,
           @basePackageAmount float NULL,
           @endingPackageAmount float NULL,
           @altTicketQty float NULL,
           @altTicketUnitID varchar(150) NULL,
           @altTicketQtyEdited int NULL,
           @cvtNetWeight int NULL,
           @cvtNetUnitID varchar(150) NULL,
           @matlUseCvtNet varchar(150) NULL,
           @freightUseCvtNet varchar(150) NULL,
           @freightPayUseCvtNet varchar(150) NULL,
           @altTicketUseCvtNet varchar(150) NULL,
           @factorGroupID varchar(150) NULL,
           @mobileTktSubmitted varchar(150) NULL,
           @toleranceOverridden varchar(150) NULL,
           @journeyUID varchar(150) NULL,
           @journeyItemNo int NULL,
           @ticketPrinterID int NULL,
           @reprintCount int NULL,
           @grossCertGUID varchar(150) NULL,
           @tareCertGUID varchar(150) NULL,
           @globalUID varchar(150) NULL,
           @notesID int NULL,
           @auditDate datetime NULL,
           @auditTime datetime NULL,
           @auditUserID varchar(150) NULL,
           @auditType varchar(150) NULL,
           @auditUID1 int NULL,
           @auditUID2 int NULL,
           @auditTransferred varchar(150) NULL,
           @xfrGroupNo int NULL,
           @xfrSequenceNo int NULL,
           @xfrGroupCount int NULL,
           @orgCompanyID varchar(150)
as
begin
INSERT  intO [dbo].[EtheirData]
           ([ticketType]
           ,[ticketNo]
           ,[uniqueID]
           ,[itemNo]
           ,[ticketDate]
           ,[ticketTime]
           ,[dispatchNo]
           ,[dispatchLoadID]
           ,[dispatchDate]
           ,[locationID]
           ,[customerID]
           ,[orderID]
           ,[orderItem]
           ,[productID]
           ,[mixID]
           ,[feeCodeID]
           ,[taxCodeID]
           ,[jobID]
           ,[jobCostID]
           ,[purchaseOrder]
           ,[releaseID]
           ,[customerJob]
           ,[carrierID]
           ,[vehicleID]
           ,[driverID]
           ,[trailer1]
           ,[trailer2]
           ,[trailer3]
           ,[masterOrderID]
           ,[zoneID]
           ,[cityID]
           ,[loadStationID]
           ,[binID]
           ,[description]
           ,[deliveryAddress1]
           ,[deliveryAddress2]
           ,[deliveryAddress3]
           ,[address1]
           ,[address2]
           ,[city]
           ,[state]
           ,[county]
           ,[country]
           ,[zip]
           ,[comment1]
           ,[comment2]
           ,[comment3]
           ,[scaleIDGross]
           ,[scaleIDTare]
           ,[scaleUnitID]
           ,[gross]
           ,[tare]
           ,[net]
       --  LL,[qtynumber]
           ,[unit]
           ,[freightQty]
           ,[matlUnitID]
           ,[freightUnitID]
           ,[voidStatus]
           ,[voidReason]
           ,[shipOrReceive]
           ,[sellOrBuy]
           ,[cashStatus]
           ,[postStatus]
           ,[okStatus]
           ,[exportStatus]
           ,[vehicleType]
           ,[trailerType1]
           ,[trailerType2]
           ,[trailerType3]
           ,[freightFob]
           ,[freightStatus]
           ,[freightMode]
           ,[freightType]
           ,[freightRateType]
           ,[grossStatus]
           ,[tareStatus]
           ,[netStatus]
           ,[msgID]
           ,[ticketMessage]
           ,[ticketMessage2]
           ,[todayLoads]
           ,[todayQty]
           ,[orderLoads]
           ,[orderQty]
           ,[lotNo]
           ,[lotLoadNo]
           ,[lotAccumQty]
           ,[train]
           ,[loadDate]
           ,[loadTime]
           ,[dateIn]
           ,[timeIn]
           ,[checkInDate]
           ,[checkintime]
           ,[userDate]
           ,[userTime]
           ,[shipVia]
           ,[shipTerms]
           ,[payMethod]
           ,[payRefID]
           ,[payInfo]
           ,[returnTicket]
           ,[prevailingWage]
           ,[referTicketNo]
           ,[referUniqueID]
           ,[loginLocationID]
           ,[transLocationID]
           ,[sourceID]
           ,[destinationID]
           ,[approvalStatus]
           ,[approvalCode]
           ,[approvalUserID]
           ,[approvaldatetime]
           ,[itemCount]
           ,[mapBook]
           ,[page]
           ,[grid]
           ,[block]
           ,[lot]
           ,[scaleStatType]
           ,[scaleStatLocationID]
           ,[scaleStatScaleID]
           ,[scaleStatMsgID]
           ,[shipTo]
           ,[shipLocationID]
           ,[useDeliveredPrice]
           ,[maxWeightLimit]
           ,[specialPricing]
           ,[repriced]
           ,[splitMaterialFreight]
           ,[externalMsgID]
           ,[substituteProductID]
           ,[receiveStatus]
           ,[podTicketReceived]
           ,[podDate]
           ,[podTime]
           ,[originSystem]
           ,[acQty]
           ,[slump]
           ,[slumpAtDestination]
           ,[calcium]
           ,[airEntrainment]
           ,[superPlasticizer]
           ,[hotWater]
           ,[ice]
           ,[water]
           ,[waterMax]
           ,[distanceToDest]
           ,[applyMinimums]
           ,[cmrNumber]
           ,[vendorQty]
           ,[loadTargetGross]
           ,[loadTargetNet]
           ,[varianceTargetNet]
           ,[ufText1]
           ,[ufCustomerOrder1]
           ,[ufCustomerOrder2]
           ,[ufCustomerOrder3]
           ,[ufCustomerOrder4]
           ,[ufCustomerOrder5]
           ,[ufCustomerOrder6]
           ,[ufOrderDispatch1]
           ,[ufOrderDispatch2]
           ,[ufLocationProduct1]
           ,[ufType1]
           ,[ufType2]
           ,[ufType3]
           ,[ufType4]
           ,[ufType5]
           ,[userID]
           ,[invoiceStatus]
           ,[invoiceNo]
           ,[invoiceUniqueID]
           ,[miscStatus]
           ,[previousUniqueID]
           ,[nextUniqueID]
           ,[closed]
           ,[reconciled]
           ,[credited]
           ,[batchID]
           ,[batchIDAp]
           ,[batchIDAr]
           ,[minimumQty]
           ,[minimumFreightQty]
           ,[minimumFreightPayQty]
           ,[incoterms]
           ,[priceSource]
           ,[freightRateSource]
           ,[freightPaySource]
           ,[shipmentNo]
           ,[shipmentUniqueID]
           ,[vehicleWeightCalc]
           ,[splitLoad]
           ,[splitLoadCount]
           ,[splitLoadTotalGross]
           ,[splitLoadTotalTare]
           ,[splitLoadTotalNet]
           ,[splitCaptureMethod]
           ,[splitCapture1]
           ,[splitCapture2]
           ,[splitCapture3]
           ,[splitCapture4]
           ,[splitCap1CertGUID]
           ,[splitCap2CertGUID]
           ,[splitCap3CertGUID]
           ,[splitCap4CertGUID]
           ,[trailerTare1]
           ,[trailerTare2]
           ,[trailerTare3]
           ,[trailrTare1CertGUID]
           ,[trailrTare2CertGUID]
           ,[trailrTare3CertGUID]
           ,[isMultiTktSplitLoad]
           ,[referSplitTicketNo]
           ,[referSplitUniqueID]
           ,[packageManuallySet]
           ,[basePackageAmount]
           ,[endingPackageAmount]
           ,[altTicketQty]
           ,[altTicketUnitID]
           ,[altTicketQtyEdited]
           ,[cvtNetWeight]
           ,[cvtNetUnitID]
           ,[matlUseCvtNet]
           ,[freightUseCvtNet]
           ,[freightPayUseCvtNet]
           ,[altTicketUseCvtNet]
           ,[factorGroupID]
           ,[mobileTktSubmitted]
           ,[toleranceOverridden]
           ,[journeyUID]
           ,[journeyItemNo]
           ,[ticketPrinterID]
           ,[reprintCount]
           ,[grossCertGUID]
           ,[tareCertGUID]
           ,[globalUID]
           ,[notesID]
           ,[auditDate]
           ,[auditTime]
           ,[auditUserID]
           ,[auditType]
           ,[auditUID1]
           ,[auditUID2]
           ,[auditTransferred]
           ,[xfrGroupNo]
           ,[xfrSequenceNo]
           ,[xfrGroupCount]
           ,[orgCompanyID])
     VALUES
           (@ticketType ,
           @ticketNo ,
           @uniqueID ,
           @itemNo ,
           @ticketDate ,
           @ticketTime ,
           @dispatchNo ,
           @dispatchLoadID ,
           @dispatchDate ,
           @locationID ,
           @customerID ,
           @orderID ,
           @orderItem ,
           @productID ,
           @mixID ,
           @feeCodeID ,
           @taxCodeID ,
           @jobID ,
           @jobCostID ,
           @purchaseOrder ,
           @releaseID ,
           @customerJob ,
           @carrierID ,
           @vehicleID ,
           @driverID ,
           @trailer1 ,
           @trailer2 ,
           @trailer3 ,
           @masterOrderID ,
           @zoneID ,
           @cityID ,
           @loadStationID ,
           @binID ,
           @description ,
           @deliveryAddress1 ,
           @deliveryAddress2 ,
           @deliveryAddress3 ,
           @address1 ,
           @address2 ,
           @city ,
           @state ,
           @county ,
           @country ,
           @zip ,
           @comment1 ,
           @comment2 ,
           @comment3 ,
           @scaleIDGross ,
           @scaleIDTare ,
           @scaleUnitID ,
           @gross ,
           @tare ,
           @net ,
          -- @qtynumber ,
           @unit ,
           @freightQty ,
           @matlUnitID ,
           @freightUnitID ,
           @voidStatus ,
           @voidReason ,
           @shipOrReceive ,
           @sellOrBuy ,
           @cashStatus ,
           @postStatus ,
           @okStatus ,
           @exportStatus ,
           @vehicleType ,
           @trailerType1 ,
           @trailerType2 ,
           @trailerType3 ,
           @freightFob ,
           @freightStatus ,
           @freightMode ,
           @freightType ,
           @freightRateType ,
           @grossStatus ,
           @tareStatus ,
           @netStatus ,
           @msgID ,
           @ticketMessage ,
           @ticketMessage2 ,
           @todayLoads ,
           @todayQty ,
           @orderLoads ,
           @orderQty ,
           @lotNo ,
           @lotLoadNo ,
           @lotAccumQty ,
           @train ,
           @loadDate ,
           @loadTime ,
           @dateIn ,
           @timeIn ,
           @checkInDate ,
           @checkintime ,
           @userDate ,
           @userTime ,
           @shipVia ,
           @shipTerms ,
           @payMethod ,
           @payRefID ,
           @payInfo ,
           @returnTicket ,
           @prevailingWage ,
           @referTicketNo ,
           @referUniqueID ,
           @loginLocationID ,
           @transLocationID ,
           @sourceID ,
           @destinationID ,
           @approvalStatus ,
           @approvalCode ,
           @approvalUserID ,
           @approvaldatetime ,
           @itemCount ,
           @mapBook ,
           @page ,
           @grid ,
           @block ,
           @lot ,
           @scaleStatType ,
           @scaleStatLocationID ,
           @scaleStatScaleID ,
           @scaleStatMsgID ,
           @shipTo ,
           @shipLocationID ,
           @useDeliveredPrice ,
           @maxWeightLimit ,
           @specialPricing ,
           @repriced ,
           @splitMaterialFreight ,
           @externalMsgID ,
           @substituteProductID ,
           @receiveStatus ,
           @podTicketReceived ,
           @podDate ,
           @podTime ,
           @originSystem ,
           @acQty ,
           @slump ,
           @slumpAtDestination ,
           @calcium ,
           @airEntrainment ,
           @superPlasticizer ,
           @hotWater ,
           @ice ,
           @water ,
           @waterMax ,
           @distanceToDest ,
           @applyMinimums ,
           @cmrNumber ,
           @vendorQty ,
           @loadTargetGross ,
           @loadTargetNet ,
           @varianceTargetNet ,
           @ufText1 ,
           @ufCustomerOrder1 ,
           @ufCustomerOrder2 ,
           @ufCustomerOrder3 ,
           @ufCustomerOrder4 ,
           @ufCustomerOrder5 ,
           @ufCustomerOrder6 ,
           @ufOrderDispatch1 ,
           @ufOrderDispatch2 ,
           @ufLocationProduct1 ,
           @ufType1 ,
           @ufType2 ,
           @ufType3 ,
           @ufType4 ,
           @ufType5 ,
           @userID ,
           @invoiceStatus ,
           @invoiceNo ,
           @invoiceUniqueID ,
           @miscStatus ,
           @previousUniqueID ,
           @nextUniqueID ,
           @closed ,
           @reconciled ,
           @credited ,
           @batchID ,
           @batchIDAp ,
           @batchIDAr ,
           @minimumQty ,
           @minimumFreightQty ,
           @minimumFreightPayQty ,
           @incoterms ,
           @priceSource ,
           @freightRateSource ,
           @freightPaySource ,
           @shipmentNo ,
           @shipmentUniqueID ,
           @vehicleWeightCalc ,
           @splitLoad ,
           @splitLoadCount ,
           @splitLoadTotalGross ,
           @splitLoadTotalTare ,
           @splitLoadTotalNet ,
           @splitCaptureMethod ,
           @splitCapture1 ,
           @splitCapture2 ,
           @splitCapture3 ,
           @splitCapture4 ,
           @splitCap1CertGUID ,
           @splitCap2CertGUID ,
           @splitCap3CertGUID ,
           @splitCap4CertGUID ,
           @trailerTare1 ,
           @trailerTare2 ,
           @trailerTare3 ,
           @trailrTare1CertGUID ,
           @trailrTare2CertGUID ,
           @trailrTare3CertGUID ,
           @isMultiTktSplitLoad ,
           @referSplitTicketNo ,
           @referSplitUniqueID ,
           @packageManuallySet ,
           @basePackageAmount ,
           @endingPackageAmount ,
           @altTicketQty ,
           @altTicketUnitID ,
           @altTicketQtyEdited ,
           @cvtNetWeight ,
           @cvtNetUnitID ,
           @matlUseCvtNet ,
           @freightUseCvtNet ,
           @freightPayUseCvtNet,
           @altTicketUseCvtNet ,
           @factorGroupID ,
           @mobileTktSubmitted ,
           @toleranceOverridden ,
           @journeyUID ,
           @journeyItemNo ,
           @ticketPrinterID ,
           @reprintCount ,
           @grossCertGUID ,
           @tareCertGUID ,
           @globalUID ,
           @notesID ,
           @auditDate ,
           @auditTime ,
           @auditUserID ,
           @auditType ,
           @auditUID1 ,
           @auditUID2 ,
           @auditTransferred ,
           @xfrGroupNo ,
           @xfrSequenceNo ,
           @xfrGroupCount ,
           @orgCompanyID)

		   end
GO
