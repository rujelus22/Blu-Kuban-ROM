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

.field private formattedDescription_:Ljava/lang/String;

.field private formattedFullAmount_:Ljava/lang/String;

.field private formattedName_:Ljava/lang/String;

.field private fullPriceMicros_:J

.field private hasCheckoutFlowRequired:Z

.field private hasCurrencyCode:Z

.field private hasFormattedAmount:Z

.field private hasFormattedDescription:Z

.field private hasFormattedFullAmount:Z

.field private hasFormattedName:Z

.field private hasFullPriceMicros:Z

.field private hasMicros:Z

.field private hasOfferType:Z

.field private hasOnSaleDate:Z

.field private hasRentalTerms:Z

.field private hasSubscriptionTerms:Z

.field private micros_:J

.field private offerType_:I

.field private onSaleDate_:J

.field private promotionLabel_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

.field private subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 491
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 496
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 547
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedName_:Ljava/lang/String;

    .line 564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedDescription_:Ljava/lang/String;

    .line 581
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 665
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 682
    iput-object v3, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 702
    iput-object v3, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    .line 722
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    .line 738
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    .line 844
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 491
    return-void
.end method


# virtual methods
.method public addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 631
    if-nez p1, :cond_8

    .line 632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 634
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 637
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    return-object p0
.end method

.method public addPromotionLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
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
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    .line 761
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 847
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    if-gez v0, :cond_7

    .line 849
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSerializedSize()I

    .line 851
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    return v0
.end method

.method public getCheckoutFlowRequired()Z
    .registers 2

    .prologue
    .line 649
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
    .line 617
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedFullAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPriceMicros()J
    .registers 3

    .prologue
    .line 582
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    return-wide v0
.end method

.method public getMicros()J
    .registers 3

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    return-wide v0
.end method

.method public getOfferType()I
    .registers 2

    .prologue
    .line 667
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    return v0
.end method

.method public getOnSaleDate()J
    .registers 3

    .prologue
    .line 723
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    return-wide v0
.end method

.method public getPromotionLabelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    return-object v0
.end method

.method public getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 856
    const/4 v3, 0x0

    .line 857
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 858
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 861
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 862
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 865
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 866
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 869
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getConvertedPriceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 870
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_39

    .line 873
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 874
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 877
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 878
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 881
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 882
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 885
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 886
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 889
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 890
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 893
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 894
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOnSaleDate()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 898
    :cond_af
    const/4 v0, 0x0

    .line 899
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPromotionLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 900
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_b8

    .line 903
    .end local v1           #element:Ljava/lang/String;
    :cond_ca
    add-int/2addr v3, v0

    .line 904
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPromotionLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 906
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms()Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 907
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSubscriptionTerms()Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 910
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName()Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 911
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 914
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription()Z

    move-result v4

    if-eqz v4, :cond_109

    .line 915
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 918
    :cond_109
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 919
    return v3
.end method

.method public getSubscriptionTerms()Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    return-object v0
.end method

.method public hasCheckoutFlowRequired()Z
    .registers 2

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    return v0
.end method

.method public hasCurrencyCode()Z
    .registers 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    return v0
.end method

.method public hasFormattedAmount()Z
    .registers 2

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    return v0
.end method

.method public hasFormattedDescription()Z
    .registers 2

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription:Z

    return v0
.end method

.method public hasFormattedFullAmount()Z
    .registers 2

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    return v0
.end method

.method public hasFormattedName()Z
    .registers 2

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName:Z

    return v0
.end method

.method public hasFullPriceMicros()Z
    .registers 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    return v0
.end method

.method public hasMicros()Z
    .registers 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    return v0
.end method

.method public hasOfferType()Z
    .registers 2

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    return v0
.end method

.method public hasOnSaleDate()Z
    .registers 2

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate:Z

    return v0
.end method

.method public hasRentalTerms()Z
    .registers 2

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    return v0
.end method

.method public hasSubscriptionTerms()Z
    .registers 2

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms:Z

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
    .line 927
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 928
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_8c

    .line 932
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    :sswitch_d
    return-object p0

    .line 938
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 942
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 946
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 950
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 951
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 952
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 956
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 960
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 964
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 968
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 972
    :sswitch_52
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;-><init>()V

    .line 973
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 974
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 978
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setOnSaleDate(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 982
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->addPromotionLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 986
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;-><init>()V

    .line 987
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 988
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setSubscriptionTerms(Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 992
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    :sswitch_7a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto/16 :goto_0

    .line 996
    :sswitch_83
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto/16 :goto_0

    .line 928
    :sswitch_data_8c
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
        0x5a -> :sswitch_66
        0x62 -> :sswitch_6e
        0x6a -> :sswitch_7a
        0x72 -> :sswitch_83
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
    .line 488
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    .line 653
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 654
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    .line 518
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 519
    return-object p0
.end method

.method public setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    .line 535
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 536
    return-object p0
.end method

.method public setFormattedDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription:Z

    .line 569
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedDescription_:Ljava/lang/String;

    .line 570
    return-object p0
.end method

.method public setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    .line 603
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 604
    return-object p0
.end method

.method public setFormattedName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName:Z

    .line 552
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedName_:Ljava/lang/String;

    .line 553
    return-object p0
.end method

.method public setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 4
    .parameter "value"

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    .line 586
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 587
    return-object p0
.end method

.method public setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 4
    .parameter "value"

    .prologue
    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    .line 501
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 502
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    .line 670
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 671
    return-object p0
.end method

.method public setOnSaleDate(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 4
    .parameter "value"

    .prologue
    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate:Z

    .line 727
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    .line 728
    return-object p0
.end method

.method public setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 686
    if-nez p1, :cond_8

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 689
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    .line 690
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 691
    return-object p0
.end method

.method public setSubscriptionTerms(Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 3
    .parameter "value"

    .prologue
    .line 706
    if-nez p1, :cond_8

    .line 707
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 709
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms:Z

    .line 710
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    .line 711
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
    .line 800
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 801
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 803
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 804
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 806
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 807
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 809
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

    .line 810
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 812
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 813
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 815
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 816
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 818
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 819
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 821
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 822
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 824
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 825
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 827
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 828
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOnSaleDate()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 830
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPromotionLabelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 831
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_a2

    .line 833
    .end local v0           #element:Ljava/lang/String;
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 834
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSubscriptionTerms()Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 836
    :cond_c3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 837
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 839
    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 840
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 842
    :cond_e1
    return-void
.end method
