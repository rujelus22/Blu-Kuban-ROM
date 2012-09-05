.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseOrderRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private billingInstrumentId_:Ljava/lang/String;

.field private billingInstrumentType_:I

.field private billingParametersId_:Ljava/lang/String;

.field private cachedSize:I

.field private carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

.field private developerPayload_:Ljava/lang/String;

.field private existingOrderId_:Ljava/lang/String;

.field private gaiaAuthToken_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasBillingInstrumentId:Z

.field private hasBillingInstrumentType:Z

.field private hasBillingParametersId:Z

.field private hasCarrierBillingCredentials:Z

.field private hasDeveloperPayload:Z

.field private hasExistingOrderId:Z

.field private hasGaiaAuthToken:Z

.field private hasPaypalCredentials:Z

.field private hasProductType:Z

.field private hasRiskHeaderInfo:Z

.field private hasSignatureHash:Z

.field private hasTosAccepted:Z

.field private hasTransactionId:Z

.field private paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

.field private productType_:I

.field private riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

.field private tosAccepted_:Z

.field private transactionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8429
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 8451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->assetId_:Ljava/lang/String;

    .line 8468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->transactionId_:Ljava/lang/String;

    .line 8485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentId_:Ljava/lang/String;

    .line 8502
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentType_:I

    .line 8519
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 8536
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    .line 8556
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    .line 8576
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->existingOrderId_:Ljava/lang/String;

    .line 8593
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->tosAccepted_:Z

    .line 8610
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    .line 8630
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->productType_:I

    .line 8647
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 8667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->developerPayload_:Ljava/lang/String;

    .line 8765
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    .line 8429
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8452
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingInstrumentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8486
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingInstrumentType()I
    .registers 2

    .prologue
    .line 8504
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentType_:I

    return v0
.end method

.method public getBillingParametersId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8520
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingParametersId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 8767
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 8769
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getSerializedSize()I

    .line 8771
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    return v0
.end method

.method public getCarrierBillingCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    .registers 2

    .prologue
    .line 8538
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8668
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->developerPayload_:Ljava/lang/String;

    return-object v0
.end method

.method public getExistingOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8577
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->existingOrderId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8435
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    .registers 2

    .prologue
    .line 8558
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    return-object v0
.end method

.method public getProductType()I
    .registers 2

    .prologue
    .line 8632
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->productType_:I

    return v0
.end method

.method public getRiskHeaderInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    .registers 2

    .prologue
    .line 8612
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 8775
    const/4 v0, 0x0

    .line 8776
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8777
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8780
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8781
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8784
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 8785
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8788
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 8789
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8792
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 8793
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTosAccepted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8796
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 8797
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getCarrierBillingCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8800
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 8801
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getExistingOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8804
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 8805
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8808
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 8809
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8812
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 8813
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getPaypalCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8816
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 8817
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getRiskHeaderInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8820
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 8821
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8824
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 8825
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8828
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 8829
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8832
    :cond_e8
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    .line 8833
    return v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .registers 2

    .prologue
    .line 8649
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public getTosAccepted()Z
    .registers 2

    .prologue
    .line 8594
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->tosAccepted_:Z

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8469
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 8453
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasBillingInstrumentId()Z
    .registers 2

    .prologue
    .line 8487
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId:Z

    return v0
.end method

.method public hasBillingInstrumentType()Z
    .registers 2

    .prologue
    .line 8503
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType:Z

    return v0
.end method

.method public hasBillingParametersId()Z
    .registers 2

    .prologue
    .line 8521
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId:Z

    return v0
.end method

.method public hasCarrierBillingCredentials()Z
    .registers 2

    .prologue
    .line 8537
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials:Z

    return v0
.end method

.method public hasDeveloperPayload()Z
    .registers 2

    .prologue
    .line 8669
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload:Z

    return v0
.end method

.method public hasExistingOrderId()Z
    .registers 2

    .prologue
    .line 8578
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId:Z

    return v0
.end method

.method public hasGaiaAuthToken()Z
    .registers 2

    .prologue
    .line 8436
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken:Z

    return v0
.end method

.method public hasPaypalCredentials()Z
    .registers 2

    .prologue
    .line 8557
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials:Z

    return v0
.end method

.method public hasProductType()Z
    .registers 2

    .prologue
    .line 8631
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasRiskHeaderInfo()Z
    .registers 2

    .prologue
    .line 8611
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .registers 2

    .prologue
    .line 8648
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public hasTosAccepted()Z
    .registers 2

    .prologue
    .line 8595
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted:Z

    return v0
.end method

.method public hasTransactionId()Z
    .registers 2

    .prologue
    .line 8470
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8840
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8841
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_90

    .line 8845
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8846
    :sswitch_d
    return-object p0

    .line 8851
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8855
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8859
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8863
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8867
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8871
    :sswitch_36
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;-><init>()V

    .line 8872
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8873
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setCarrierBillingCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8877
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setExistingOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8881
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8885
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8889
    :sswitch_5a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;-><init>()V

    .line 8890
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8891
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setPaypalCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8895
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    :sswitch_66
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;-><init>()V

    .line 8896
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8897
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setRiskHeaderInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8901
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    :sswitch_72
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 8905
    :sswitch_7a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 8906
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8907
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto/16 :goto_0

    .line 8911
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    :sswitch_87
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setDeveloperPayload(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto/16 :goto_0

    .line 8841
    :sswitch_data_90
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_42
        0x40 -> :sswitch_4a
        0x4a -> :sswitch_52
        0x52 -> :sswitch_5a
        0x5a -> :sswitch_66
        0x60 -> :sswitch_72
        0x6a -> :sswitch_7a
        0x72 -> :sswitch_87
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
    .line 8427
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId:Z

    .line 8456
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->assetId_:Ljava/lang/String;

    .line 8457
    return-object p0
.end method

.method public setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId:Z

    .line 8490
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentId_:Ljava/lang/String;

    .line 8491
    return-object p0
.end method

.method public setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType:Z

    .line 8507
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentType_:I

    .line 8508
    return-object p0
.end method

.method public setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId:Z

    .line 8524
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 8525
    return-object p0
.end method

.method public setCarrierBillingCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8540
    if-nez p1, :cond_8

    .line 8541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8543
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials:Z

    .line 8544
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    .line 8545
    return-object p0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload:Z

    .line 8672
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->developerPayload_:Ljava/lang/String;

    .line 8673
    return-object p0
.end method

.method public setExistingOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId:Z

    .line 8581
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->existingOrderId_:Ljava/lang/String;

    .line 8582
    return-object p0
.end method

.method public setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken:Z

    .line 8439
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 8440
    return-object p0
.end method

.method public setPaypalCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8560
    if-nez p1, :cond_8

    .line 8561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8563
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials:Z

    .line 8564
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    .line 8565
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType:Z

    .line 8635
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->productType_:I

    .line 8636
    return-object p0
.end method

.method public setRiskHeaderInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8614
    if-nez p1, :cond_8

    .line 8615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8617
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo:Z

    .line 8618
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    .line 8619
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8651
    if-nez p1, :cond_8

    .line 8652
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8654
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash:Z

    .line 8655
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 8656
    return-object p0
.end method

.method public setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted:Z

    .line 8598
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->tosAccepted_:Z

    .line 8599
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId:Z

    .line 8473
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->transactionId_:Ljava/lang/String;

    .line 8474
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
    .line 8721
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8722
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8724
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8725
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8727
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 8728
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8730
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 8731
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8733
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 8734
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTosAccepted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 8736
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8737
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getCarrierBillingCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8739
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 8740
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getExistingOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8742
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 8743
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8745
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 8746
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8748
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 8749
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getPaypalCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8751
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 8752
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getRiskHeaderInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8754
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 8755
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8757
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 8758
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8760
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 8761
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8763
    :cond_cb
    return-void
.end method
