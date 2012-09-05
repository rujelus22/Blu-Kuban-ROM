.class public final Lcom/google/android/finsky/remoting/protos/Common$Offer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Offer"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutFlowRequired_:Z

.field private convertedPrice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private currencyCode_:Ljava/lang/String;

.field private formattedAmount_:Ljava/lang/String;

.field private formattedFullAmount_:Ljava/lang/String;

.field private fullPriceMicros_:J

.field private hasCheckoutFlowRequired:Z

.field private hasCurrencyCode:Z

.field private hasFormattedAmount:Z

.field private hasFormattedFullAmount:Z

.field private hasFullPriceMicros:Z

.field private hasMicros:Z

.field private hasOfferType:Z

.field private hasOnSaleDate:Z

.field private hasRentalTerms:Z

.field private micros_:J

.field private offerType_:I

.field private onSaleDate_:J

.field private rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 390
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 395
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 446
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 567
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    .line 639
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 390
    return-void
.end method


# virtual methods
.method public addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 496
    if-nez p1, :cond_8

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 499
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 502
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    if-gez v0, :cond_7

    .line 643
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSerializedSize()I

    .line 645
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    return v0
.end method

.method public getCheckoutFlowRequired()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    return v0
.end method

.method public getConvertedPriceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedFullAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPriceMicros()J
    .registers 3

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    return-wide v0
.end method

.method public getMicros()J
    .registers 3

    .prologue
    .line 396
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    return-wide v0
.end method

.method public getOfferType()I
    .registers 2

    .prologue
    .line 532
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    return v0
.end method

.method public getOnSaleDate()J
    .registers 3

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    return-wide v0
.end method

.method public getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 649
    const/4 v2, 0x0

    .line 650
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 651
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 654
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 655
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 658
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 659
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 662
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getConvertedPriceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 663
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 666
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 667
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 670
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 671
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 674
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 675
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 678
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 679
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 682
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 683
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 686
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 687
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOnSaleDate()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 690
    :cond_af
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 691
    return v2
.end method

.method public hasCheckoutFlowRequired()Z
    .registers 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    return v0
.end method

.method public hasCurrencyCode()Z
    .registers 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    return v0
.end method

.method public hasFormattedAmount()Z
    .registers 2

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    return v0
.end method

.method public hasFormattedFullAmount()Z
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    return v0
.end method

.method public hasFullPriceMicros()Z
    .registers 2

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    return v0
.end method

.method public hasMicros()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    return v0
.end method

.method public hasOfferType()Z
    .registers 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    return v0
.end method

.method public hasOnSaleDate()Z
    .registers 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate:Z

    return v0
.end method

.method public hasRentalTerms()Z
    .registers 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 699
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_66

    .line 703
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    :sswitch_d
    return-object p0

    .line 709
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 713
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 717
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 721
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 722
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 723
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 727
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 731
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 735
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 739
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 743
    :sswitch_52
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;-><init>()V

    .line 744
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 745
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 749
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setOnSaleDate(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 699
    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_32
        0x30 -> :sswitch_3a
        0x3a -> :sswitch_42
        0x40 -> :sswitch_4a
        0x4a -> :sswitch_52
        0x50 -> :sswitch_5e
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
    .line 388
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    .line 518
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 519
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    .line 417
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 418
    return-object p0
.end method

.method public setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    .line 434
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 435
    return-object p0
.end method

.method public setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    .line 468
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 469
    return-object p0
.end method

.method public setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 4
    .parameter "value"

    .prologue
    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    .line 451
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 452
    return-object p0
.end method

.method public setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 4
    .parameter "value"

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    .line 400
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 401
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    .line 535
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 536
    return-object p0
.end method

.method public setOnSaleDate(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 4
    .parameter "value"

    .prologue
    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate:Z

    .line 572
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    .line 573
    return-object p0
.end method

.method public setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 551
    if-nez p1, :cond_8

    .line 552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 554
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    .line 555
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 556
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 608
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 610
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 611
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 613
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 614
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 616
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getConvertedPriceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 617
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 619
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 620
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 622
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 623
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 625
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 626
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 628
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 629
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 631
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 632
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 634
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 635
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOnSaleDate()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 637
    :cond_9a
    return-void
.end method
