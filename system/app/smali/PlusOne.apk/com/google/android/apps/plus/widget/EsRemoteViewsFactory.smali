.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.super Ljava/lang/Object;
.source "EsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;,
        Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAppWidgetId:I

.field private mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

.field private mCachedStreamRowViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/StreamRowView;",
            ">;"
        }
    .end annotation
.end field

.field private mCleanupRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

.field private final mCursorLock:Ljava/lang/Object;

.field private mEarlyTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private final mImageUrlsToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImagesLoadLock:Ljava/lang/Object;

.field private mImagesLoaded:I

.field private mImagesToLoadThreshold:I

.field private mLateTimeoutRunnable:Ljava/lang/Runnable;

.field private final mRemoteViewCreatorLock:Ljava/lang/Object;

.field private mRemoteViewCreatorRunnable:Ljava/lang/Runnable;

.field private mServiceListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTotalImagesToLoad:I

.field private final mUserIdImagesToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoadLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageUrlsToLoad:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mUserIdImagesToLoad:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewCreatorLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewCreatorRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mEarlyTimeoutRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mLateTimeoutRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;

    .line 219
    new-instance v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    .line 247
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 248
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I

    return p1
.end method

.method static synthetic access$1404(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mLateTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mEarlyTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewCreatorRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewCreatorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/service/AvatarCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageUrlsToLoad:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mUserIdImagesToLoad:Ljava/util/Set;

    return-object v0
.end method

.method private loadCursor()V
    .registers 9

    .prologue
    .line 419
    const-string v2, "EsRemoteViewsFactory"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 420
    const-string v2, "EsRemoteViewsFactory"

    const-string v3, "loadCursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_10
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 424
    :try_start_13
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1c

    .line 425
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_1c
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, circleId:Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string v2, "v.all.circles"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 431
    :cond_2e
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 443
    .local v1, streamUri:Landroid/net/Uri;
    :goto_3d
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 444
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v4, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_STREAM:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setProjection([Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelection(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 447
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const-string v4, "sort_index ASC"

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 450
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_77

    .line 451
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    :cond_77
    monitor-exit v3

    .line 454
    return-void

    .line 434
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_79
    const-string v2, "v.whatshot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 435
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #streamUri:Landroid/net/Uri;
    goto :goto_3d

    .line 439
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_91
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #streamUri:Landroid/net/Uri;
    goto :goto_3d

    .line 453
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #streamUri:Landroid/net/Uri;
    :catchall_a0
    move-exception v2

    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_13 .. :try_end_a2} :catchall_a0

    throw v2
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 296
    const-string v0, "EsRemoteViewsFactory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 297
    const-string v0, "EsRemoteViewsFactory"

    const-string v1, "getCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_13
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_27

    .line 301
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    monitor-exit v1

    .line 303
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_26

    .line 305
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 372
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 10
    .parameter "position"

    .prologue
    .line 313
    const-string v5, "EsRemoteViewsFactory"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 314
    const-string v5, "EsRemoteViewsFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getViewAt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_27
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 319
    :try_start_2a
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 320
    :cond_36
    const/4 v4, 0x0

    monitor-exit v6

    .line 348
    :goto_38
    return-object v4

    .line 323
    :cond_39
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 324
    .local v1, count:I
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_96

    .line 327
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v3, fillInIntent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v2, extras:Landroid/os/Bundle;
    const-string v5, "com.google.android.apps.plus.widget.WIDGET_ID"

    iget v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    if-ge p1, v1, :cond_6b

    const/16 v5, 0xa

    if-ge p1, v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;

    if-eqz v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_99

    .line 334
    :cond_6b
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0300b6

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 335
    .local v4, rv:Landroid/widget/RemoteViews;
    const v5, 0x7f0d01b2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 336
    const-string v5, "com.google.android.apps.plus.widget.ACTIVITY_ID"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_87
    const-string v5, "com.google.android.apps.plus.widget.STREAM_ACTION"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 346
    const v5, 0x7f0d0197

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_38

    .line 324
    .end local v1           #count:I
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #fillInIntent:Landroid/content/Intent;
    .end local v4           #rv:Landroid/widget/RemoteViews;
    :catchall_96
    move-exception v5

    :try_start_97
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v5

    .line 338
    .restart local v1       #count:I
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v3       #fillInIntent:Landroid/content/Intent;
    :cond_99
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0300b0

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 339
    .restart local v4       #rv:Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/views/StreamRowView;

    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/apps/plus/views/StreamRowView;->drawIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, activityId:Ljava/lang/String;
    const-string v5, "com.google.android.apps.plus.widget.ACTIVITY_ID"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 364
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 259
    const-string v0, "EsRemoteViewsFactory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 260
    const-string v0, "EsRemoteViewsFactory"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_10
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    .line 264
    return-void
.end method

.method public onDataSetChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 388
    const-string v0, "EsRemoteViewsFactory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 389
    const-string v0, "EsRemoteViewsFactory"

    const-string v1, "onDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_29

    .line 395
    invoke-direct {p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->loadCursor()V

    .line 398
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mLateTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mEarlyTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewCreatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewCreatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_45
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewCreatorLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_63
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4a} :catch_66

    .line 408
    :goto_4a
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_63

    .line 410
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 411
    iput-object v4, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->unregisterRequestCompleteListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;)V

    .line 415
    iput-object v4, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    .line 416
    return-void

    .line 408
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 405
    :catch_66
    move-exception v0

    goto :goto_4a
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 271
    const-string v0, "EsRemoteViewsFactory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 272
    const-string v0, "EsRemoteViewsFactory"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_13
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->abandon()V

    .line 281
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_35

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_45

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->deleteCircleId(Landroid/content/Context;I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void

    .line 284
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method
