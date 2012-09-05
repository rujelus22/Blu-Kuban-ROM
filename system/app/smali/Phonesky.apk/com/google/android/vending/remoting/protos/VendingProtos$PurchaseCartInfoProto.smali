.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseCartInfoProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private footerMessage_:Ljava/lang/String;

.field private hasFooterMessage:Z

.field private hasItemPrice:Z

.field private hasPriceCurrency:Z

.field private hasPriceMicros:Z

.field private hasTaxExclusive:Z

.field private hasTaxInclusive:Z

.field private hasTaxMessage:Z

.field private hasTotal:Z

.field private itemPrice_:Ljava/lang/String;

.field private priceCurrency_:Ljava/lang/String;

.field private priceMicros_:J

.field private taxExclusive_:Ljava/lang/String;

.field private taxInclusive_:Ljava/lang/String;

.field private taxMessage_:Ljava/lang/String;

.field private total_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7587
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7592
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->itemPrice_:Ljava/lang/String;

    .line 7609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxInclusive_:Ljava/lang/String;

    .line 7626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxExclusive_:Ljava/lang/String;

    .line 7643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->total_:Ljava/lang/String;

    .line 7660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxMessage_:Ljava/lang/String;

    .line 7677
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->footerMessage_:Ljava/lang/String;

    .line 7694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceCurrency_:Ljava/lang/String;

    .line 7711
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceMicros_:J

    .line 7774
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    .line 7587
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 7776
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 7778
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getSerializedSize()I

    .line 7780
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    return v0
.end method

.method public getFooterMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7678
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->footerMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7593
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->itemPrice_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7695
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .registers 3

    .prologue
    .line 7712
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceMicros_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 7784
    const/4 v0, 0x0

    .line 7785
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7786
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getItemPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7789
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7790
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxInclusive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7793
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 7794
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxExclusive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7797
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 7798
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTotal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7801
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 7802
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7805
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 7806
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getFooterMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7809
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 7810
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7813
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 7814
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceMicros()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7817
    :cond_82
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    .line 7818
    return v0
.end method

.method public getTaxExclusive()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7627
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxExclusive_:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxInclusive()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7610
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxInclusive_:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7661
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7644
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->total_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFooterMessage()Z
    .registers 2

    .prologue
    .line 7679
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage:Z

    return v0
.end method

.method public hasItemPrice()Z
    .registers 2

    .prologue
    .line 7594
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice:Z

    return v0
.end method

.method public hasPriceCurrency()Z
    .registers 2

    .prologue
    .line 7696
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency:Z

    return v0
.end method

.method public hasPriceMicros()Z
    .registers 2

    .prologue
    .line 7713
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros:Z

    return v0
.end method

.method public hasTaxExclusive()Z
    .registers 2

    .prologue
    .line 7628
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive:Z

    return v0
.end method

.method public hasTaxInclusive()Z
    .registers 2

    .prologue
    .line 7611
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive:Z

    return v0
.end method

.method public hasTaxMessage()Z
    .registers 2

    .prologue
    .line 7662
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage:Z

    return v0
.end method

.method public hasTotal()Z
    .registers 2

    .prologue
    .line 7645
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7825
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7826
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4e

    .line 7830
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7831
    :sswitch_d
    return-object p0

    .line 7836
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setItemPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7840
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTaxInclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7844
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTaxExclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7848
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTotal(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7852
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTaxMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7856
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setFooterMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7860
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7864
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7826
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x40 -> :sswitch_46
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
    .line 7585
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setFooterMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage:Z

    .line 7682
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->footerMessage_:Ljava/lang/String;

    .line 7683
    return-object p0
.end method

.method public setItemPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice:Z

    .line 7597
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->itemPrice_:Ljava/lang/String;

    .line 7598
    return-object p0
.end method

.method public setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency:Z

    .line 7699
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceCurrency_:Ljava/lang/String;

    .line 7700
    return-object p0
.end method

.method public setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 7715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros:Z

    .line 7716
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceMicros_:J

    .line 7717
    return-object p0
.end method

.method public setTaxExclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive:Z

    .line 7631
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxExclusive_:Ljava/lang/String;

    .line 7632
    return-object p0
.end method

.method public setTaxInclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive:Z

    .line 7614
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxInclusive_:Ljava/lang/String;

    .line 7615
    return-object p0
.end method

.method public setTaxMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage:Z

    .line 7665
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxMessage_:Ljava/lang/String;

    .line 7666
    return-object p0
.end method

.method public setTotal(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal:Z

    .line 7648
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->total_:Ljava/lang/String;

    .line 7649
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7748
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7749
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getItemPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7751
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7752
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxInclusive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7754
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7755
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxExclusive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7757
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7758
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7760
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 7761
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7763
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 7764
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getFooterMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7766
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 7767
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7769
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 7770
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceMicros()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 7772
    :cond_71
    return-void
.end method
