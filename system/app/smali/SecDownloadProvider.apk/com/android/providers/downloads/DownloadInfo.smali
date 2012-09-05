.class public Lcom/android/providers/downloads/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadInfo$1;,
        Lcom/android/providers/downloads/DownloadInfo$Reader;
    }
.end annotation


# instance fields
.field public mAllowRoaming:Z

.field public mAllowedNetworkTypes:I

.field public mBypassRecommendedSizeLimit:I

.field public mClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:J

.field public mDeleted:Z

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public mHint:Ljava/lang/String;

.field public mId:J

.field public mIsPublicApi:Z

.field public mLastMod:J

.field public mMediaProviderUri:Ljava/lang/String;

.field public mMediaScanned:I

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNumFailed:I

.field public mPackage:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRetryAfter:I

.field public mStatus:I

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUid:I

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .registers 5
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 233
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    .line 234
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 235
    sget-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .registers 6
    .parameter "networkType"

    .prologue
    .line 399
    iget-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v2, :cond_19

    .line 400
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->translateNetworkTypeToApiFlag(I)I

    move-result v1

    .line 401
    .local v1, flag:I
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    const/4 v0, 0x1

    .line 402
    .local v0, allowAllNetworkTypes:Z
    :goto_e
    if-nez v0, :cond_19

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    and-int/2addr v2, v1

    if-nez v2, :cond_19

    .line 403
    const/4 v2, 0x6

    .line 406
    .end local v0           #allowAllNetworkTypes:Z
    .end local v1           #flag:I
    :goto_16
    return v2

    .line 401
    .restart local v1       #flag:I
    :cond_17
    const/4 v0, 0x0

    goto :goto_e

    .line 406
    .end local v1           #flag:I
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->checkSizeAllowedForNetwork(I)I

    move-result v2

    goto :goto_16
.end method

.method private checkSizeAllowedForNetwork(I)I
    .registers 9
    .parameter "networkType"

    .prologue
    const/4 v2, 0x1

    .line 437
    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_a

    .line 454
    :cond_9
    :goto_9
    return v2

    .line 440
    :cond_a
    if-eq p1, v2, :cond_9

    const/16 v3, 0xd

    if-eq p1, v3, :cond_9

    .line 443
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->getMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v0

    .line 444
    .local v0, maxBytesOverMobile:Ljava/lang/Long;
    if-eqz v0, :cond_24

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_24

    .line 445
    const/4 v2, 0x3

    goto :goto_9

    .line 447
    :cond_24
    iget v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    if-nez v3, :cond_9

    .line 448
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->getRecommendedMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v1

    .line 449
    .local v1, recommendedMaxBytesOverMobile:Ljava/lang/Long;
    if-eqz v1, :cond_9

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    .line 451
    const/4 v2, 0x4

    goto :goto_9
.end method

.method private isReadyToStart(J)Z
    .registers 8
    .parameter "now"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 289
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/downloads/DownloadHandler;->hasDownloadInQueue(J)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    .line 321
    :cond_f
    :goto_f
    :sswitch_f
    return v0

    .line 293
    :cond_10
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    if-ne v2, v0, :cond_16

    move v0, v1

    .line 295
    goto :goto_f

    .line 297
    :cond_16
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_3a

    move v0, v1

    .line 321
    goto :goto_f

    .line 306
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v2

    if-eq v2, v0, :cond_f

    move v0, v1

    goto :goto_f

    .line 310
    :sswitch_25
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_f

    move v0, v1

    goto :goto_f

    .line 313
    :sswitch_2f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    .line 297
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_f
        0xbe -> :sswitch_f
        0xc0 -> :sswitch_f
        0xc2 -> :sswitch_25
        0xc3 -> :sswitch_1d
        0xc4 -> :sswitch_1d
        0xc6 -> :sswitch_f
        0xc7 -> :sswitch_2f
    .end sparse-switch
.end method

.method private isRoamingAllowed()Z
    .registers 3

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_7

    .line 358
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 360
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .registers 3
    .parameter "networkType"

    .prologue
    .line 414
    sparse-switch p1, :sswitch_data_10

    .line 428
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 416
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 419
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 422
    :sswitch_9
    const/16 v0, 0x2000

    goto :goto_4

    .line 425
    :sswitch_c
    const/16 v0, 0x40

    goto :goto_4

    .line 414
    nop

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_7
        0x6 -> :sswitch_c
        0xd -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public checkCanUseNetwork()I
    .registers 4

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-interface {v1, v2}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 344
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_c

    .line 345
    const/4 v1, 0x2

    .line 353
    :goto_b
    return v1

    .line 347
    :cond_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 348
    const/4 v1, 0x7

    goto :goto_b

    .line 350
    :cond_1a
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 351
    const/4 v1, 0x5

    goto :goto_b

    .line 353
    :cond_2a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo;->checkIsNetworkTypeAllowed(I)I

    move-result v1

    goto :goto_b
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .parameter "writer"

    .prologue
    .line 490
    const-string v0, "DownloadInfo:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const-string v0, "  mId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 493
    const-string v0, " mLastMod="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 494
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    const-string v0, " mUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 497
    const-string v0, "  mUri="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    const-string v0, " mMimeType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    const-string v0, " mCookies="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_a4

    const-string v0, "yes"

    :goto_4c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    const-string v0, " mReferer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_a7

    const-string v0, "yes"

    :goto_5a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    const-string v0, "  mUserAgent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    const-string v0, "  mFileName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    const-string v0, "  mStatus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 507
    const-string v0, " mCurrentBytes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 508
    const-string v0, " mTotalBytes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 510
    const-string v0, "  mNumFailed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 511
    const-string v0, " mRetryAfter="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 512
    return-void

    .line 499
    :cond_a4
    const-string v0, "no"

    goto :goto_4c

    .line 500
    :cond_a7
    const-string v0, "no"

    goto :goto_5a
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 486
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .registers 3
    .parameter "networkError"

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_18

    .line 389
    const-string v0, "unknown error with network connectivity"

    :goto_5
    return-object v0

    .line 371
    :pswitch_6
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_5

    .line 374
    :pswitch_9
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_5

    .line 377
    :pswitch_c
    const-string v0, "no network connection available"

    goto :goto_5

    .line 380
    :pswitch_f
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_5

    .line 383
    :pswitch_12
    const-string v0, "download was requested to not use the current network type"

    goto :goto_5

    .line 386
    :pswitch_15
    const-string v0, "network is blocked for requesting application"

    goto :goto_5

    .line 369
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public getMyDownloadsUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 482
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletionNotification()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 329
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 335
    :cond_a
    :goto_a
    return v0

    .line 332
    :cond_b
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v2, v1, :cond_a

    move v0, v1

    .line 333
    goto :goto_a
.end method

.method nextAction(J)J
    .registers 9
    .parameter "now"

    .prologue
    const-wide/16 v2, 0x0

    .line 522
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 523
    const-wide/16 v2, -0x1

    .line 532
    :cond_c
    :goto_c
    return-wide v2

    .line 525
    :cond_d
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v5, 0xc2

    if-ne v4, v5, :cond_c

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v0

    .line 529
    .local v0, when:J
    cmp-long v4, v0, p1

    if-lez v4, :cond_c

    .line 532
    sub-long v2, v0, p1

    goto :goto_c
.end method

.method notifyPauseDueToSize(Z)V
    .registers 5
    .parameter

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 549
    const-class v1, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 552
    const-string v1, "isWifiRequired"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 553
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 554
    return-void
.end method

.method public restartTime(J)J
    .registers 8
    .parameter "now"

    .prologue
    .line 273
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_5

    .line 279
    .end local p1
    :goto_4
    return-wide p1

    .line 276
    .restart local p1
    :cond_5
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_11

    .line 277
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_4

    .line 279
    :cond_11
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_4
.end method

.method public sendIntentIfRequested()V
    .registers 5

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 267
    :cond_4
    :goto_4
    return-void

    .line 248
    :cond_5
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v1, :cond_22

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "extra_download_id"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    :goto_1c
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_22
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 259
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    :cond_3f
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getMyDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1c
.end method

.method shouldScanFile()Z
    .registers 3

    .prologue
    .line 539
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1c

    :cond_12
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method startDownloadThread()V
    .registers 5

    .prologue
    .line 557
    new-instance v0, Lcom/android/providers/downloads/DownloadThread;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/providers/downloads/StorageManager;->getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/providers/downloads/DownloadThread;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;)V

    .line 559
    .local v0, downloader:Lcom/android/providers/downloads/DownloadThread;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->startThread(Ljava/lang/Thread;)V

    .line 560
    return-void
.end method

.method startIfReady(JLcom/android/providers/downloads/StorageManager;)V
    .registers 11
    .parameter "now"
    .parameter "storageManager"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc0

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->isReadyToStart(J)Z

    move-result v1

    if-nez v1, :cond_a

    .line 472
    :goto_9
    return-void

    .line 462
    :cond_a
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_28

    .line 463
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service spawning thread to handle download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_28
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-eq v1, v5, :cond_4b

    .line 466
    iput v5, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 467
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 468
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 471
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_4b
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/providers/downloads/DownloadHandler;->enqueueDownload(Lcom/android/providers/downloads/DownloadInfo;)V

    goto :goto_9
.end method
