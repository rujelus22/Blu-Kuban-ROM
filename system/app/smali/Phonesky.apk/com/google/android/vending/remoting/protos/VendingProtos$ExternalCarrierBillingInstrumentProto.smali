.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalCarrierBillingInstrumentProto"
.end annotation


# instance fields
.field private accountType_:Ljava/lang/String;

.field private address1_:Ljava/lang/String;

.field private address2_:Ljava/lang/String;

.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private country_:Ljava/lang/String;

.field private encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

.field private hasAccountType:Z

.field private hasAddress1:Z

.field private hasAddress2:Z

.field private hasCity:Z

.field private hasCountry:Z

.field private hasEncryptedSubscriberInfo:Z

.field private hasInstrumentKey:Z

.field private hasPostalCode:Z

.field private hasState:Z

.field private hasSubscriberCurrency:Z

.field private hasSubscriberIdentifier:Z

.field private hasSubscriberName:Z

.field private hasTransactionLimit:Z

.field private instrumentKey_:Ljava/lang/String;

.field private postalCode_:Ljava/lang/String;

.field private state_:Ljava/lang/String;

.field private subscriberCurrency_:Ljava/lang/String;

.field private subscriberIdentifier_:Ljava/lang/String;

.field private subscriberName_:Ljava/lang/String;

.field private transactionLimit_:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 6116
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->instrumentKey_:Ljava/lang/String;

    .line 6138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberIdentifier_:Ljava/lang/String;

    .line 6155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->accountType_:Ljava/lang/String;

    .line 6172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberCurrency_:Ljava/lang/String;

    .line 6189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->transactionLimit_:J

    .line 6206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberName_:Ljava/lang/String;

    .line 6223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->address1_:Ljava/lang/String;

    .line 6240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->address2_:Ljava/lang/String;

    .line 6257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->city_:Ljava/lang/String;

    .line 6274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->state_:Ljava/lang/String;

    .line 6291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->postalCode_:Ljava/lang/String;

    .line 6308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->country_:Ljava/lang/String;

    .line 6325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    .line 6411
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->cachedSize:I

    .line 6116
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6156
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->accountType_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6224
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->address1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6241
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->address2_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 6414
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 6416
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getSerializedSize()I

    .line 6418
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6258
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6309
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 2

    .prologue
    .line 6327
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    return-object v0
.end method

.method public getInstrumentKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6122
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->instrumentKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6292
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 6423
    const/4 v0, 0x0

    .line 6424
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasInstrumentKey()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6425
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getInstrumentKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6428
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberIdentifier()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 6429
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6432
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAccountType()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 6433
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6436
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberCurrency()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 6437
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6440
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasTransactionLimit()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 6441
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getTransactionLimit()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6444
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberName()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 6445
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getSubscriberName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6448
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress1()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 6449
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6452
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress2()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 6453
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6456
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 6457
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6460
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasState()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 6461
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6464
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 6465
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6468
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCountry()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 6469
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6472
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasEncryptedSubscriberInfo()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 6473
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6476
    :cond_d7
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->cachedSize:I

    .line 6477
    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6275
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6173
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6139
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6207
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberName_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionLimit()J
    .registers 3

    .prologue
    .line 6190
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->transactionLimit_:J

    return-wide v0
.end method

.method public hasAccountType()Z
    .registers 2

    .prologue
    .line 6157
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAccountType:Z

    return v0
.end method

.method public hasAddress1()Z
    .registers 2

    .prologue
    .line 6225
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress1:Z

    return v0
.end method

.method public hasAddress2()Z
    .registers 2

    .prologue
    .line 6242
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress2:Z

    return v0
.end method

.method public hasCity()Z
    .registers 2

    .prologue
    .line 6259
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCity:Z

    return v0
.end method

.method public hasCountry()Z
    .registers 2

    .prologue
    .line 6310
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCountry:Z

    return v0
.end method

.method public hasEncryptedSubscriberInfo()Z
    .registers 2

    .prologue
    .line 6326
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasEncryptedSubscriberInfo:Z

    return v0
.end method

.method public hasInstrumentKey()Z
    .registers 2

    .prologue
    .line 6123
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasInstrumentKey:Z

    return v0
.end method

.method public hasPostalCode()Z
    .registers 2

    .prologue
    .line 6293
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasPostalCode:Z

    return v0
.end method

.method public hasState()Z
    .registers 2

    .prologue
    .line 6276
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasState:Z

    return v0
.end method

.method public hasSubscriberCurrency()Z
    .registers 2

    .prologue
    .line 6174
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberCurrency:Z

    return v0
.end method

.method public hasSubscriberIdentifier()Z
    .registers 2

    .prologue
    .line 6140
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberIdentifier:Z

    return v0
.end method

.method public hasSubscriberName()Z
    .registers 2

    .prologue
    .line 6208
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberName:Z

    return v0
.end method

.method public hasTransactionLimit()Z
    .registers 2

    .prologue
    .line 6191
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasTransactionLimit:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6485
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6486
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_7a

    .line 6490
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6491
    :sswitch_d
    return-object p0

    .line 6496
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6500
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setSubscriberIdentifier(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6504
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setAccountType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6508
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6512
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setTransactionLimit(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6516
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setSubscriberName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6520
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6524
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6528
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6532
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6536
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6540
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6544
    :sswitch_6e
    new-instance v1, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;-><init>()V

    .line 6545
    .local v1, value:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6546
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->setEncryptedSubscriberInfo(Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    goto :goto_0

    .line 6486
    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_46
        0x4a -> :sswitch_4e
        0x52 -> :sswitch_56
        0x5a -> :sswitch_5e
        0x62 -> :sswitch_66
        0x6a -> :sswitch_6e
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
    .line 6114
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v0

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAccountType:Z

    .line 6160
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->accountType_:Ljava/lang/String;

    .line 6161
    return-object p0
.end method

.method public setAddress1(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress1:Z

    .line 6228
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->address1_:Ljava/lang/String;

    .line 6229
    return-object p0
.end method

.method public setAddress2(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress2:Z

    .line 6245
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->address2_:Ljava/lang/String;

    .line 6246
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCity:Z

    .line 6262
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->city_:Ljava/lang/String;

    .line 6263
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCountry:Z

    .line 6313
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->country_:Ljava/lang/String;

    .line 6314
    return-object p0
.end method

.method public setEncryptedSubscriberInfo(Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6329
    if-nez p1, :cond_8

    .line 6330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6332
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasEncryptedSubscriberInfo:Z

    .line 6333
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    .line 6334
    return-object p0
.end method

.method public setInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasInstrumentKey:Z

    .line 6126
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->instrumentKey_:Ljava/lang/String;

    .line 6127
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasPostalCode:Z

    .line 6296
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->postalCode_:Ljava/lang/String;

    .line 6297
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasState:Z

    .line 6279
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->state_:Ljava/lang/String;

    .line 6280
    return-object p0
.end method

.method public setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberCurrency:Z

    .line 6177
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberCurrency_:Ljava/lang/String;

    .line 6178
    return-object p0
.end method

.method public setSubscriberIdentifier(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberIdentifier:Z

    .line 6143
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberIdentifier_:Ljava/lang/String;

    .line 6144
    return-object p0
.end method

.method public setSubscriberName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberName:Z

    .line 6211
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->subscriberName_:Ljava/lang/String;

    .line 6212
    return-object p0
.end method

.method public setTransactionLimit(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 6193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasTransactionLimit:Z

    .line 6194
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->transactionLimit_:J

    .line 6195
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
    .line 6370
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasInstrumentKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6371
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getInstrumentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6373
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberIdentifier()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6374
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6376
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6377
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6379
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberCurrency()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6380
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6382
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasTransactionLimit()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 6383
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getTransactionLimit()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 6385
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasSubscriberName()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 6386
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getSubscriberName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6388
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress1()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 6389
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6391
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasAddress2()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 6392
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6394
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 6395
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6397
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasState()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 6398
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6400
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 6401
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6403
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 6404
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6406
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->hasEncryptedSubscriberInfo()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 6407
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;->getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6409
    :cond_bc
    return-void
.end method
