.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instrument"
.end annotation


# instance fields
.field private billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

.field private billingAddress_:Lcom/google/android/finsky/remoting/protos/Address;

.field private cachedSize:I

.field private carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

.field private carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

.field private creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

.field private hasBillingAddress:Z

.field private hasBillingAddressSpec:Z

.field private hasCarrierBilling:Z

.field private hasCarrierBillingStatus:Z

.field private hasCreditCard:Z

.field private hasInstrumentFamily:Z

.field private hasInstrumentId:Z

.field private instrumentFamily_:I

.field private instrumentId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentId_:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentFamily_:I

    .line 48
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddress_:Lcom/google/android/finsky/remoting/protos/Address;

    .line 68
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 88
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 108
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 128
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getBillingAddress()Lcom/google/android/finsky/remoting/protos/Address;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddress_:Lcom/google/android/finsky/remoting/protos/Address;

    return-object v0
.end method

.method public getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    if-gez v0, :cond_7

    .line 193
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getSerializedSize()I

    .line 195
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    return v0
.end method

.method public getCarrierBilling()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    return-object v0
.end method

.method public getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    return-object v0
.end method

.method public getCreditCard()Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    return-object v0
.end method

.method public getInstrumentFamily()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentFamily_:I

    return v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 201
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 205
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 209
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCreditCard()Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 213
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBilling()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 217
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 221
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 225
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_71
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->cachedSize:I

    .line 229
    return v0
.end method

.method public hasBillingAddress()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress:Z

    return v0
.end method

.method public hasBillingAddressSpec()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec:Z

    return v0
.end method

.method public hasCarrierBilling()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling:Z

    return v0
.end method

.method public hasCarrierBillingStatus()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus:Z

    return v0
.end method

.method public hasCreditCard()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard:Z

    return v0
.end method

.method public hasInstrumentFamily()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    return v0
.end method

.method public hasInstrumentId()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 237
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    :sswitch_d
    return-object p0

    .line 247
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 251
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Address;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Address;-><init>()V

    .line 252
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Address;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 253
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 257
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Address;
    :sswitch_22
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;-><init>()V

    .line 258
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCreditCard(Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 263
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    :sswitch_2e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    .line 264
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 265
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 269
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;
    :sswitch_3a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;-><init>()V

    .line 270
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddressSpec(Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 275
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 279
    :sswitch_4e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;-><init>()V

    .line 280
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 281
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCarrierBillingStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    goto :goto_0

    .line 237
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2e
        0x2a -> :sswitch_3a
        0x30 -> :sswitch_46
        0x3a -> :sswitch_4e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    return-object v0
.end method

.method public setBillingAddress(Lcom/google/android/finsky/remoting/protos/Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 52
    if-nez p1, :cond_8

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress:Z

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddress_:Lcom/google/android/finsky/remoting/protos/Address;

    .line 57
    return-object p0
.end method

.method public setBillingAddressSpec(Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 72
    if-nez p1, :cond_8

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec:Z

    .line 76
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->billingAddressSpec_:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 77
    return-object p0
.end method

.method public setCarrierBilling(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 112
    if-nez p1, :cond_8

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 115
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling:Z

    .line 116
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBilling_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    .line 117
    return-object p0
.end method

.method public setCarrierBillingStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 132
    if-nez p1, :cond_8

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus:Z

    .line 136
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->carrierBillingStatus_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    .line 137
    return-object p0
.end method

.method public setCreditCard(Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 92
    if-nez p1, :cond_8

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 95
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard:Z

    .line 96
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->creditCard_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 97
    return-object p0
.end method

.method public setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    .line 36
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentFamily_:I

    .line 37
    return-object p0
.end method

.method public setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->instrumentId_:Ljava/lang/String;

    .line 20
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
    .line 166
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 169
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddress()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddress()Lcom/google/android/finsky/remoting/protos/Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 172
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCreditCard()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 173
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCreditCard()Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 175
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBilling()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 176
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBilling()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 178
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasBillingAddressSpec()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 179
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getBillingAddressSpec()Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 181
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasInstrumentFamily()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 182
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 184
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 185
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 187
    :cond_62
    return-void
.end method
