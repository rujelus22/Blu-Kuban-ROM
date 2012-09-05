.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalAssetProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;,
        Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    }
.end annotation


# instance fields
.field private actualSellerPrice_:Ljava/lang/String;

.field private appBadge_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;",
            ">;"
        }
    .end annotation
.end field

.field private assetType_:I

.field private averageRating_:Ljava/lang/String;

.field private bundledAsset_:Z

.field private cachedSize:I

.field private extendedInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

.field private filterReason_:Ljava/lang/String;

.field private hasActualSellerPrice:Z

.field private hasAssetType:Z

.field private hasAverageRating:Z

.field private hasBundledAsset:Z

.field private hasExtendedInfo:Z

.field private hasFilterReason:Z

.field private hasId:Z

.field private hasNumRatings:Z

.field private hasOwner:Z

.field private hasOwnerId:Z

.field private hasPackageName:Z

.field private hasPrice:Z

.field private hasPriceCurrency:Z

.field private hasPriceMicros:Z

.field private hasPurchaseInformation:Z

.field private hasTitle:Z

.field private hasVersion:Z

.field private hasVersionCode:Z

.field private id_:Ljava/lang/String;

.field private numRatings_:J

.field private ownerBadge_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;",
            ">;"
        }
    .end annotation
.end field

.field private ownerId_:Ljava/lang/String;

.field private owner_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;

.field private priceCurrency_:Ljava/lang/String;

.field private priceMicros_:J

.field private price_:Ljava/lang/String;

.field private purchaseInformation_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

.field private title_:Ljava/lang/String;

.field private versionCode_:I

.field private version_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1928
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3002
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->id_:Ljava/lang/String;

    .line 3019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->title_:Ljava/lang/String;

    .line 3036
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->assetType_:I

    .line 3053
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerId_:Ljava/lang/String;

    .line 3070
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->owner_:Ljava/lang/String;

    .line 3087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->version_:Ljava/lang/String;

    .line 3104
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->versionCode_:I

    .line 3121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->price_:Ljava/lang/String;

    .line 3138
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->actualSellerPrice_:Ljava/lang/String;

    .line 3155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->averageRating_:Ljava/lang/String;

    .line 3172
    iput-wide v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->numRatings_:J

    .line 3189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->packageName_:Ljava/lang/String;

    .line 3206
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->bundledAsset_:Z

    .line 3223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceCurrency_:Ljava/lang/String;

    .line 3240
    iput-wide v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceMicros_:J

    .line 3257
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->purchaseInformation_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    .line 3277
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->extendedInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    .line 3297
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->filterReason_:Ljava/lang/String;

    .line 3313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    .line 3346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    .line 3487
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    .line 1928
    return-void
.end method


# virtual methods
.method public addAppBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3330
    if-nez p1, :cond_8

    .line 3331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3333
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    .line 3336
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3337
    return-object p0
.end method

.method public addOwnerBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3363
    if-nez p1, :cond_8

    .line 3364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3366
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    .line 3369
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3370
    return-object p0
.end method

.method public getActualSellerPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->actualSellerPrice_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBadgeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    return-object v0
.end method

.method public getAssetType()I
    .registers 2

    .prologue
    .line 3038
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->assetType_:I

    return v0
.end method

.method public getAverageRating()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->averageRating_:Ljava/lang/String;

    return-object v0
.end method

.method public getBundledAsset()Z
    .registers 2

    .prologue
    .line 3207
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->bundledAsset_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 3489
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 3491
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getSerializedSize()I

    .line 3493
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    return v0
.end method

.method public getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 2

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->extendedInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    return-object v0
.end method

.method public getFilterReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->filterReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRatings()J
    .registers 3

    .prologue
    .line 3173
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->numRatings_:J

    return-wide v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->owner_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerBadgeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->price_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .registers 3

    .prologue
    .line 3241
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceMicros_:J

    return-wide v0
.end method

.method public getPurchaseInformation()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .registers 2

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->purchaseInformation_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 3497
    const/4 v2, 0x0

    .line 3498
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3499
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3502
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3503
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3506
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3507
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAssetType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3510
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 3511
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3514
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 3515
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3518
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 3519
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3522
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 3523
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAverageRating()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3526
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 3527
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getNumRatings()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3530
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 3531
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPurchaseInformation()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3534
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 3535
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3538
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 3539
    const/16 v3, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3542
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 3543
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3546
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersionCode()Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 3547
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersionCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3550
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset()Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 3551
    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getBundledAsset()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3554
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency()Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 3555
    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3558
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 3559
    const/16 v3, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceMicros()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3562
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason()Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 3563
    const/16 v3, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getFilterReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3566
    :cond_11b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 3567
    const/16 v3, 0x28

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getActualSellerPrice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3570
    :cond_12c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAppBadgeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_134
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    .line 3571
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v3, 0x2f

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_134

    .line 3574
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :cond_148
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwnerBadgeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_150
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_164

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    .line 3575
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v3, 0x30

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_150

    .line 3578
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :cond_164
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    .line 3579
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3088
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 3105
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->versionCode_:I

    return v0
.end method

.method public hasActualSellerPrice()Z
    .registers 2

    .prologue
    .line 3140
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice:Z

    return v0
.end method

.method public hasAssetType()Z
    .registers 2

    .prologue
    .line 3037
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType:Z

    return v0
.end method

.method public hasAverageRating()Z
    .registers 2

    .prologue
    .line 3157
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating:Z

    return v0
.end method

.method public hasBundledAsset()Z
    .registers 2

    .prologue
    .line 3208
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset:Z

    return v0
.end method

.method public hasExtendedInfo()Z
    .registers 2

    .prologue
    .line 3278
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo:Z

    return v0
.end method

.method public hasFilterReason()Z
    .registers 2

    .prologue
    .line 3299
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason:Z

    return v0
.end method

.method public hasId()Z
    .registers 2

    .prologue
    .line 3004
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId:Z

    return v0
.end method

.method public hasNumRatings()Z
    .registers 2

    .prologue
    .line 3174
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings:Z

    return v0
.end method

.method public hasOwner()Z
    .registers 2

    .prologue
    .line 3072
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner:Z

    return v0
.end method

.method public hasOwnerId()Z
    .registers 2

    .prologue
    .line 3055
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 3191
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName:Z

    return v0
.end method

.method public hasPrice()Z
    .registers 2

    .prologue
    .line 3123
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice:Z

    return v0
.end method

.method public hasPriceCurrency()Z
    .registers 2

    .prologue
    .line 3225
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency:Z

    return v0
.end method

.method public hasPriceMicros()Z
    .registers 2

    .prologue
    .line 3242
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros:Z

    return v0
.end method

.method public hasPurchaseInformation()Z
    .registers 2

    .prologue
    .line 3258
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 3021
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle:Z

    return v0
.end method

.method public hasVersion()Z
    .registers 2

    .prologue
    .line 3089
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 3106
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3587
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_ca

    .line 3591
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3592
    :sswitch_d
    return-object p0

    .line 3597
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3601
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3605
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3609
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setOwner(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3613
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3617
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3621
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setAverageRating(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3625
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setNumRatings(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3629
    :sswitch_4e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;-><init>()V

    .line 3630
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 3631
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPurchaseInformation(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3635
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    :sswitch_5c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;-><init>()V

    .line 3636
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 3637
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setExtendedInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3641
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setOwnerId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3645
    :sswitch_72
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3649
    :sswitch_7a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3653
    :sswitch_83
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setBundledAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3657
    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3661
    :sswitch_95
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3665
    :sswitch_9e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setFilterReason(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3669
    :sswitch_a7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setActualSellerPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3673
    :sswitch_b0
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;-><init>()V

    .line 3674
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3675
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->addAppBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3679
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :sswitch_bd
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;-><init>()V

    .line 3680
    .restart local v1       #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3681
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->addOwnerBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3587
    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x40 -> :sswitch_46
        0x4b -> :sswitch_4e
        0x63 -> :sswitch_5c
        0xb2 -> :sswitch_6a
        0xc2 -> :sswitch_72
        0xc8 -> :sswitch_7a
        0xe8 -> :sswitch_83
        0x102 -> :sswitch_8c
        0x108 -> :sswitch_95
        0x11a -> :sswitch_9e
        0x142 -> :sswitch_a7
        0x17a -> :sswitch_b0
        0x182 -> :sswitch_bd
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
    .line 1926
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v0

    return-object v0
.end method

.method public setActualSellerPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice:Z

    .line 3143
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->actualSellerPrice_:Ljava/lang/String;

    .line 3144
    return-object p0
.end method

.method public setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType:Z

    .line 3041
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->assetType_:I

    .line 3042
    return-object p0
.end method

.method public setAverageRating(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating:Z

    .line 3160
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->averageRating_:Ljava/lang/String;

    .line 3161
    return-object p0
.end method

.method public setBundledAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset:Z

    .line 3211
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->bundledAsset_:Z

    .line 3212
    return-object p0
.end method

.method public setExtendedInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3281
    if-nez p1, :cond_8

    .line 3282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3284
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo:Z

    .line 3285
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->extendedInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    .line 3286
    return-object p0
.end method

.method public setFilterReason(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason:Z

    .line 3302
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->filterReason_:Ljava/lang/String;

    .line 3303
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId:Z

    .line 3007
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->id_:Ljava/lang/String;

    .line 3008
    return-object p0
.end method

.method public setNumRatings(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 3176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings:Z

    .line 3177
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->numRatings_:J

    .line 3178
    return-object p0
.end method

.method public setOwner(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner:Z

    .line 3075
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->owner_:Ljava/lang/String;

    .line 3076
    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId:Z

    .line 3058
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerId_:Ljava/lang/String;

    .line 3059
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName:Z

    .line 3194
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->packageName_:Ljava/lang/String;

    .line 3195
    return-object p0
.end method

.method public setPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice:Z

    .line 3126
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->price_:Ljava/lang/String;

    .line 3127
    return-object p0
.end method

.method public setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency:Z

    .line 3228
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceCurrency_:Ljava/lang/String;

    .line 3229
    return-object p0
.end method

.method public setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 3244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros:Z

    .line 3245
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceMicros_:J

    .line 3246
    return-object p0
.end method

.method public setPurchaseInformation(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3261
    if-nez p1, :cond_8

    .line 3262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3264
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation:Z

    .line 3265
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->purchaseInformation_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    .line 3266
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle:Z

    .line 3024
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->title_:Ljava/lang/String;

    .line 3025
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion:Z

    .line 3092
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->version_:Ljava/lang/String;

    .line 3093
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersionCode:Z

    .line 3109
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->versionCode_:I

    .line 3110
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
    .line 3425
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3426
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3428
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3429
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3431
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3432
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAssetType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3434
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3435
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3437
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3438
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3440
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3441
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3443
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 3444
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAverageRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3446
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 3447
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getNumRatings()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 3449
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 3450
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPurchaseInformation()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3452
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 3453
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3455
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 3456
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3458
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 3459
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3461
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersionCode()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 3462
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3464
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 3465
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getBundledAsset()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3467
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 3468
    const/16 v2, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3470
    :cond_da
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 3471
    const/16 v2, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 3473
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 3474
    const/16 v2, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getFilterReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3476
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 3477
    const/16 v2, 0x28

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getActualSellerPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3479
    :cond_107
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAppBadgeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_121

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    .line 3480
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_10f

    .line 3482
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :cond_121
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwnerBadgeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_129
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    .line 3483
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_129

    .line 3485
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :cond_13b
    return-void
.end method
