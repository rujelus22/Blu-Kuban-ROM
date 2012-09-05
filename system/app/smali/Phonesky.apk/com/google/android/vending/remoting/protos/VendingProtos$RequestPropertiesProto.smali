.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPropertiesProto"
.end annotation


# instance fields
.field private aid_:Ljava/lang/String;

.field private cachedSize:I

.field private clientId_:Ljava/lang/String;

.field private hasAid:Z

.field private hasClientId:Z

.field private hasLoggingId:Z

.field private hasOperatorName:Z

.field private hasOperatorNumericName:Z

.field private hasProductNameAndVersion:Z

.field private hasSimOperatorName:Z

.field private hasSimOperatorNumericName:Z

.field private hasSoftwareVersion:Z

.field private hasUserAuthToken:Z

.field private hasUserAuthTokenSecure:Z

.field private hasUserCountry:Z

.field private hasUserLanguage:Z

.field private loggingId_:Ljava/lang/String;

.field private operatorName_:Ljava/lang/String;

.field private operatorNumericName_:Ljava/lang/String;

.field private productNameAndVersion_:Ljava/lang/String;

.field private simOperatorName_:Ljava/lang/String;

.field private simOperatorNumericName_:Ljava/lang/String;

.field private softwareVersion_:I

.field private userAuthTokenSecure_:Z

.field private userAuthToken_:Ljava/lang/String;

.field private userCountry_:Ljava/lang/String;

.field private userLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16261
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 16266
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    .line 16283
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    .line 16300
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    .line 16317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    .line 16334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    .line 16351
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    .line 16368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    .line 16385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    .line 16402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    .line 16419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    .line 16436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    .line 16453
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    .line 16470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    .line 16554
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    .line 16261
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16318
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 16556
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 16558
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSerializedSize()I

    .line 16560
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16454
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16471
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16386
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumericName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16420
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProductNameAndVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16335
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 16564
    const/4 v0, 0x0

    .line 16565
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 16566
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16569
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 16570
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthTokenSecure()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16573
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 16574
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSoftwareVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16577
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 16578
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16581
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 16582
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getProductNameAndVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16585
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 16586
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16589
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 16590
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16593
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 16594
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16597
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 16598
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16601
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 16602
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorNumericName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16605
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 16606
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorNumericName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16609
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 16610
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16613
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 16614
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getLoggingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16617
    :cond_d7
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    .line 16618
    return v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16403
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorNumericName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16437
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()I
    .registers 2

    .prologue
    .line 16301
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    return v0
.end method

.method public getUserAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16267
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAuthTokenSecure()Z
    .registers 2

    .prologue
    .line 16284
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    return v0
.end method

.method public getUserCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16369
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16352
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAid()Z
    .registers 2

    .prologue
    .line 16319
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    return v0
.end method

.method public hasClientId()Z
    .registers 2

    .prologue
    .line 16455
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    return v0
.end method

.method public hasLoggingId()Z
    .registers 2

    .prologue
    .line 16472
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    return v0
.end method

.method public hasOperatorName()Z
    .registers 2

    .prologue
    .line 16387
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    return v0
.end method

.method public hasOperatorNumericName()Z
    .registers 2

    .prologue
    .line 16421
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    return v0
.end method

.method public hasProductNameAndVersion()Z
    .registers 2

    .prologue
    .line 16336
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    return v0
.end method

.method public hasSimOperatorName()Z
    .registers 2

    .prologue
    .line 16404
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    return v0
.end method

.method public hasSimOperatorNumericName()Z
    .registers 2

    .prologue
    .line 16438
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    return v0
.end method

.method public hasSoftwareVersion()Z
    .registers 2

    .prologue
    .line 16302
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    return v0
.end method

.method public hasUserAuthToken()Z
    .registers 2

    .prologue
    .line 16268
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    return v0
.end method

.method public hasUserAuthTokenSecure()Z
    .registers 2

    .prologue
    .line 16285
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    return v0
.end method

.method public hasUserCountry()Z
    .registers 2

    .prologue
    .line 16370
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    return v0
.end method

.method public hasUserLanguage()Z
    .registers 2

    .prologue
    .line 16353
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16625
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 16626
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_76

    .line 16630
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16631
    :sswitch_d
    return-object p0

    .line 16636
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16640
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthTokenSecure(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16644
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16648
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16652
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16656
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16660
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16664
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16668
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16672
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16676
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16680
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16684
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16626
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
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
    .line 16259
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v0

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    .line 16322
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    .line 16323
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    .line 16458
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    .line 16459
    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    .line 16475
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    .line 16476
    return-object p0
.end method

.method public setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    .line 16390
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    .line 16391
    return-object p0
.end method

.method public setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    .line 16424
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    .line 16425
    return-object p0
.end method

.method public setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    .line 16339
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    .line 16340
    return-object p0
.end method

.method public setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    .line 16407
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    .line 16408
    return-object p0
.end method

.method public setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    .line 16441
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    .line 16442
    return-object p0
.end method

.method public setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    .line 16305
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    .line 16306
    return-object p0
.end method

.method public setUserAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    .line 16271
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    .line 16272
    return-object p0
.end method

.method public setUserAuthTokenSecure(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    .line 16288
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    .line 16289
    return-object p0
.end method

.method public setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    .line 16373
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    .line 16374
    return-object p0
.end method

.method public setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    .line 16356
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    .line 16357
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
    .line 16513
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16514
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16516
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 16517
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthTokenSecure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16519
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 16520
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSoftwareVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 16522
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 16523
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16525
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 16526
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getProductNameAndVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16528
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 16529
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16531
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 16532
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16534
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 16535
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16537
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 16538
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16540
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 16541
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorNumericName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16543
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 16544
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorNumericName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16546
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 16547
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16549
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 16550
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16552
    :cond_bc
    return-void
.end method
