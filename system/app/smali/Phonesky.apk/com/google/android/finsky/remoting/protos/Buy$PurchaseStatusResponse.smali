.class public final Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseStatusResponse"
.end annotation


# instance fields
.field private appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private briefMessage_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAppDeliveryData:Z

.field private hasBriefMessage:Z

.field private hasInfoUrl:Z

.field private hasLibraryUpdate:Z

.field private hasRejectedInstrument:Z

.field private hasStatus:Z

.field private hasStatusMsg:Z

.field private hasStatusTitle:Z

.field private infoUrl_:Ljava/lang/String;

.field private libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

.field private rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private statusMsg_:Ljava/lang/String;

.field private statusTitle_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2397
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2408
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    .line 2425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    .line 2442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    .line 2459
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    .line 2476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    .line 2493
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 2513
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 2533
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 2605
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    .line 2397
    return-void
.end method


# virtual methods
.method public getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .registers 2

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getBriefMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2607
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 2609
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getSerializedSize()I

    .line 2611
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    return v0
.end method

.method public getInfoUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 2

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 2

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2615
    const/4 v0, 0x0

    .line 2616
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2617
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2620
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2621
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2624
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2625
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2628
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2629
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2632
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2633
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2636
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2637
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2640
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2641
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2644
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 2645
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2648
    :cond_82
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    .line 2649
    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 2410
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppDeliveryData()Z
    .registers 2

    .prologue
    .line 2534
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData:Z

    return v0
.end method

.method public hasBriefMessage()Z
    .registers 2

    .prologue
    .line 2461
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    return v0
.end method

.method public hasInfoUrl()Z
    .registers 2

    .prologue
    .line 2478
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    return v0
.end method

.method public hasLibraryUpdate()Z
    .registers 2

    .prologue
    .line 2494
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate:Z

    return v0
.end method

.method public hasRejectedInstrument()Z
    .registers 2

    .prologue
    .line 2514
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument:Z

    return v0
.end method

.method public hasStatus()Z
    .registers 2

    .prologue
    .line 2409
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    return v0
.end method

.method public hasStatusMsg()Z
    .registers 2

    .prologue
    .line 2427
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    return v0
.end method

.method public hasStatusTitle()Z
    .registers 2

    .prologue
    .line 2444
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2656
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2657
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 2661
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2662
    :sswitch_d
    return-object p0

    .line 2667
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2671
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatusMsg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2675
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatusTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2679
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setBriefMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2683
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setInfoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2687
    :sswitch_36
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 2688
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2689
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2693
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :sswitch_42
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 2694
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2695
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setRejectedInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2699
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :sswitch_4e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 2700
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2701
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 2657
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_42
        0x42 -> :sswitch_4e
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
    .line 2395
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAppDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2537
    if-nez p1, :cond_8

    .line 2538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2540
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData:Z

    .line 2541
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->appDeliveryData_:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 2542
    return-object p0
.end method

.method public setBriefMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    .line 2464
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    .line 2465
    return-object p0
.end method

.method public setInfoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    .line 2481
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    .line 2482
    return-object p0
.end method

.method public setLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2497
    if-nez p1, :cond_8

    .line 2498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2500
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate:Z

    .line 2501
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->libraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 2502
    return-object p0
.end method

.method public setRejectedInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2517
    if-nez p1, :cond_8

    .line 2518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2520
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument:Z

    .line 2521
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->rejectedInstrument_:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 2522
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    .line 2413
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    .line 2414
    return-object p0
.end method

.method public setStatusMsg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    .line 2430
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    .line 2431
    return-object p0
.end method

.method public setStatusTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 2446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    .line 2447
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    .line 2448
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
    .line 2579
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2580
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2582
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2583
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2585
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2586
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2588
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2589
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2591
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2592
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2594
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2595
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2597
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2598
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2600
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2601
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2603
    :cond_71
    return-void
.end method
