.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingInstrumentInfo"
.end annotation


# instance fields
.field private billingInstrumentId_:Ljava/lang/String;

.field private cachedSize:I

.field private carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

.field private creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

.field private hasBillingInstrumentId:Z

.field private hasCarrierInstrument:Z

.field private hasCreditCard:Z

.field private hasPaypalInstrument:Z

.field private paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6913
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->billingInstrumentId_:Ljava/lang/String;

    .line 6935
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    .line 6955
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 6975
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    .line 7030
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    .line 6913
    return-void
.end method


# virtual methods
.method public getBillingInstrumentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6919
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->billingInstrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 7032
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 7034
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getSerializedSize()I

    .line 7036
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    return v0
.end method

.method public getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 2

    .prologue
    .line 6957
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    return-object v0
.end method

.method public getCreditCard()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .registers 2

    .prologue
    .line 6937
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    return-object v0
.end method

.method public getPaypalInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .registers 2

    .prologue
    .line 6977
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 7040
    const/4 v0, 0x0

    .line 7041
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7042
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7045
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7046
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCreditCard()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7049
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 7050
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7053
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 7054
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getPaypalInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7057
    :cond_43
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    .line 7058
    return v0
.end method

.method public hasBillingInstrumentId()Z
    .registers 2

    .prologue
    .line 6920
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId:Z

    return v0
.end method

.method public hasCarrierInstrument()Z
    .registers 2

    .prologue
    .line 6956
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument:Z

    return v0
.end method

.method public hasCreditCard()Z
    .registers 2

    .prologue
    .line 6936
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard:Z

    return v0
.end method

.method public hasPaypalInstrument()Z
    .registers 2

    .prologue
    .line 6976
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7065
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7066
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 7070
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7071
    :sswitch_d
    return-object p0

    .line 7076
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7080
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;-><init>()V

    .line 7081
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7082
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setCreditCard(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7086
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    :sswitch_22
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;-><init>()V

    .line 7087
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7088
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7092
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    :sswitch_2e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;-><init>()V

    .line 7093
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7094
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setPaypalInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7066
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x2a -> :sswitch_e
        0x32 -> :sswitch_16
        0x4a -> :sswitch_22
        0x52 -> :sswitch_2e
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
    .line 6911
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    move-result-object v0

    return-object v0
.end method

.method public setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 6922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId:Z

    .line 6923
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->billingInstrumentId_:Ljava/lang/String;

    .line 6924
    return-object p0
.end method

.method public setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 6959
    if-nez p1, :cond_8

    .line 6960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6962
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument:Z

    .line 6963
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 6964
    return-object p0
.end method

.method public setCreditCard(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 6939
    if-nez p1, :cond_8

    .line 6940
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6942
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard:Z

    .line 6943
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    .line 6944
    return-object p0
.end method

.method public setPaypalInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 6979
    if-nez p1, :cond_8

    .line 6980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6982
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument:Z

    .line 6983
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    .line 6984
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
    .line 7016
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7017
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7019
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7020
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCreditCard()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7022
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7023
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7025
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 7026
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getPaypalInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7028
    :cond_3a
    return-void
.end method
