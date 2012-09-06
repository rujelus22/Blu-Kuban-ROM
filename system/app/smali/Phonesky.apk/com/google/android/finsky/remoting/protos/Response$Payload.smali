.class public final Lcom/google/android/finsky/remoting/protos/Response$Payload;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation


# instance fields
.field private acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

.field private ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

.field private browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

.field private bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

.field private buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private cachedSize:I

.field private checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

.field private checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

.field private deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

.field private detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

.field private flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

.field private hasAcceptTosResponse:Z

.field private hasAckNotificationResponse:Z

.field private hasBrowseResponse:Z

.field private hasBulkDetailsResponse:Z

.field private hasBuyResponse:Z

.field private hasCheckInstrumentResponse:Z

.field private hasCheckPromoOfferResponse:Z

.field private hasDeliveryResponse:Z

.field private hasDetailsResponse:Z

.field private hasFlagContentResponse:Z

.field private hasInitiateAssociationResponse:Z

.field private hasInstrumentSetupInfoResponse:Z

.field private hasLibraryReplicationResponse:Z

.field private hasListResponse:Z

.field private hasLogResponse:Z

.field private hasModifyLibraryResponse:Z

.field private hasPlusOneResponse:Z

.field private hasPurchaseStatusResponse:Z

.field private hasRateSuggestedContentResponse:Z

.field private hasRedeemGiftCardResponse:Z

.field private hasResolveLinkResponse:Z

.field private hasReviewResponse:Z

.field private hasRevokeResponse:Z

.field private hasSearchResponse:Z

.field private hasTocResponse:Z

.field private hasUpdateInstrumentResponse:Z

.field private hasVerifyAssociationResponse:Z

.field private initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

.field private instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

.field private libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

.field private listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

.field private logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

.field private modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

.field private plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

.field private purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

.field private rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

.field private redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

.field private resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

.field private reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

.field private revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

.field private searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

.field private tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

.field private updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 251
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 271
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .line 291
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .line 311
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 331
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .line 351
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 371
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 391
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 411
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 431
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    .line 451
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .line 471
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .line 491
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    .line 511
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    .line 531
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    .line 551
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .line 571
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    .line 591
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .line 611
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .line 631
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 651
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    .line 671
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .line 691
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    .line 711
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    .line 731
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    .line 751
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    .line 771
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    .line 961
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 246
    return-void
.end method


# virtual methods
.method public getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    .registers 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    return-object v0
.end method

.method public getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    return-object v0
.end method

.method public getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    return-object v0
.end method

.method public getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    return-object v0
.end method

.method public getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 964
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    if-gez v0, :cond_7

    .line 966
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSerializedSize()I

    .line 968
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    return v0
.end method

.method public getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    return-object v0
.end method

.method public getCheckPromoOfferResponse()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    return-object v0
.end method

.method public getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    return-object v0
.end method

.method public getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    return-object v0
.end method

.method public getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    return-object v0
.end method

.method public getInitiateAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    return-object v0
.end method

.method public getInstrumentSetupInfoResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    return-object v0
.end method

.method public getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    return-object v0
.end method

.method public getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    return-object v0
.end method

.method public getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    return-object v0
.end method

.method public getModifyLibraryResponse()Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    return-object v0
.end method

.method public getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    return-object v0
.end method

.method public getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    return-object v0
.end method

.method public getRateSuggestedContentResponse()Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    return-object v0
.end method

.method public getRedeemGiftCardResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    return-object v0
.end method

.method public getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    return-object v0
.end method

.method public getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    return-object v0
.end method

.method public getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    return-object v0
.end method

.method public getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 975
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 978
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 979
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 983
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 986
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 987
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 990
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 991
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 994
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 995
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 999
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1003
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1006
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1007
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1010
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1011
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1014
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 1015
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1018
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1019
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1023
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1026
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 1027
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1030
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 1031
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInitiateAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1034
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1035
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getVerifyAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1038
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 1039
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1042
    :cond_11b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 1043
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1046
    :cond_12c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 1047
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1050
    :cond_13d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 1051
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1054
    :cond_14e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 1055
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1058
    :cond_15f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 1059
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1062
    :cond_170
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse()Z

    move-result v1

    if-eqz v1, :cond_181

    .line 1063
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRateSuggestedContentResponse()Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1066
    :cond_181
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse()Z

    move-result v1

    if-eqz v1, :cond_192

    .line 1067
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckPromoOfferResponse()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1070
    :cond_192
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse()Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 1071
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInstrumentSetupInfoResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1074
    :cond_1a3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse()Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 1075
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRedeemGiftCardResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1078
    :cond_1b4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse()Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 1079
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getModifyLibraryResponse()Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1082
    :cond_1c5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 1083
    return v0
.end method

.method public getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    return-object v0
.end method

.method public getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object v0
.end method

.method public getVerifyAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    return-object v0
.end method

.method public hasAcceptTosResponse()Z
    .registers 2

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse:Z

    return v0
.end method

.method public hasAckNotificationResponse()Z
    .registers 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse:Z

    return v0
.end method

.method public hasBrowseResponse()Z
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    return v0
.end method

.method public hasBulkDetailsResponse()Z
    .registers 2

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse:Z

    return v0
.end method

.method public hasBuyResponse()Z
    .registers 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    return v0
.end method

.method public hasCheckInstrumentResponse()Z
    .registers 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse:Z

    return v0
.end method

.method public hasCheckPromoOfferResponse()Z
    .registers 2

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse:Z

    return v0
.end method

.method public hasDeliveryResponse()Z
    .registers 2

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse:Z

    return v0
.end method

.method public hasDetailsResponse()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    return v0
.end method

.method public hasFlagContentResponse()Z
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse:Z

    return v0
.end method

.method public hasInitiateAssociationResponse()Z
    .registers 2

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse:Z

    return v0
.end method

.method public hasInstrumentSetupInfoResponse()Z
    .registers 2

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse:Z

    return v0
.end method

.method public hasLibraryReplicationResponse()Z
    .registers 2

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse:Z

    return v0
.end method

.method public hasListResponse()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    return v0
.end method

.method public hasLogResponse()Z
    .registers 2

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse:Z

    return v0
.end method

.method public hasModifyLibraryResponse()Z
    .registers 2

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse:Z

    return v0
.end method

.method public hasPlusOneResponse()Z
    .registers 2

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse:Z

    return v0
.end method

.method public hasPurchaseStatusResponse()Z
    .registers 2

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    return v0
.end method

.method public hasRateSuggestedContentResponse()Z
    .registers 2

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse:Z

    return v0
.end method

.method public hasRedeemGiftCardResponse()Z
    .registers 2

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse:Z

    return v0
.end method

.method public hasResolveLinkResponse()Z
    .registers 2

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse:Z

    return v0
.end method

.method public hasReviewResponse()Z
    .registers 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    return v0
.end method

.method public hasRevokeResponse()Z
    .registers 2

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse:Z

    return v0
.end method

.method public hasSearchResponse()Z
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    return v0
.end method

.method public hasTocResponse()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    return v0
.end method

.method public hasUpdateInstrumentResponse()Z
    .registers 2

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse:Z

    return v0
.end method

.method public hasVerifyAssociationResponse()Z
    .registers 2

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1092
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_164

    .line 1096
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1097
    :sswitch_d
    return-object p0

    .line 1102
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;-><init>()V

    .line 1103
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1104
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1108
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;-><init>()V

    .line 1109
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1110
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1114
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;-><init>()V

    .line 1115
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1116
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setReviewResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1120
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;-><init>()V

    .line 1121
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1122
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1126
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;-><init>()V

    .line 1127
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1128
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setSearchResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1132
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;-><init>()V

    .line 1133
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1134
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1138
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;-><init>()V

    .line 1139
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1140
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1144
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;-><init>()V

    .line 1145
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1146
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1150
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;-><init>()V

    .line 1151
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1152
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1156
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;-><init>()V

    .line 1157
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1158
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setLogResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1162
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;-><init>()V

    .line 1163
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1164
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setCheckInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1168
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    :sswitch_94
    new-instance v1, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;-><init>()V

    .line 1169
    .local v1, value:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1170
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPlusOneResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1174
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    :sswitch_a1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;-><init>()V

    .line 1175
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1176
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setFlagContentResponse(Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1180
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    :sswitch_ae
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;-><init>()V

    .line 1181
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1182
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setAckNotificationResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1186
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    :sswitch_bb
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;-><init>()V

    .line 1187
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1188
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setInitiateAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1192
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    :sswitch_c8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;-><init>()V

    .line 1193
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1194
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setVerifyAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1198
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    :sswitch_d5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;-><init>()V

    .line 1199
    .local v1, value:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1200
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setLibraryReplicationResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1204
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    :sswitch_e2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;-><init>()V

    .line 1205
    .local v1, value:Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1206
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRevokeResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1210
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    :sswitch_ef
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;-><init>()V

    .line 1211
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1212
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBulkDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1216
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    :sswitch_fc
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;-><init>()V

    .line 1217
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1218
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setResolveLinkResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1222
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    :sswitch_109
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;-><init>()V

    .line 1223
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1224
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setDeliveryResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1228
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    :sswitch_116
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;-><init>()V

    .line 1229
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1230
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setAcceptTosResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1234
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    :sswitch_123
    new-instance v1, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;-><init>()V

    .line 1235
    .local v1, value:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1236
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRateSuggestedContentResponse(Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1240
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
    :sswitch_130
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;-><init>()V

    .line 1241
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1242
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setCheckPromoOfferResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1246
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    :sswitch_13d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;-><init>()V

    .line 1247
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1248
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setInstrumentSetupInfoResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1252
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    :sswitch_14a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;-><init>()V

    .line 1253
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1254
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRedeemGiftCardResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1258
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    :sswitch_157
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;-><init>()V

    .line 1259
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1260
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setModifyLibraryResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1092
    :sswitch_data_164
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
        0x22 -> :sswitch_32
        0x2a -> :sswitch_3e
        0x32 -> :sswitch_4a
        0x3a -> :sswitch_56
        0x42 -> :sswitch_62
        0x4a -> :sswitch_6e
        0x52 -> :sswitch_7a
        0x5a -> :sswitch_87
        0x62 -> :sswitch_94
        0x6a -> :sswitch_a1
        0x72 -> :sswitch_ae
        0x7a -> :sswitch_bb
        0x82 -> :sswitch_c8
        0x8a -> :sswitch_d5
        0x92 -> :sswitch_e2
        0x9a -> :sswitch_ef
        0xa2 -> :sswitch_fc
        0xaa -> :sswitch_109
        0xb2 -> :sswitch_116
        0xba -> :sswitch_123
        0xc2 -> :sswitch_130
        0xca -> :sswitch_13d
        0xd2 -> :sswitch_14a
        0xda -> :sswitch_157
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptTosResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 675
    if-nez p1, :cond_8

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 678
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse:Z

    .line 679
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .line 680
    return-object p0
.end method

.method public setAckNotificationResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 515
    if-nez p1, :cond_8

    .line 516
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 518
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse:Z

    .line 519
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    .line 520
    return-object p0
.end method

.method public setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 375
    if-nez p1, :cond_8

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    .line 379
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 380
    return-object p0
.end method

.method public setBulkDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 615
    if-nez p1, :cond_8

    .line 616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 618
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse:Z

    .line 619
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .line 620
    return-object p0
.end method

.method public setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 315
    if-nez p1, :cond_8

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 318
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    .line 319
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 320
    return-object p0
.end method

.method public setCheckInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 455
    if-nez p1, :cond_8

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 458
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse:Z

    .line 459
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .line 460
    return-object p0
.end method

.method public setCheckPromoOfferResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 715
    if-nez p1, :cond_8

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 718
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse:Z

    .line 719
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    .line 720
    return-object p0
.end method

.method public setDeliveryResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 655
    if-nez p1, :cond_8

    .line 656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 658
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse:Z

    .line 659
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    .line 660
    return-object p0
.end method

.method public setDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 275
    if-nez p1, :cond_8

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 278
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    .line 279
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .line 280
    return-object p0
.end method

.method public setFlagContentResponse(Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 495
    if-nez p1, :cond_8

    .line 496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 498
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse:Z

    .line 499
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    .line 500
    return-object p0
.end method

.method public setInitiateAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 535
    if-nez p1, :cond_8

    .line 536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 538
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse:Z

    .line 539
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    .line 540
    return-object p0
.end method

.method public setInstrumentSetupInfoResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 735
    if-nez p1, :cond_8

    .line 736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 738
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse:Z

    .line 739
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    .line 740
    return-object p0
.end method

.method public setLibraryReplicationResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 575
    if-nez p1, :cond_8

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse:Z

    .line 579
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    .line 580
    return-object p0
.end method

.method public setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 255
    if-nez p1, :cond_8

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    .line 259
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 260
    return-object p0
.end method

.method public setLogResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 435
    if-nez p1, :cond_8

    .line 436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 438
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse:Z

    .line 439
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    .line 440
    return-object p0
.end method

.method public setModifyLibraryResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 775
    if-nez p1, :cond_8

    .line 776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 778
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse:Z

    .line 779
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    .line 780
    return-object p0
.end method

.method public setPlusOneResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 475
    if-nez p1, :cond_8

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse:Z

    .line 479
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .line 480
    return-object p0
.end method

.method public setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 395
    if-nez p1, :cond_8

    .line 396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    .line 399
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 400
    return-object p0
.end method

.method public setRateSuggestedContentResponse(Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 695
    if-nez p1, :cond_8

    .line 696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 698
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse:Z

    .line 699
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    .line 700
    return-object p0
.end method

.method public setRedeemGiftCardResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 755
    if-nez p1, :cond_8

    .line 756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 758
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse:Z

    .line 759
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    .line 760
    return-object p0
.end method

.method public setResolveLinkResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 635
    if-nez p1, :cond_8

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse:Z

    .line 639
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 640
    return-object p0
.end method

.method public setReviewResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 295
    if-nez p1, :cond_8

    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 298
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    .line 299
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .line 300
    return-object p0
.end method

.method public setRevokeResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 595
    if-nez p1, :cond_8

    .line 596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 598
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse:Z

    .line 599
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .line 600
    return-object p0
.end method

.method public setSearchResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 335
    if-nez p1, :cond_8

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 338
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    .line 339
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .line 340
    return-object p0
.end method

.method public setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 355
    if-nez p1, :cond_8

    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 358
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    .line 359
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 360
    return-object p0
.end method

.method public setUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 415
    if-nez p1, :cond_8

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 418
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse:Z

    .line 419
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 420
    return-object p0
.end method

.method public setVerifyAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 555
    if-nez p1, :cond_8

    .line 556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 558
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse:Z

    .line 559
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .line 560
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 879
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 881
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 882
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 884
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 885
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 887
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 888
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 890
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 891
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 893
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 894
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 896
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 897
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 899
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 900
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 902
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 903
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 905
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 906
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 908
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 909
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 911
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 912
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 914
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 915
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 917
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 918
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 920
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 921
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInitiateAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 923
    :cond_da
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 924
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getVerifyAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 926
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 927
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 929
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 930
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 932
    :cond_107
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 933
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 935
    :cond_116
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 936
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 938
    :cond_125
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 939
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 941
    :cond_134
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 942
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 944
    :cond_143
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 945
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRateSuggestedContentResponse()Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 947
    :cond_152
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 948
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckPromoOfferResponse()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 950
    :cond_161
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 951
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInstrumentSetupInfoResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 953
    :cond_170
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 954
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRedeemGiftCardResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 956
    :cond_17f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse()Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 957
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getModifyLibraryResponse()Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 959
    :cond_18e
    return-void
.end method
