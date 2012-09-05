.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchasePostRequestProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    }
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

.field private cachedSize:I

.field private cbInstrumentKey_:Ljava/lang/String;

.field private gaiaAuthToken_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasBillingInstrumentInfo:Z

.field private hasCbInstrumentKey:Z

.field private hasGaiaAuthToken:Z

.field private hasPaypalAuthConfirmed:Z

.field private hasProductType:Z

.field private hasSignatureHash:Z

.field private hasTosAccepted:Z

.field private hasTransactionId:Z

.field private paypalAuthConfirmed_:Z

.field private productType_:I

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

.field private tosAccepted_:Z

.field private transactionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 6909
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 7134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->assetId_:Ljava/lang/String;

    .line 7151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->transactionId_:Ljava/lang/String;

    .line 7168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cbInstrumentKey_:Ljava/lang/String;

    .line 7185
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    .line 7205
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->tosAccepted_:Z

    .line 7222
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->paypalAuthConfirmed_:Z

    .line 7239
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->productType_:I

    .line 7256
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 7330
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    .line 6909
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7135
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingInstrumentInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .registers 2

    .prologue
    .line 7187
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 7332
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 7334
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getSerializedSize()I

    .line 7336
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    return v0
.end method

.method public getCbInstrumentKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7169
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cbInstrumentKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7118
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalAuthConfirmed()Z
    .registers 2

    .prologue
    .line 7223
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->paypalAuthConfirmed_:Z

    return v0
.end method

.method public getProductType()I
    .registers 2

    .prologue
    .line 7241
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->productType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 7340
    const/4 v0, 0x0

    .line 7341
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7342
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7345
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7346
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7349
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 7350
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7353
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 7354
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getBillingInstrumentInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7357
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 7358
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTosAccepted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7361
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 7362
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getCbInstrumentKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7365
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 7366
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getPaypalAuthConfirmed()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7369
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 7370
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7373
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 7374
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7377
    :cond_95
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    .line 7378
    return v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 2

    .prologue
    .line 7258
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public getTosAccepted()Z
    .registers 2

    .prologue
    .line 7206
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->tosAccepted_:Z

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7152
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 7136
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasBillingInstrumentInfo()Z
    .registers 2

    .prologue
    .line 7186
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo:Z

    return v0
.end method

.method public hasCbInstrumentKey()Z
    .registers 2

    .prologue
    .line 7170
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey:Z

    return v0
.end method

.method public hasGaiaAuthToken()Z
    .registers 2

    .prologue
    .line 7119
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken:Z

    return v0
.end method

.method public hasPaypalAuthConfirmed()Z
    .registers 2

    .prologue
    .line 7224
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed:Z

    return v0
.end method

.method public hasProductType()Z
    .registers 2

    .prologue
    .line 7240
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .registers 2

    .prologue
    .line 7257
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public hasTosAccepted()Z
    .registers 2

    .prologue
    .line 7207
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted:Z

    return v0
.end method

.method public hasTransactionId()Z
    .registers 2

    .prologue
    .line 7153
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7386
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_60

    .line 7390
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7391
    :sswitch_d
    return-object p0

    .line 7396
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7400
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7404
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7408
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;-><init>()V

    .line 7409
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 7410
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setBillingInstrumentInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7414
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    :sswitch_33
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7418
    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setCbInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7422
    :sswitch_43
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setPaypalAuthConfirmed(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7426
    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7430
    :sswitch_53
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 7431
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7432
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7386
    nop

    :sswitch_data_60
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x23 -> :sswitch_26
        0x38 -> :sswitch_33
        0x42 -> :sswitch_3b
        0x58 -> :sswitch_43
        0x60 -> :sswitch_4b
        0x6a -> :sswitch_53
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
    .line 6907
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId:Z

    .line 7139
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->assetId_:Ljava/lang/String;

    .line 7140
    return-object p0
.end method

.method public setBillingInstrumentInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7189
    if-nez p1, :cond_8

    .line 7190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7192
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo:Z

    .line 7193
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    .line 7194
    return-object p0
.end method

.method public setCbInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey:Z

    .line 7173
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cbInstrumentKey_:Ljava/lang/String;

    .line 7174
    return-object p0
.end method

.method public setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken:Z

    .line 7122
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 7123
    return-object p0
.end method

.method public setPaypalAuthConfirmed(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed:Z

    .line 7227
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->paypalAuthConfirmed_:Z

    .line 7228
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType:Z

    .line 7244
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->productType_:I

    .line 7245
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7260
    if-nez p1, :cond_8

    .line 7261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7263
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash:Z

    .line 7264
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 7265
    return-object p0
.end method

.method public setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted:Z

    .line 7210
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->tosAccepted_:Z

    .line 7211
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId:Z

    .line 7156
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->transactionId_:Ljava/lang/String;

    .line 7157
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
    .line 7301
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7302
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7304
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 7305
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7307
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7308
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7310
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7311
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getBillingInstrumentInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7313
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 7314
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTosAccepted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7316
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7317
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getCbInstrumentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7319
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 7320
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getPaypalAuthConfirmed()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7322
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 7323
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7325
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 7326
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7328
    :cond_82
    return-void
.end method
