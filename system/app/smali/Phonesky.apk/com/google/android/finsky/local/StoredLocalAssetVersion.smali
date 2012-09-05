.class Lcom/google/android/finsky/local/StoredLocalAssetVersion;
.super Ljava/lang/Object;
.source "StoredLocalAssetVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/StoredLocalAssetVersion$1;
    }
.end annotation


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private volatile mDeleted:Z

.field private mDownloadPendingTime:J

.field private mDownloadTime:J

.field private mForwardLocked:Z

.field private mInstallTime:J

.field private mMainObb:Lcom/google/android/finsky/download/obb/Obb;

.field private final mPackageName:Ljava/lang/String;

.field private mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

.field private mPreviousState:Lcom/google/android/finsky/local/AssetState;

.field private mReferrer:Ljava/lang/String;

.field private mRefundPeriodEndTime:Ljava/lang/Long;

.field private mSignature:Ljava/lang/String;

.field private mSize:J

.field private mSource:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/local/AssetState;

.field private final mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

.field private mUninstallTime:J

.field private final mVersionCode:I

.field private final mWriter:Lcom/google/android/finsky/local/Writer;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/local/LocalAssetVersionRecord;Lcom/google/android/finsky/local/Writer;Lcom/google/android/finsky/local/MemoryAssetStore;)V
    .registers 6
    .parameter "a"
    .parameter "queue"
    .parameter "store"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDeleted:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    .line 62
    iput-object p3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    .line 63
    iput-object p2, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mWriter:Lcom/google/android/finsky/local/Writer;

    .line 65
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mVersionCode:I

    .line 67
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    .line 70
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getDownloadPendingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    .line 71
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getDownloadTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    .line 72
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    .line 73
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getUninstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    .line 74
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->isForwardLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    .line 77
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    .line 78
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getReferrer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getMainObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getPatchObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 82
    return-void
.end method

.method private safetyCheck()V
    .registers 3

    .prologue
    .line 100
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 102
    iget-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDeleted:Z

    if-eqz v0, :cond_f

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write to or read from a deleted asset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_f
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    if-ne p0, p1, :cond_5

    .line 425
    :cond_4
    :goto_4
    return v1

    .line 350
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 351
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 354
    check-cast v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 356
    .local v0, that:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    iget-boolean v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDeleted:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDeleted:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    .line 357
    goto :goto_4

    .line 359
    :cond_1e
    iget-wide v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    move v1, v2

    .line 360
    goto :goto_4

    .line 362
    :cond_28
    iget-wide v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_32

    move v1, v2

    .line 363
    goto :goto_4

    .line 365
    :cond_32
    iget-boolean v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    if-eq v3, v4, :cond_3a

    move v1, v2

    .line 366
    goto :goto_4

    .line 368
    :cond_3a
    iget-wide v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_44

    move v1, v2

    .line 369
    goto :goto_4

    .line 371
    :cond_44
    iget-wide v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4e

    move v1, v2

    .line 372
    goto :goto_4

    .line 374
    :cond_4e
    iget-wide v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_58

    move v1, v2

    .line 375
    goto :goto_4

    .line 377
    :cond_58
    iget v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mVersionCode:I

    iget v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mVersionCode:I

    if-eq v3, v4, :cond_60

    move v1, v2

    .line 378
    goto :goto_4

    .line 380
    :cond_60
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    :cond_6e
    move v1, v2

    .line 381
    goto :goto_4

    .line 380
    :cond_70
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    if-nez v3, :cond_6e

    .line 383
    :cond_74
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    :cond_82
    move v1, v2

    .line 385
    goto :goto_4

    .line 383
    :cond_84
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    if-nez v3, :cond_82

    .line 387
    :cond_88
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    :cond_96
    move v1, v2

    .line 388
    goto/16 :goto_4

    .line 387
    :cond_99
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v3, :cond_96

    .line 390
    :cond_9d
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b2

    :cond_ab
    move v1, v2

    .line 392
    goto/16 :goto_4

    .line 390
    :cond_ae
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_ab

    .line 394
    :cond_b2
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_c3

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c7

    :cond_c0
    move v1, v2

    .line 395
    goto/16 :goto_4

    .line 394
    :cond_c3
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v3, :cond_c0

    .line 397
    :cond_c7
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    if-eqz v3, :cond_d8

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    :cond_d5
    move v1, v2

    .line 399
    goto/16 :goto_4

    .line 397
    :cond_d8
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    if-nez v3, :cond_d5

    .line 401
    :cond_dc
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f1

    :cond_ea
    move v1, v2

    .line 402
    goto/16 :goto_4

    .line 401
    :cond_ed
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    if-nez v3, :cond_ea

    .line 404
    :cond_f1
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    if-eqz v3, :cond_102

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_106

    :cond_ff
    move v1, v2

    .line 406
    goto/16 :goto_4

    .line 404
    :cond_102
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    if-nez v3, :cond_ff

    .line 408
    :cond_106
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    if-eqz v3, :cond_117

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11b

    :cond_114
    move v1, v2

    .line 410
    goto/16 :goto_4

    .line 408
    :cond_117
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    if-nez v3, :cond_114

    .line 412
    :cond_11b
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    if-eqz v3, :cond_12c

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_130

    :cond_129
    move v1, v2

    .line 413
    goto/16 :goto_4

    .line 412
    :cond_12c
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    if-nez v3, :cond_129

    .line 415
    :cond_130
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    if-eqz v3, :cond_141

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_145

    :cond_13e
    move v1, v2

    .line 416
    goto/16 :goto_4

    .line 415
    :cond_141
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    if-nez v3, :cond_13e

    .line 418
    :cond_145
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    if-eqz v3, :cond_156

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15a

    :cond_153
    move v1, v2

    .line 419
    goto/16 :goto_4

    .line 418
    :cond_156
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    if-nez v3, :cond_153

    .line 421
    :cond_15a
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mWriter:Lcom/google/android/finsky/local/Writer;

    if-eqz v3, :cond_16b

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mWriter:Lcom/google/android/finsky/local/Writer;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_168
    move v1, v2

    .line 422
    goto/16 :goto_4

    .line 421
    :cond_16b
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mWriter:Lcom/google/android/finsky/local/Writer;

    if-eqz v3, :cond_4

    goto :goto_168
.end method

.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getInstallTime()J
    .registers 3

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 282
    iget-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    return-wide v0
.end method

.method public getObb(Z)Lcom/google/android/finsky/download/obb/Obb;
    .registers 3
    .parameter "isPatch"

    .prologue
    .line 247
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_4
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundPeriodEndTime()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 267
    iget-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    return-wide v0
.end method

.method public getState()Lcom/google/android/finsky/local/AssetState;
    .registers 2

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 252
    iget v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 429
    iget-boolean v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDeleted:Z

    if-eqz v3, :cond_bf

    move v0, v1

    .line 430
    .local v0, result:I
    :goto_9
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int v0, v4, v3

    .line 431
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mVersionCode:I

    add-int v0, v3, v4

    .line 432
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    if-eqz v3, :cond_c5

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_29
    add-int v0, v4, v3

    .line 433
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3}, Lcom/google/android/finsky/local/AssetState;->hashCode()I

    move-result v3

    :goto_37
    add-int v0, v4, v3

    .line 434
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    iget-wide v6, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 435
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    iget-wide v6, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 436
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    iget-wide v6, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 437
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    iget-wide v6, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 438
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    iget-wide v6, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 439
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    if-eqz v3, :cond_cb

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7c
    add-int v0, v4, v3

    .line 440
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    if-eqz v3, :cond_cd

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    :goto_8a
    add-int v0, v4, v3

    .line 441
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    if-eqz v4, :cond_cf

    :goto_92
    add-int v0, v3, v1

    .line 442
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_a0
    add-int v0, v3, v1

    .line 443
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_ae
    add-int v0, v3, v1

    .line 444
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    if-eqz v3, :cond_bc

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_bc
    add-int v0, v1, v2

    .line 445
    return v0

    .end local v0           #result:I
    :cond_bf
    move v0, v2

    .line 429
    goto/16 :goto_9

    .restart local v0       #result:I
    :cond_c2
    move v3, v2

    .line 430
    goto/16 :goto_15

    :cond_c5
    move v3, v2

    .line 432
    goto/16 :goto_29

    :cond_c8
    move v3, v2

    .line 433
    goto/16 :goto_37

    :cond_cb
    move v3, v2

    .line 439
    goto :goto_7c

    :cond_cd
    move v3, v2

    .line 440
    goto :goto_8a

    :cond_cf
    move v1, v2

    .line 441
    goto :goto_92

    :cond_d1
    move v1, v2

    .line 442
    goto :goto_a0

    :cond_d3
    move v1, v2

    .line 443
    goto :goto_ae
.end method

.method public isForwardLocked()Z
    .registers 2

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 302
    iget-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    return v0
.end method

.method protected markDeleted()V
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDeleted:Z

    .line 97
    return-void
.end method

.method public resetDownloadPendingState()V
    .registers 4

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion$1;->$SwitchMap$com$google$android$finsky$local$AssetState:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/local/AssetState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time to reset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " download state. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/local/AssetState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_44
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 137
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 140
    :pswitch_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setDownloadPendingTime(J)V

    .line 147
    return-void

    .line 134
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_44
        :pswitch_4e
    .end packed-switch
.end method

.method public resetInstalledState()V
    .registers 5

    .prologue
    .line 154
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    .line 155
    iget-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    .line 158
    :cond_12
    return-void
.end method

.method public resetInstallingState()V
    .registers 2

    .prologue
    .line 150
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    .line 151
    return-void
.end method

.method public resetUninstalledState()V
    .registers 5

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    .line 162
    iget-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    .line 165
    :cond_12
    return-void
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "contentUri"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 213
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    .line 214
    return-void
.end method

.method public setDownloadPendingTime(J)V
    .registers 3
    .parameter "downloadPendingTime"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 174
    iput-wide p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    .line 175
    return-void
.end method

.method public setDownloadTime(J)V
    .registers 3
    .parameter "downloadTime"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 179
    iput-wide p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    .line 180
    return-void
.end method

.method public setForwardLocked(Z)V
    .registers 2
    .parameter "forwardLocked"

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 218
    iput-boolean p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    .line 219
    return-void
.end method

.method public setInstallTime(J)V
    .registers 3
    .parameter "installTime"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 198
    iput-wide p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    .line 199
    return-void
.end method

.method public setObb(ZLcom/google/android/finsky/download/obb/Obb;)V
    .registers 5
    .parameter "isPatch"
    .parameter "obb"

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 185
    if-nez p2, :cond_13

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object p2

    .line 187
    const-string v0, "Attempting to set null obb"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_13
    if-eqz p1, :cond_18

    .line 190
    iput-object p2, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 194
    :goto_17
    return-void

    .line 192
    :cond_18
    iput-object p2, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_17
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 2
    .parameter "referrer"

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 228
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setRefundPeriodEndTime(Ljava/lang/Long;)V
    .registers 2
    .parameter "refundPeriodEndTime"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 223
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    .line 224
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2
    .parameter "signature"

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 208
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 169
    iput-wide p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    .line 170
    return-void
.end method

.method public setState(Lcom/google/android/finsky/local/AssetState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/local/AssetState;->isValidTransition(Lcom/google/android/finsky/local/AssetState;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 125
    const-string v0, "Invalid transition: from %s to %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3}, Lcom/google/android/finsky/local/AssetState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/local/AssetState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_23
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    .line 128
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    .line 129
    return-void
.end method

.method public setUninstallTime(J)V
    .registers 3
    .parameter "uninstallTime"

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 203
    iput-wide p1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    .line 204
    return-void
.end method

.method public toRecord()Lcom/google/android/finsky/local/LocalAssetVersionRecord;
    .registers 25

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 86
    new-instance v1, Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mVersionCode:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    move-object/from16 v23, v0

    invoke-direct/range {v1 .. v23}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoredLocalAssetVersion{\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " previousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " assetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downloadPendingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadPendingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mDownloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " installTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mInstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uninstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mUninstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forwardLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mForwardLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refundPeriodEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mRefundPeriodEndTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mainObb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " patchObb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeThrough()V
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->safetyCheck()V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->toRecord()Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/Writer;->insert(Lcom/google/android/finsky/local/Writable;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->mPreviousState:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {v0, p0, v1}, Lcom/google/android/finsky/local/MemoryAssetStore;->notifyAssetVersionChanged(Lcom/google/android/finsky/local/StoredLocalAssetVersion;Lcom/google/android/finsky/local/AssetState;)V

    .line 116
    return-void
.end method
