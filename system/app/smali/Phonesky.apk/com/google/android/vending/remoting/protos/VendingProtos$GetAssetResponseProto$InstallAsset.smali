.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallAsset"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private assetName_:Ljava/lang/String;

.field private assetPackage_:Ljava/lang/String;

.field private assetSignature_:Ljava/lang/String;

.field private assetSize_:J

.field private assetType_:Ljava/lang/String;

.field private blobUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private downloadAuthCookieName_:Ljava/lang/String;

.field private downloadAuthCookieValue_:Ljava/lang/String;

.field private forwardLocked_:Z

.field private hasAssetId:Z

.field private hasAssetName:Z

.field private hasAssetPackage:Z

.field private hasAssetSignature:Z

.field private hasAssetSize:Z

.field private hasAssetType:Z

.field private hasBlobUrl:Z

.field private hasDownloadAuthCookieName:Z

.field private hasDownloadAuthCookieValue:Z

.field private hasForwardLocked:Z

.field private hasPostInstallRefundWindowMillis:Z

.field private hasRefundTimeoutMillis:Z

.field private hasSecured:Z

.field private hasVersionCode:Z

.field private postInstallRefundWindowMillis_:J

.field private refundTimeoutMillis_:J

.field private secured_:Z

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 12580
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12585
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId_:Ljava/lang/String;

    .line 12602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName_:Ljava/lang/String;

    .line 12619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType_:Ljava/lang/String;

    .line 12636
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage_:Ljava/lang/String;

    .line 12653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl_:Ljava/lang/String;

    .line 12670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature_:Ljava/lang/String;

    .line 12687
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize_:J

    .line 12704
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis_:J

    .line 12721
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked_:Z

    .line 12738
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured_:Z

    .line 12755
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode_:I

    .line 12772
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName_:Ljava/lang/String;

    .line 12789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue_:Ljava/lang/String;

    .line 12806
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis_:J

    .line 12896
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    .line 12580
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12586
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12603
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12637
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12671
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetSize()J
    .registers 3

    .prologue
    .line 12688
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize_:J

    return-wide v0
.end method

.method public getAssetType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12620
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType_:Ljava/lang/String;

    return-object v0
.end method

.method public getBlobUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12654
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 12898
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    if-gez v0, :cond_7

    .line 12900
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getSerializedSize()I

    .line 12902
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    return v0
.end method

.method public getDownloadAuthCookieName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12773
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadAuthCookieValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12790
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardLocked()Z
    .registers 2

    .prologue
    .line 12722
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked_:Z

    return v0
.end method

.method public getPostInstallRefundWindowMillis()J
    .registers 3

    .prologue
    .line 12807
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis_:J

    return-wide v0
.end method

.method public getRefundTimeoutMillis()J
    .registers 3

    .prologue
    .line 12705
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis_:J

    return-wide v0
.end method

.method public getSecured()Z
    .registers 2

    .prologue
    .line 12739
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 12906
    const/4 v0, 0x0

    .line 12907
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 12908
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12911
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 12912
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12915
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 12916
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12919
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 12920
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12923
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 12924
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getBlobUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12927
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 12928
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12931
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 12932
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12935
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 12936
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getRefundTimeoutMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12939
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 12940
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getForwardLocked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12943
    :cond_94
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 12944
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getSecured()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12947
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 12948
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12951
    :cond_b6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 12952
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12955
    :cond_c7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 12956
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12959
    :cond_d8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 12960
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getPostInstallRefundWindowMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12963
    :cond_e9
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    .line 12964
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 12756
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode_:I

    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 12587
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId:Z

    return v0
.end method

.method public hasAssetName()Z
    .registers 2

    .prologue
    .line 12604
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName:Z

    return v0
.end method

.method public hasAssetPackage()Z
    .registers 2

    .prologue
    .line 12638
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage:Z

    return v0
.end method

.method public hasAssetSignature()Z
    .registers 2

    .prologue
    .line 12672
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature:Z

    return v0
.end method

.method public hasAssetSize()Z
    .registers 2

    .prologue
    .line 12689
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize:Z

    return v0
.end method

.method public hasAssetType()Z
    .registers 2

    .prologue
    .line 12621
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType:Z

    return v0
.end method

.method public hasBlobUrl()Z
    .registers 2

    .prologue
    .line 12655
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl:Z

    return v0
.end method

.method public hasDownloadAuthCookieName()Z
    .registers 2

    .prologue
    .line 12774
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    return v0
.end method

.method public hasDownloadAuthCookieValue()Z
    .registers 2

    .prologue
    .line 12791
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    return v0
.end method

.method public hasForwardLocked()Z
    .registers 2

    .prologue
    .line 12723
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    return v0
.end method

.method public hasPostInstallRefundWindowMillis()Z
    .registers 2

    .prologue
    .line 12808
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    return v0
.end method

.method public hasRefundTimeoutMillis()Z
    .registers 2

    .prologue
    .line 12706
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    return v0
.end method

.method public hasSecured()Z
    .registers 2

    .prologue
    .line 12740
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 12757
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12971
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 12972
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_7e

    .line 12976
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12977
    :sswitch_d
    return-object p0

    .line 12982
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 12986
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 12990
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 12994
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetPackage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 12998
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setBlobUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13002
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13006
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setAssetSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13010
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setRefundTimeoutMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13014
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setForwardLocked(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13018
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setSecured(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13022
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13026
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setDownloadAuthCookieName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13030
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setDownloadAuthCookieValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 13034
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->setPostInstallRefundWindowMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    goto :goto_0

    .line 12972
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_16
        0x22 -> :sswitch_1e
        0x2a -> :sswitch_26
        0x32 -> :sswitch_2e
        0x3a -> :sswitch_36
        0x40 -> :sswitch_3e
        0x48 -> :sswitch_46
        0x50 -> :sswitch_4e
        0x58 -> :sswitch_56
        0x60 -> :sswitch_5e
        0x6a -> :sswitch_66
        0x72 -> :sswitch_6e
        0x80 -> :sswitch_76
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
    .line 12578
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId:Z

    .line 12590
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId_:Ljava/lang/String;

    .line 12591
    return-object p0
.end method

.method public setAssetName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName:Z

    .line 12607
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName_:Ljava/lang/String;

    .line 12608
    return-object p0
.end method

.method public setAssetPackage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage:Z

    .line 12641
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage_:Ljava/lang/String;

    .line 12642
    return-object p0
.end method

.method public setAssetSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature:Z

    .line 12675
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature_:Ljava/lang/String;

    .line 12676
    return-object p0
.end method

.method public setAssetSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 4
    .parameter "value"

    .prologue
    .line 12691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize:Z

    .line 12692
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize_:J

    .line 12693
    return-object p0
.end method

.method public setAssetType(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType:Z

    .line 12624
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType_:Ljava/lang/String;

    .line 12625
    return-object p0
.end method

.method public setBlobUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl:Z

    .line 12658
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl_:Ljava/lang/String;

    .line 12659
    return-object p0
.end method

.method public setDownloadAuthCookieName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    .line 12777
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName_:Ljava/lang/String;

    .line 12778
    return-object p0
.end method

.method public setDownloadAuthCookieValue(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    .line 12794
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue_:Ljava/lang/String;

    .line 12795
    return-object p0
.end method

.method public setForwardLocked(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    .line 12726
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked_:Z

    .line 12727
    return-object p0
.end method

.method public setPostInstallRefundWindowMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 4
    .parameter "value"

    .prologue
    .line 12810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    .line 12811
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis_:J

    .line 12812
    return-object p0
.end method

.method public setRefundTimeoutMillis(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 4
    .parameter "value"

    .prologue
    .line 12708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    .line 12709
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis_:J

    .line 12710
    return-object p0
.end method

.method public setSecured(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    .line 12743
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured_:Z

    .line 12744
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 3
    .parameter "value"

    .prologue
    .line 12759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    .line 12760
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode_:I

    .line 12761
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
    .line 12852
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12853
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12855
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 12856
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12858
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 12859
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12861
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 12862
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12864
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 12865
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getBlobUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12867
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 12868
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12870
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 12871
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 12873
    :cond_63
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 12874
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getRefundTimeoutMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 12876
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 12877
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getForwardLocked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 12879
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 12880
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getSecured()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 12882
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 12883
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 12885
    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 12886
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12888
    :cond_ae
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 12889
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 12891
    :cond_bd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 12892
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getPostInstallRefundWindowMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 12894
    :cond_cc
    return-void
.end method
