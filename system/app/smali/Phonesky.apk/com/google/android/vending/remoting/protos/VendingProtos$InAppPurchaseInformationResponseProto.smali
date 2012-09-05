.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppPurchaseInformationResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPurchaseResult:Z

.field private hasSignedResponse:Z

.field private purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

.field private signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

.field private statusBarNotification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 19469
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19474
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    .line 19493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    .line 19527
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 19571
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    .line 19469
    return-void
.end method


# virtual methods
.method public addStatusBarNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 19510
    if-nez p1, :cond_8

    .line 19511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19513
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 19514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    .line 19516
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19517
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 19573
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 19575
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSerializedSize()I

    .line 19577
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    return v0
.end method

.method public getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .registers 2

    .prologue
    .line 19529
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 19581
    const/4 v2, 0x0

    .line 19582
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 19583
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 19586
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getStatusBarNotificationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    .line 19587
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_19

    .line 19590
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 19591
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 19594
    :cond_3c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->cachedSize:I

    .line 19595
    return v2
.end method

.method public getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .registers 2

    .prologue
    .line 19476
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    return-object v0
.end method

.method public getStatusBarNotificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19496
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->statusBarNotification_:Ljava/util/List;

    return-object v0
.end method

.method public hasPurchaseResult()Z
    .registers 2

    .prologue
    .line 19528
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult:Z

    return v0
.end method

.method public hasSignedResponse()Z
    .registers 2

    .prologue
    .line 19475
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19602
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19603
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_32

    .line 19607
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19608
    :sswitch_d
    return-object p0

    .line 19613
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;-><init>()V

    .line 19614
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 19615
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->setSignedResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    goto :goto_0

    .line 19619
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;-><init>()V

    .line 19620
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 19621
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->addStatusBarNotification(Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    goto :goto_0

    .line 19625
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;-><init>()V

    .line 19626
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 19627
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    goto :goto_0

    .line 19603
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
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
    .line 19467
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 19531
    if-nez p1, :cond_8

    .line 19532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19534
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult:Z

    .line 19535
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 19536
    return-object p0
.end method

.method public setSignedResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 19478
    if-nez p1, :cond_8

    .line 19479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19481
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse:Z

    .line 19482
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    .line 19483
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19560
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasSignedResponse()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 19561
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 19563
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getStatusBarNotificationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;

    .line 19564
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_16

    .line 19566
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$StatusBarNotificationProto;
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->hasPurchaseResult()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 19567
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 19569
    :cond_35
    return-void
.end method
