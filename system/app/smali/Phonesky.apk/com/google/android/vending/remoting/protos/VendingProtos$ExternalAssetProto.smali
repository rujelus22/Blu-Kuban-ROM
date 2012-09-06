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

    .line 1998
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3084
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->id_:Ljava/lang/String;

    .line 3101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->title_:Ljava/lang/String;

    .line 3118
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->assetType_:I

    .line 3135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerId_:Ljava/lang/String;

    .line 3152
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->owner_:Ljava/lang/String;

    .line 3169
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->version_:Ljava/lang/String;

    .line 3186
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->versionCode_:I

    .line 3203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->price_:Ljava/lang/String;

    .line 3220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->actualSellerPrice_:Ljava/lang/String;

    .line 3237
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->averageRating_:Ljava/lang/String;

    .line 3254
    iput-wide v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->numRatings_:J

    .line 3271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->packageName_:Ljava/lang/String;

    .line 3288
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->bundledAsset_:Z

    .line 3305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceCurrency_:Ljava/lang/String;

    .line 3322
    iput-wide v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceMicros_:J

    .line 3339
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->purchaseInformation_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    .line 3359
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->extendedInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    .line 3379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->filterReason_:Ljava/lang/String;

    .line 3395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    .line 3428
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    .line 3570
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    .line 1998
    return-void
.end method


# virtual methods
.method public addAppBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3412
    if-nez p1, :cond_8

    .line 3413
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3415
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    .line 3418
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3419
    return-object p0
.end method

.method public addOwnerBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3445
    if-nez p1, :cond_8

    .line 3446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3448
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    .line 3451
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3452
    return-object p0
.end method

.method public getActualSellerPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3221
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
    .line 3398
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->appBadge_:Ljava/util/List;

    return-object v0
.end method

.method public getAssetType()I
    .registers 2

    .prologue
    .line 3120
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->assetType_:I

    return v0
.end method

.method public getAverageRating()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->averageRating_:Ljava/lang/String;

    return-object v0
.end method

.method public getBundledAsset()Z
    .registers 2

    .prologue
    .line 3289
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->bundledAsset_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 3573
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 3575
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getSerializedSize()I

    .line 3577
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    return v0
.end method

.method public getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    .registers 2

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->extendedInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    return-object v0
.end method

.method public getFilterReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->filterReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRatings()J
    .registers 3

    .prologue
    .line 3255
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->numRatings_:J

    return-wide v0
.end method

.method public getOwner()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3153
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
    .line 3431
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerBadge_:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3136
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3204
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->price_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .registers 3

    .prologue
    .line 3323
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceMicros_:J

    return-wide v0
.end method

.method public getPurchaseInformation()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    .registers 2

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->purchaseInformation_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 3582
    const/4 v2, 0x0

    .line 3583
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3584
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3587
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3588
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3591
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3592
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAssetType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3595
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 3596
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3599
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 3600
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3603
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 3604
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3607
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 3608
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAverageRating()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3611
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 3612
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getNumRatings()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3615
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 3616
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPurchaseInformation()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3619
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 3620
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3623
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 3624
    const/16 v3, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3627
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 3628
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3631
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersionCode()Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 3632
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersionCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3635
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset()Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 3636
    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getBundledAsset()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3639
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency()Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 3640
    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3643
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 3644
    const/16 v3, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceMicros()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3647
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason()Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 3648
    const/16 v3, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getFilterReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3651
    :cond_11b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 3652
    const/16 v3, 0x28

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getActualSellerPrice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3655
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

    .line 3656
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v3, 0x2f

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_134

    .line 3659
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

    .line 3660
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v3, 0x30

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_150

    .line 3663
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :cond_164
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->cachedSize:I

    .line 3664
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 3187
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->versionCode_:I

    return v0
.end method

.method public hasActualSellerPrice()Z
    .registers 2

    .prologue
    .line 3222
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice:Z

    return v0
.end method

.method public hasAssetType()Z
    .registers 2

    .prologue
    .line 3119
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType:Z

    return v0
.end method

.method public hasAverageRating()Z
    .registers 2

    .prologue
    .line 3239
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating:Z

    return v0
.end method

.method public hasBundledAsset()Z
    .registers 2

    .prologue
    .line 3290
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset:Z

    return v0
.end method

.method public hasExtendedInfo()Z
    .registers 2

    .prologue
    .line 3360
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo:Z

    return v0
.end method

.method public hasFilterReason()Z
    .registers 2

    .prologue
    .line 3381
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason:Z

    return v0
.end method

.method public hasId()Z
    .registers 2

    .prologue
    .line 3086
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId:Z

    return v0
.end method

.method public hasNumRatings()Z
    .registers 2

    .prologue
    .line 3256
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings:Z

    return v0
.end method

.method public hasOwner()Z
    .registers 2

    .prologue
    .line 3154
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner:Z

    return v0
.end method

.method public hasOwnerId()Z
    .registers 2

    .prologue
    .line 3137
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 3273
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName:Z

    return v0
.end method

.method public hasPrice()Z
    .registers 2

    .prologue
    .line 3205
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice:Z

    return v0
.end method

.method public hasPriceCurrency()Z
    .registers 2

    .prologue
    .line 3307
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency:Z

    return v0
.end method

.method public hasPriceMicros()Z
    .registers 2

    .prologue
    .line 3324
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros:Z

    return v0
.end method

.method public hasPurchaseInformation()Z
    .registers 2

    .prologue
    .line 3340
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 3103
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle:Z

    return v0
.end method

.method public hasVersion()Z
    .registers 2

    .prologue
    .line 3171
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 3188
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
    .line 3672
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3673
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_ca

    .line 3677
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3678
    :sswitch_d
    return-object p0

    .line 3683
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3687
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3691
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3695
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setOwner(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3699
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3703
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3707
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setAverageRating(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3711
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setNumRatings(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3715
    :sswitch_4e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;-><init>()V

    .line 3716
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 3717
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPurchaseInformation(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3721
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;
    :sswitch_5c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;-><init>()V

    .line 3722
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 3723
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setExtendedInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3727
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setOwnerId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3731
    :sswitch_72
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto :goto_0

    .line 3735
    :sswitch_7a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3739
    :sswitch_83
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setBundledAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3743
    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3747
    :sswitch_95
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3751
    :sswitch_9e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setFilterReason(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3755
    :sswitch_a7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->setActualSellerPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3759
    :sswitch_b0
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;-><init>()V

    .line 3760
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3761
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->addAppBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3765
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :sswitch_bd
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;-><init>()V

    .line 3766
    .restart local v1       #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3767
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->addOwnerBadge(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    goto/16 :goto_0

    .line 3673
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
    .line 1996
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    move-result-object v0

    return-object v0
.end method

.method public setActualSellerPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice:Z

    .line 3225
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->actualSellerPrice_:Ljava/lang/String;

    .line 3226
    return-object p0
.end method

.method public setAssetType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType:Z

    .line 3123
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->assetType_:I

    .line 3124
    return-object p0
.end method

.method public setAverageRating(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating:Z

    .line 3242
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->averageRating_:Ljava/lang/String;

    .line 3243
    return-object p0
.end method

.method public setBundledAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset:Z

    .line 3293
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->bundledAsset_:Z

    .line 3294
    return-object p0
.end method

.method public setExtendedInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
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
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo:Z

    .line 3367
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->extendedInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    .line 3368
    return-object p0
.end method

.method public setFilterReason(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason:Z

    .line 3384
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->filterReason_:Ljava/lang/String;

    .line 3385
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId:Z

    .line 3089
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->id_:Ljava/lang/String;

    .line 3090
    return-object p0
.end method

.method public setNumRatings(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 3258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings:Z

    .line 3259
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->numRatings_:J

    .line 3260
    return-object p0
.end method

.method public setOwner(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner:Z

    .line 3157
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->owner_:Ljava/lang/String;

    .line 3158
    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId:Z

    .line 3140
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->ownerId_:Ljava/lang/String;

    .line 3141
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName:Z

    .line 3276
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->packageName_:Ljava/lang/String;

    .line 3277
    return-object p0
.end method

.method public setPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice:Z

    .line 3208
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->price_:Ljava/lang/String;

    .line 3209
    return-object p0
.end method

.method public setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency:Z

    .line 3310
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceCurrency_:Ljava/lang/String;

    .line 3311
    return-object p0
.end method

.method public setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 3326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros:Z

    .line 3327
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->priceMicros_:J

    .line 3328
    return-object p0
.end method

.method public setPurchaseInformation(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3343
    if-nez p1, :cond_8

    .line 3344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3346
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation:Z

    .line 3347
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->purchaseInformation_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    .line 3348
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle:Z

    .line 3106
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->title_:Ljava/lang/String;

    .line 3107
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion:Z

    .line 3174
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->version_:Ljava/lang/String;

    .line 3175
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 3190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersionCode:Z

    .line 3191
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->versionCode_:I

    .line 3192
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
    .line 3508
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasId()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3509
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3511
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3512
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3514
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAssetType()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3515
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAssetType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3517
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwner()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 3518
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3520
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3521
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3523
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPrice()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3524
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3526
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasAverageRating()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 3527
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getAverageRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3529
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasNumRatings()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 3530
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getNumRatings()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 3532
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPurchaseInformation()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 3533
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPurchaseInformation()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$PurchaseInformation;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3535
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasExtendedInfo()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 3536
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getExtendedInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3538
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasOwnerId()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 3539
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3541
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPackageName()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 3542
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3544
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasVersionCode()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 3545
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3547
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasBundledAsset()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 3548
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getBundledAsset()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3550
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceCurrency()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 3551
    const/16 v2, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3553
    :cond_da
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasPriceMicros()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 3554
    const/16 v2, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getPriceMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 3556
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasFilterReason()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 3557
    const/16 v2, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getFilterReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3559
    :cond_f8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->hasActualSellerPrice()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 3560
    const/16 v2, 0x28

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;->getActualSellerPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3562
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

    .line 3563
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_10f

    .line 3565
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

    .line 3566
    .restart local v0       #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_129

    .line 3568
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalBadgeProto;
    :cond_13b
    return-void
.end method
