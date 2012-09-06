.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    }
.end annotation


# instance fields
.field private applicationPermissionId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private category_:Ljava/lang/String;

.field private contactEmail_:Ljava/lang/String;

.field private contactPhone_:Ljava/lang/String;

.field private contactWebsite_:Ljava/lang/String;

.field private contentRatingLevel_:I

.field private contentRatingString_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private downloadCountString_:Ljava/lang/String;

.field private downloadCount_:J

.field private downloadInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

.field private everInstalledByUser_:Z

.field private forwardLocked_:Z

.field private hasCategory:Z

.field private hasContactEmail:Z

.field private hasContactPhone:Z

.field private hasContactWebsite:Z

.field private hasContentRatingLevel:Z

.field private hasContentRatingString:Z

.field private hasDescription:Z

.field private hasDownloadCount:Z

.field private hasDownloadCountString:Z

.field private hasDownloadInfo:Z

.field private hasEverInstalledByUser:Z

.field private hasForwardLocked:Z

.field private hasNextPurchaseRefundable:Z

.field private hasNumScreenshots:Z

.field private hasPackageName:Z

.field private hasPromotionalDescription:Z

.field private hasRecentChanges:Z

.field private hasRequiredInstallationSize:Z

.field private hasServerAssetState:Z

.field private hasVideoLink:Z

.field private nextPurchaseRefundable_:Z

.field private numScreenshots_:I

.field private packageDependency_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;",
            ">;"
        }
    .end annotation
.end field

.field private packageName_:Ljava/lang/String;

.field private promotionalDescription_:Ljava/lang/String;

.field private recentChanges_:Ljava/lang/String;

.field private requiredInstallationSize_:J

.field private serverAssetState_:I

.field private videoLink_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2198
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->description_:Ljava/lang/String;

    .line 2346
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadCount_:J

    .line 2362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->applicationPermissionId_:Ljava/util/List;

    .line 2396
    iput-wide v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->requiredInstallationSize_:J

    .line 2413
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageName_:Ljava/lang/String;

    .line 2430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->category_:Ljava/lang/String;

    .line 2447
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->forwardLocked_:Z

    .line 2464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactEmail_:Ljava/lang/String;

    .line 2481
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->everInstalledByUser_:Z

    .line 2498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadCountString_:Ljava/lang/String;

    .line 2515
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactPhone_:Ljava/lang/String;

    .line 2532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactWebsite_:Ljava/lang/String;

    .line 2549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->videoLink_:Ljava/lang/String;

    .line 2566
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->nextPurchaseRefundable_:Z

    .line 2583
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->numScreenshots_:I

    .line 2600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->promotionalDescription_:Ljava/lang/String;

    .line 2617
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contentRatingLevel_:I

    .line 2634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contentRatingString_:Ljava/lang/String;

    .line 2651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->recentChanges_:Ljava/lang/String;

    .line 2668
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->serverAssetState_:I

    .line 2684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageDependency_:Ljava/util/List;

    .line 2718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    .line 2847
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->cachedSize:I

    .line 2198
    return-void
.end method


# virtual methods
.method public addApplicationPermissionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2379
    if-nez p1, :cond_8

    .line 2380
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2382
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->applicationPermissionId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->applicationPermissionId_:Ljava/util/List;

    .line 2385
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->applicationPermissionId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    return-object p0
.end method

.method public addPackageDependency(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2701
    if-nez p1, :cond_8

    .line 2702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2704
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageDependency_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageDependency_:Ljava/util/List;

    .line 2707
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageDependency_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2708
    return-object p0
.end method

.method public getApplicationPermissionIdList()Ljava/util/List;
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
    .line 2365
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->applicationPermissionId_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2850
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 2852
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getSerializedSize()I

    .line 2854
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->cachedSize:I

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->category_:Ljava/lang/String;

    return-object v0
.end method

.method public getContactEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactPhone_:Ljava/lang/String;

    return-object v0
.end method

.method public getContactWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactWebsite_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentRatingLevel()I
    .registers 2

    .prologue
    .line 2618
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contentRatingLevel_:I

    return v0
.end method

.method public getContentRatingString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contentRatingString_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()J
    .registers 3

    .prologue
    .line 2347
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadCount_:J

    return-wide v0
.end method

.method public getDownloadCountString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadCountString_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    .registers 2

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    return-object v0
.end method

.method public getEverInstalledByUser()Z
    .registers 2

    .prologue
    .line 2482
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->everInstalledByUser_:Z

    return v0
.end method

.method public getForwardLocked()Z
    .registers 2

    .prologue
    .line 2448
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->forwardLocked_:Z

    return v0
.end method

.method public getNextPurchaseRefundable()Z
    .registers 2

    .prologue
    .line 2567
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->nextPurchaseRefundable_:Z

    return v0
.end method

.method public getNumScreenshots()I
    .registers 2

    .prologue
    .line 2584
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->numScreenshots_:I

    return v0
.end method

.method public getPackageDependencyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageDependency_:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionalDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->promotionalDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentChanges()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->recentChanges_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredInstallationSize()J
    .registers 3

    .prologue
    .line 2397
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->requiredInstallationSize_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 2859
    const/4 v3, 0x0

    .line 2860
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDescription()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2861
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2864
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCount()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2865
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDownloadCount()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2869
    :cond_23
    const/4 v0, 0x0

    .line 2870
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getApplicationPermissionIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2871
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2c

    .line 2874
    .end local v1           #element:Ljava/lang/String;
    :cond_3e
    add-int/2addr v3, v0

    .line 2875
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getApplicationPermissionIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2877
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRequiredInstallationSize()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2878
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getRequiredInstallationSize()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2881
    :cond_5b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPackageName()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2882
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2885
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasCategory()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2886
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2889
    :cond_7d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasForwardLocked()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2890
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getForwardLocked()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2893
    :cond_8e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactEmail()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 2894
    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContactEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2897
    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasEverInstalledByUser()Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 2898
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getEverInstalledByUser()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2901
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCountString()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 2902
    const/16 v4, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDownloadCountString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2905
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactPhone()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 2906
    const/16 v4, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContactPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2909
    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactWebsite()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 2910
    const/16 v4, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContactWebsite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2913
    :cond_e3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNextPurchaseRefundable()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 2914
    const/16 v4, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getNextPurchaseRefundable()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2917
    :cond_f4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNumScreenshots()Z

    move-result v4

    if-eqz v4, :cond_105

    .line 2918
    const/16 v4, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getNumScreenshots()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2921
    :cond_105
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPromotionalDescription()Z

    move-result v4

    if-eqz v4, :cond_116

    .line 2922
    const/16 v4, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getPromotionalDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2925
    :cond_116
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasServerAssetState()Z

    move-result v4

    if-eqz v4, :cond_127

    .line 2926
    const/16 v4, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getServerAssetState()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2929
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingLevel()Z

    move-result v4

    if-eqz v4, :cond_138

    .line 2930
    const/16 v4, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContentRatingLevel()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2933
    :cond_138
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingString()Z

    move-result v4

    if-eqz v4, :cond_149

    .line 2934
    const/16 v4, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContentRatingString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2937
    :cond_149
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRecentChanges()Z

    move-result v4

    if-eqz v4, :cond_15a

    .line 2938
    const/16 v4, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getRecentChanges()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2941
    :cond_15a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getPackageDependencyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_162
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_176

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    .line 2942
    .local v1, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    const/16 v4, 0x27

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_162

    .line 2945
    .end local v1           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    :cond_176
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasVideoLink()Z

    move-result v4

    if-eqz v4, :cond_187

    .line 2946
    const/16 v4, 0x2b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getVideoLink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2949
    :cond_187
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadInfo()Z

    move-result v4

    if-eqz v4, :cond_198

    .line 2950
    const/16 v4, 0x31

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDownloadInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2953
    :cond_198
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->cachedSize:I

    .line 2954
    return v3
.end method

.method public getServerAssetState()I
    .registers 2

    .prologue
    .line 2670
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->serverAssetState_:I

    return v0
.end method

.method public getVideoLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->videoLink_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory()Z
    .registers 2

    .prologue
    .line 2432
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasCategory:Z

    return v0
.end method

.method public hasContactEmail()Z
    .registers 2

    .prologue
    .line 2466
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactEmail:Z

    return v0
.end method

.method public hasContactPhone()Z
    .registers 2

    .prologue
    .line 2517
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactPhone:Z

    return v0
.end method

.method public hasContactWebsite()Z
    .registers 2

    .prologue
    .line 2534
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactWebsite:Z

    return v0
.end method

.method public hasContentRatingLevel()Z
    .registers 2

    .prologue
    .line 2619
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingLevel:Z

    return v0
.end method

.method public hasContentRatingString()Z
    .registers 2

    .prologue
    .line 2636
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingString:Z

    return v0
.end method

.method public hasDescription()Z
    .registers 2

    .prologue
    .line 2331
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDescription:Z

    return v0
.end method

.method public hasDownloadCount()Z
    .registers 2

    .prologue
    .line 2348
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCount:Z

    return v0
.end method

.method public hasDownloadCountString()Z
    .registers 2

    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCountString:Z

    return v0
.end method

.method public hasDownloadInfo()Z
    .registers 2

    .prologue
    .line 2719
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadInfo:Z

    return v0
.end method

.method public hasEverInstalledByUser()Z
    .registers 2

    .prologue
    .line 2483
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasEverInstalledByUser:Z

    return v0
.end method

.method public hasForwardLocked()Z
    .registers 2

    .prologue
    .line 2449
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasForwardLocked:Z

    return v0
.end method

.method public hasNextPurchaseRefundable()Z
    .registers 2

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNextPurchaseRefundable:Z

    return v0
.end method

.method public hasNumScreenshots()Z
    .registers 2

    .prologue
    .line 2585
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNumScreenshots:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 2415
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPackageName:Z

    return v0
.end method

.method public hasPromotionalDescription()Z
    .registers 2

    .prologue
    .line 2602
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPromotionalDescription:Z

    return v0
.end method

.method public hasRecentChanges()Z
    .registers 2

    .prologue
    .line 2653
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRecentChanges:Z

    return v0
.end method

.method public hasRequiredInstallationSize()Z
    .registers 2

    .prologue
    .line 2398
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRequiredInstallationSize:Z

    return v0
.end method

.method public hasServerAssetState()Z
    .registers 2

    .prologue
    .line 2669
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasServerAssetState:Z

    return v0
.end method

.method public hasVideoLink()Z
    .registers 2

    .prologue
    .line 2551
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasVideoLink:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2962
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2963
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_d0

    .line 2967
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2968
    :sswitch_d
    return-object p0

    .line 2973
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 2977
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setDownloadCount(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 2981
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->addApplicationPermissionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 2985
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setRequiredInstallationSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 2989
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 2993
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setCategory(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 2997
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setForwardLocked(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3001
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setContactEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3005
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setEverInstalledByUser(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3009
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setDownloadCountString(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3013
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setContactPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3017
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setContactWebsite(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3021
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setNextPurchaseRefundable(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3025
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setNumScreenshots(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto :goto_0

    .line 3029
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setPromotionalDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 3033
    :sswitch_87
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setServerAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 3037
    :sswitch_90
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setContentRatingLevel(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 3041
    :sswitch_99
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setContentRatingString(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 3045
    :sswitch_a2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setRecentChanges(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 3049
    :sswitch_ab
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;-><init>()V

    .line 3050
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    const/16 v2, 0x27

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 3051
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->addPackageDependency(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 3055
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    :sswitch_ba
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setVideoLink(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 3059
    :sswitch_c3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;-><init>()V

    .line 3060
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3061
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->setDownloadInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    goto/16 :goto_0

    .line 2963
    :sswitch_data_d0
    .sparse-switch
        0x0 -> :sswitch_d
        0x6a -> :sswitch_e
        0x70 -> :sswitch_16
        0x7a -> :sswitch_1e
        0x80 -> :sswitch_26
        0x8a -> :sswitch_2e
        0x92 -> :sswitch_36
        0x98 -> :sswitch_3e
        0xa2 -> :sswitch_46
        0xa8 -> :sswitch_4e
        0xba -> :sswitch_56
        0xd2 -> :sswitch_5e
        0xda -> :sswitch_66
        0xe0 -> :sswitch_6e
        0xf0 -> :sswitch_76
        0xfa -> :sswitch_7e
        0x110 -> :sswitch_87
        0x120 -> :sswitch_90
        0x12a -> :sswitch_99
        0x132 -> :sswitch_a2
        0x13b -> :sswitch_ab
        0x15a -> :sswitch_ba
        0x18a -> :sswitch_c3
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
    .line 2196
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasCategory:Z

    .line 2435
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->category_:Ljava/lang/String;

    .line 2436
    return-object p0
.end method

.method public setContactEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactEmail:Z

    .line 2469
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactEmail_:Ljava/lang/String;

    .line 2470
    return-object p0
.end method

.method public setContactPhone(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactPhone:Z

    .line 2520
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactPhone_:Ljava/lang/String;

    .line 2521
    return-object p0
.end method

.method public setContactWebsite(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactWebsite:Z

    .line 2537
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contactWebsite_:Ljava/lang/String;

    .line 2538
    return-object p0
.end method

.method public setContentRatingLevel(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingLevel:Z

    .line 2622
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contentRatingLevel_:I

    .line 2623
    return-object p0
.end method

.method public setContentRatingString(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingString:Z

    .line 2639
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->contentRatingString_:Ljava/lang/String;

    .line 2640
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDescription:Z

    .line 2334
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->description_:Ljava/lang/String;

    .line 2335
    return-object p0
.end method

.method public setDownloadCount(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 2350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCount:Z

    .line 2351
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadCount_:J

    .line 2352
    return-object p0
.end method

.method public setDownloadCountString(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCountString:Z

    .line 2503
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadCountString_:Ljava/lang/String;

    .line 2504
    return-object p0
.end method

.method public setDownloadInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2722
    if-nez p1, :cond_8

    .line 2723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2725
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadInfo:Z

    .line 2726
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->downloadInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    .line 2727
    return-object p0
.end method

.method public setEverInstalledByUser(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasEverInstalledByUser:Z

    .line 2486
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->everInstalledByUser_:Z

    .line 2487
    return-object p0
.end method

.method public setForwardLocked(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasForwardLocked:Z

    .line 2452
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->forwardLocked_:Z

    .line 2453
    return-object p0
.end method

.method public setNextPurchaseRefundable(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNextPurchaseRefundable:Z

    .line 2571
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->nextPurchaseRefundable_:Z

    .line 2572
    return-object p0
.end method

.method public setNumScreenshots(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNumScreenshots:Z

    .line 2588
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->numScreenshots_:I

    .line 2589
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPackageName:Z

    .line 2418
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->packageName_:Ljava/lang/String;

    .line 2419
    return-object p0
.end method

.method public setPromotionalDescription(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPromotionalDescription:Z

    .line 2605
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->promotionalDescription_:Ljava/lang/String;

    .line 2606
    return-object p0
.end method

.method public setRecentChanges(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRecentChanges:Z

    .line 2656
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->recentChanges_:Ljava/lang/String;

    .line 2657
    return-object p0
.end method

.method public setRequiredInstallationSize(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 2400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRequiredInstallationSize:Z

    .line 2401
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->requiredInstallationSize_:J

    .line 2402
    return-object p0
.end method

.method public setServerAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasServerAssetState:Z

    .line 2673
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->serverAssetState_:I

    .line 2674
    return-object p0
.end method

.method public setVideoLink(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasVideoLink:Z

    .line 2554
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->videoLink_:Ljava/lang/String;

    .line 2555
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
    .line 2779
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDescription()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2780
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2782
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCount()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2783
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDownloadCount()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2785
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getApplicationPermissionIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2786
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_26

    .line 2788
    .end local v0           #element:Ljava/lang/String;
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRequiredInstallationSize()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2789
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getRequiredInstallationSize()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2791
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPackageName()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 2792
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2794
    :cond_56
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasCategory()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2795
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2797
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasForwardLocked()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2798
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getForwardLocked()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2800
    :cond_74
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactEmail()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 2801
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContactEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2803
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasEverInstalledByUser()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 2804
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getEverInstalledByUser()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2806
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadCountString()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2807
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDownloadCountString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2809
    :cond_a1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactPhone()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2810
    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContactPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2812
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContactWebsite()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 2813
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContactWebsite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2815
    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNextPurchaseRefundable()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 2816
    const/16 v2, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getNextPurchaseRefundable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2818
    :cond_ce
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasNumScreenshots()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 2819
    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getNumScreenshots()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2821
    :cond_dd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasPromotionalDescription()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 2822
    const/16 v2, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getPromotionalDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2824
    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasServerAssetState()Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 2825
    const/16 v2, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getServerAssetState()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2827
    :cond_fb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingLevel()Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 2828
    const/16 v2, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContentRatingLevel()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2830
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasContentRatingString()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 2831
    const/16 v2, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getContentRatingString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2833
    :cond_119
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasRecentChanges()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 2834
    const/16 v2, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getRecentChanges()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2836
    :cond_128
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getPackageDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_130
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    .line 2837
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    const/16 v2, 0x27

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_130

    .line 2839
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    :cond_142
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasVideoLink()Z

    move-result v2

    if-eqz v2, :cond_151

    .line 2840
    const/16 v2, 0x2b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getVideoLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2842
    :cond_151
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->hasDownloadInfo()Z

    move-result v2

    if-eqz v2, :cond_160

    .line 2843
    const/16 v2, 0x31

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;->getDownloadInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$DownloadInfoProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2845
    :cond_160
    return-void
.end method
