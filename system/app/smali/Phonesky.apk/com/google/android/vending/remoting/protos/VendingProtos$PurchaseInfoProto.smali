.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseInfoProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    }
.end annotation


# instance fields
.field private billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

.field private cachedSize:I

.field private cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

.field private eligibleInstrumentTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private errorInputFields_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasBillingInstruments:Z

.field private hasCartInfo:Z

.field private hasOrderId:Z

.field private hasRefundPolicy:Z

.field private hasTransactionId:Z

.field private hasUserCanAddGdd:Z

.field private orderId_:Ljava/lang/String;

.field private refundPolicy_:Ljava/lang/String;

.field private transactionId_:Ljava/lang/String;

.field private userCanAddGdd_:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->transactionId_:Ljava/lang/String;

    .line 400
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    .line 420
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    .line 439
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    .line 467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->refundPolicy_:Ljava/lang/String;

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->userCanAddGdd_:Z

    .line 500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->orderId_:Ljava/lang/String;

    .line 593
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addEligibleInstrumentTypes(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    .line 517
    :cond_f
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    return-object p0
.end method

.method public addErrorInputFields(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    .line 456
    :cond_f
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    return-object p0
.end method

.method public getBillingInstruments()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 597
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getSerializedSize()I

    .line 599
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    return v0
.end method

.method public getCartInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    return-object v0
.end method

.method public getEligibleInstrumentTypesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorInputFieldsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->orderId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundPolicy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->refundPolicy_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 603
    const/4 v3, 0x0

    .line 604
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 605
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 608
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 609
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getCartInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 612
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 613
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getBillingInstruments()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 617
    :cond_31
    const/4 v0, 0x0

    .line 618
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getErrorInputFieldsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 619
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3a

    .line 622
    .end local v1           #element:Ljava/lang/Integer;
    :cond_50
    add-int/2addr v3, v0

    .line 623
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getErrorInputFieldsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 625
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 626
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getRefundPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 629
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 630
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getUserCanAddGdd()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 634
    :cond_7e
    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getEligibleInstrumentTypesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 636
    .restart local v1       #element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_87

    .line 639
    .end local v1           #element:Ljava/lang/Integer;
    :cond_9d
    add-int/2addr v3, v0

    .line 640
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getEligibleInstrumentTypesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 642
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 643
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 646
    :cond_ba
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    .line 647
    return v3
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCanAddGdd()Z
    .registers 2

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->userCanAddGdd_:Z

    return v0
.end method

.method public hasBillingInstruments()Z
    .registers 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments:Z

    return v0
.end method

.method public hasCartInfo()Z
    .registers 2

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo:Z

    return v0
.end method

.method public hasOrderId()Z
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId:Z

    return v0
.end method

.method public hasRefundPolicy()Z
    .registers 2

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy:Z

    return v0
.end method

.method public hasTransactionId()Z
    .registers 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId:Z

    return v0
.end method

.method public hasUserCanAddGdd()Z
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 655
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_58

    .line 659
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    :sswitch_d
    return-object p0

    .line 665
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 669
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;-><init>()V

    .line 670
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 671
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setCartInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 675
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    :sswitch_22
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;-><init>()V

    .line 676
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 677
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setBillingInstruments(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 681
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->addErrorInputFields(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 685
    :sswitch_37
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setRefundPolicy(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 689
    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setUserCanAddGdd(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 693
    :sswitch_47
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->addEligibleInstrumentTypes(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 697
    :sswitch_4f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 655
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1b -> :sswitch_22
        0x48 -> :sswitch_2f
        0x52 -> :sswitch_37
        0x60 -> :sswitch_3f
        0x68 -> :sswitch_47
        0x7a -> :sswitch_4f
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingInstruments(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 424
    if-nez p1, :cond_8

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 427
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments:Z

    .line 428
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    .line 429
    return-object p0
.end method

.method public setCartInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 404
    if-nez p1, :cond_8

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 407
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo:Z

    .line 408
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    .line 409
    return-object p0
.end method

.method public setOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId:Z

    .line 533
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->orderId_:Ljava/lang/String;

    .line 534
    return-object p0
.end method

.method public setRefundPolicy(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy:Z

    .line 472
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->refundPolicy_:Ljava/lang/String;

    .line 473
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId:Z

    .line 388
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->transactionId_:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public setUserCanAddGdd(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd:Z

    .line 489
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->userCanAddGdd_:Z

    .line 490
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
    .line 567
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 568
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 570
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 571
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getCartInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 573
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 574
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getBillingInstruments()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 576
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getErrorInputFieldsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 577
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_32

    .line 579
    .end local v0           #element:Ljava/lang/Integer;
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 580
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getRefundPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 582
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 583
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getUserCanAddGdd()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 585
    :cond_66
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getEligibleInstrumentTypesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 586
    .restart local v0       #element:Ljava/lang/Integer;
    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_6e

    .line 588
    .end local v0           #element:Ljava/lang/Integer;
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 589
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 591
    :cond_93
    return-void
.end method
