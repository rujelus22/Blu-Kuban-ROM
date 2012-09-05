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

.field private deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

.field private detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

.field private flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

.field private hasAcceptTosResponse:Z

.field private hasAckNotificationResponse:Z

.field private hasBrowseResponse:Z

.field private hasBulkDetailsResponse:Z

.field private hasBuyResponse:Z

.field private hasCheckInstrumentResponse:Z

.field private hasDeliveryResponse:Z

.field private hasDetailsResponse:Z

.field private hasFlagContentResponse:Z

.field private hasLibraryReplicationResponse:Z

.field private hasListResponse:Z

.field private hasLogResponse:Z

.field private hasPlusOneResponse:Z

.field private hasPurchaseStatusResponse:Z

.field private hasRequestSmsResponse:Z

.field private hasResolveLinkResponse:Z

.field private hasReviewResponse:Z

.field private hasRevokeResponse:Z

.field private hasSearchResponse:Z

.field private hasTocResponse:Z

.field private hasUpdateInstrumentResponse:Z

.field private hasVerifyPinResponse:Z

.field private libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

.field private listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

.field private logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

.field private plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

.field private purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

.field private requestSmsResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;

.field private resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

.field private reviewResponse_:Lcom/google/android/finsky/remoting/protos/ReviewResponse;

.field private revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

.field private searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

.field private tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

.field private updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private verifyPinResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 245
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 265
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .line 285
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    .line 305
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 325
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .line 345
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 365
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 385
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 405
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 425
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    .line 445
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .line 465
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .line 485
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    .line 505
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    .line 525
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->requestSmsResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;

    .line 545
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyPinResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    .line 565
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    .line 585
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .line 605
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .line 625
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 645
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    .line 665
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .line 828
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 240
    return-void
.end method


# virtual methods
.method public getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    return-object v0
.end method

.method public getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    return-object v0
.end method

.method public getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    return-object v0
.end method

.method public getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    return-object v0
.end method

.method public getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 830
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    if-gez v0, :cond_7

    .line 832
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSerializedSize()I

    .line 834
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    return v0
.end method

.method public getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    return-object v0
.end method

.method public getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    return-object v0
.end method

.method public getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    return-object v0
.end method

.method public getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    return-object v0
.end method

.method public getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    return-object v0
.end method

.method public getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    return-object v0
.end method

.method public getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    return-object v0
.end method

.method public getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    return-object v0
.end method

.method public getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    return-object v0
.end method

.method public getRequestSmsResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->requestSmsResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;

    return-object v0
.end method

.method public getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    return-object v0
.end method

.method public getReviewResponse()Lcom/google/android/finsky/remoting/protos/ReviewResponse;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    return-object v0
.end method

.method public getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    return-object v0
.end method

.method public getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 840
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 844
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 848
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 852
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 855
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 856
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 859
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 860
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 864
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 868
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 872
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 875
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 876
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 879
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 880
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 883
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 884
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 887
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 888
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 891
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 892
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 895
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRequestSmsResponse()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 896
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRequestSmsResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 899
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyPinResponse()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 900
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getVerifyPinResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 903
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 904
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 907
    :cond_11b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 908
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 911
    :cond_12c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 912
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 915
    :cond_13d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 916
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 919
    :cond_14e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse()Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 920
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 923
    :cond_15f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 924
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 927
    :cond_170
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 928
    return v0
.end method

.method public getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    return-object v0
.end method

.method public getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object v0
.end method

.method public getVerifyPinResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyPinResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    return-object v0
.end method

.method public hasAcceptTosResponse()Z
    .registers 2

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse:Z

    return v0
.end method

.method public hasAckNotificationResponse()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse:Z

    return v0
.end method

.method public hasBrowseResponse()Z
    .registers 2

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    return v0
.end method

.method public hasBulkDetailsResponse()Z
    .registers 2

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse:Z

    return v0
.end method

.method public hasBuyResponse()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    return v0
.end method

.method public hasCheckInstrumentResponse()Z
    .registers 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse:Z

    return v0
.end method

.method public hasDeliveryResponse()Z
    .registers 2

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse:Z

    return v0
.end method

.method public hasDetailsResponse()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    return v0
.end method

.method public hasFlagContentResponse()Z
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse:Z

    return v0
.end method

.method public hasLibraryReplicationResponse()Z
    .registers 2

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse:Z

    return v0
.end method

.method public hasListResponse()Z
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    return v0
.end method

.method public hasLogResponse()Z
    .registers 2

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse:Z

    return v0
.end method

.method public hasPlusOneResponse()Z
    .registers 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse:Z

    return v0
.end method

.method public hasPurchaseStatusResponse()Z
    .registers 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    return v0
.end method

.method public hasRequestSmsResponse()Z
    .registers 2

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRequestSmsResponse:Z

    return v0
.end method

.method public hasResolveLinkResponse()Z
    .registers 2

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse:Z

    return v0
.end method

.method public hasReviewResponse()Z
    .registers 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    return v0
.end method

.method public hasRevokeResponse()Z
    .registers 2

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse:Z

    return v0
.end method

.method public hasSearchResponse()Z
    .registers 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    return v0
.end method

.method public hasTocResponse()Z
    .registers 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    return v0
.end method

.method public hasUpdateInstrumentResponse()Z
    .registers 2

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse:Z

    return v0
.end method

.method public hasVerifyPinResponse()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyPinResponse:Z

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
    .line 935
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 936
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_124

    .line 940
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 941
    :sswitch_d
    return-object p0

    .line 946
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;-><init>()V

    .line 947
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 948
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 952
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;-><init>()V

    .line 953
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 954
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 958
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ReviewResponse;-><init>()V

    .line 959
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ReviewResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 960
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setReviewResponse(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 964
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ReviewResponse;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;-><init>()V

    .line 965
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 966
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 970
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;-><init>()V

    .line 971
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 972
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setSearchResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 976
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;-><init>()V

    .line 977
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 978
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 982
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;-><init>()V

    .line 983
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 984
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 988
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;-><init>()V

    .line 989
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 990
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 994
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;-><init>()V

    .line 995
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 996
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1000
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;-><init>()V

    .line 1001
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1002
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setLogResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1006
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;-><init>()V

    .line 1007
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1008
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setCheckInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1012
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    :sswitch_94
    new-instance v1, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;-><init>()V

    .line 1013
    .local v1, value:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1014
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPlusOneResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1018
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    :sswitch_a1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;-><init>()V

    .line 1019
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1020
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setFlagContentResponse(Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1024
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    :sswitch_ae
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;-><init>()V

    .line 1025
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1026
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setAckNotificationResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1030
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    :sswitch_bb
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;-><init>()V

    .line 1031
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1032
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRequestSmsResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1036
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;
    :sswitch_c8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;-><init>()V

    .line 1037
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1038
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setVerifyPinResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1042
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;
    :sswitch_d5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;-><init>()V

    .line 1043
    .local v1, value:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1044
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setLibraryReplicationResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1048
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    :sswitch_e2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;-><init>()V

    .line 1049
    .local v1, value:Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1050
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRevokeResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1054
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    :sswitch_ef
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;-><init>()V

    .line 1055
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1056
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBulkDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1060
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    :sswitch_fc
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;-><init>()V

    .line 1061
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1062
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setResolveLinkResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1066
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    :sswitch_109
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;-><init>()V

    .line 1067
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1068
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setDeliveryResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1072
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    :sswitch_116
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;-><init>()V

    .line 1073
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1074
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setAcceptTosResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 936
    nop

    :sswitch_data_124
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
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptTosResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 669
    if-nez p1, :cond_8

    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 672
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse:Z

    .line 673
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .line 674
    return-object p0
.end method

.method public setAckNotificationResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 509
    if-nez p1, :cond_8

    .line 510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 512
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse:Z

    .line 513
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    .line 514
    return-object p0
.end method

.method public setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 369
    if-nez p1, :cond_8

    .line 370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 372
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    .line 373
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 374
    return-object p0
.end method

.method public setBulkDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 609
    if-nez p1, :cond_8

    .line 610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 612
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse:Z

    .line 613
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .line 614
    return-object p0
.end method

.method public setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 309
    if-nez p1, :cond_8

    .line 310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 312
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    .line 313
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 314
    return-object p0
.end method

.method public setCheckInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 449
    if-nez p1, :cond_8

    .line 450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 452
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse:Z

    .line 453
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .line 454
    return-object p0
.end method

.method public setDeliveryResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 649
    if-nez p1, :cond_8

    .line 650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 652
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse:Z

    .line 653
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    .line 654
    return-object p0
.end method

.method public setDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 269
    if-nez p1, :cond_8

    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 272
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    .line 273
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .line 274
    return-object p0
.end method

.method public setFlagContentResponse(Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 489
    if-nez p1, :cond_8

    .line 490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 492
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse:Z

    .line 493
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    .line 494
    return-object p0
.end method

.method public setLibraryReplicationResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 569
    if-nez p1, :cond_8

    .line 570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 572
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse:Z

    .line 573
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    .line 574
    return-object p0
.end method

.method public setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 249
    if-nez p1, :cond_8

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 252
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    .line 253
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 254
    return-object p0
.end method

.method public setLogResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 429
    if-nez p1, :cond_8

    .line 430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 432
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse:Z

    .line 433
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    .line 434
    return-object p0
.end method

.method public setPlusOneResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 469
    if-nez p1, :cond_8

    .line 470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 472
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse:Z

    .line 473
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .line 474
    return-object p0
.end method

.method public setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 389
    if-nez p1, :cond_8

    .line 390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 392
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    .line 393
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 394
    return-object p0
.end method

.method public setRequestSmsResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 529
    if-nez p1, :cond_8

    .line 530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 532
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRequestSmsResponse:Z

    .line 533
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->requestSmsResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;

    .line 534
    return-object p0
.end method

.method public setResolveLinkResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 629
    if-nez p1, :cond_8

    .line 630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 632
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse:Z

    .line 633
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 634
    return-object p0
.end method

.method public setReviewResponse(Lcom/google/android/finsky/remoting/protos/ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 289
    if-nez p1, :cond_8

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 292
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    .line 293
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    .line 294
    return-object p0
.end method

.method public setRevokeResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 589
    if-nez p1, :cond_8

    .line 590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 592
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse:Z

    .line 593
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .line 594
    return-object p0
.end method

.method public setSearchResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 329
    if-nez p1, :cond_8

    .line 330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 332
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    .line 333
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .line 334
    return-object p0
.end method

.method public setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 349
    if-nez p1, :cond_8

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 352
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    .line 353
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 354
    return-object p0
.end method

.method public setUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 409
    if-nez p1, :cond_8

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 412
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse:Z

    .line 413
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 414
    return-object p0
.end method

.method public setVerifyPinResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .registers 3
    .parameter "value"

    .prologue
    .line 549
    if-nez p1, :cond_8

    .line 550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 552
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyPinResponse:Z

    .line 553
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyPinResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    .line 554
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
    .line 760
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 761
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 763
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 764
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 766
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 767
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/ReviewResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 769
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 770
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 772
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 773
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 775
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 776
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 778
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 779
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 781
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 782
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 784
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 785
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 787
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 788
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 790
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 791
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 793
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 794
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 796
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 797
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 799
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 800
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 802
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRequestSmsResponse()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 803
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRequestSmsResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$GetVerificationIdResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 805
    :cond_da
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyPinResponse()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 806
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getVerifyPinResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyPinResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 808
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 809
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 811
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 812
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 814
    :cond_107
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 815
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 817
    :cond_116
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 818
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 820
    :cond_125
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 821
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 823
    :cond_134
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 824
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 826
    :cond_143
    return-void
.end method
