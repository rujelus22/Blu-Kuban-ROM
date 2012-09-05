.class Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;
.super Ljava/lang/Object;
.source "EsPhotoWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;,
        Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

.field private final mCursorLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoaderRunnable:Ljava/lang/Runnable;

.field private mLoadedImagesAtLeastOnce:Z

.field private mMediaRefToSlotMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyDataChangedRunnable:Ljava/lang/Runnable;

.field private mReloadCursor:Z

.field private mServiceListener:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;

.field private mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

.field private final mSlotContentsLock:Ljava/lang/Object;

.field private mSlotsInUse:I

.field private mSlotsWithoutImages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContentsLock:Ljava/lang/Object;

    .line 71
    const/16 v0, 0x32

    new-array v0, v0, [Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;

    .line 79
    new-instance v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$1;-><init>(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;-><init>(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mImageLoaderRunnable:Ljava/lang/Runnable;

    .line 149
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 150
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAppWidgetId:I

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mReloadCursor:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mLoadedImagesAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContentsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I

    return p1
.end method

.method static synthetic access$604(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I

    return v0
.end method

.method static synthetic access$606(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsInUse:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private loadCursor()V
    .registers 6

    .prologue
    .line 355
    const-string v1, "EsPhotoRVFactory"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 356
    const-string v1, "EsPhotoRVFactory"

    const-string v2, "loadCursor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_10
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 360
    :try_start_13
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2d

    .line 362
    iget-boolean v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mReloadCursor:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_28

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mReloadCursor:Z

    .line 364
    monitor-exit v2

    .line 390
    :goto_27
    return-void

    .line 367
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_2d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mReloadCursor:Z

    .line 374
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 375
    .local v0, streamUriBuilder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri$Builder;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri$Builder;

    .line 376
    const-string v1, "limit"

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 378
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 379
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoPagerLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setProjection([Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelection(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const-string v3, "pending_status DESC, show_order, timestamp DESC"

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 384
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_a6

    const/4 v1, 0x0

    :goto_76
    iput v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsInUse:I

    .line 386
    const-string v1, "EsPhotoRVFactory"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 387
    const-string v1, "EsPhotoRVFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded cursor with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsInUse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slots"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_a1
    monitor-exit v2

    goto :goto_27

    .end local v0           #streamUriBuilder:Landroid/net/Uri$Builder;
    :catchall_a3
    move-exception v1

    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_13 .. :try_end_a5} :catchall_a3

    throw v1

    .line 384
    .restart local v0       #streamUriBuilder:Landroid/net/Uri$Builder;
    :cond_a6
    :try_start_a6
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_a3

    move-result v1

    goto :goto_76
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mLoadedImagesAtLeastOnce:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsInUse:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 270
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 249
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300b4

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 251
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0d01b0

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 252
    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 253
    const v1, 0x7f0d0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 254
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 11
    .parameter "position"

    .prologue
    const v8, 0x7f0d0072

    const/4 v6, 0x2

    .line 210
    iget v5, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsInUse:I

    if-lt p1, v5, :cond_a

    .line 211
    const/4 v4, 0x0

    .line 241
    :goto_9
    return-object v4

    .line 215
    :cond_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v1, fillInIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, extras:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    aget-object v5, v5, p1

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v5, :cond_78

    .line 219
    :cond_22
    const-string v5, "EsPhotoRVFactory"

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 220
    const-string v5, "EsPhotoRVFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getViewAt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") has no bitmap"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_48
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0300b4

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 224
    .local v4, rv:Landroid/widget/RemoteViews;
    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    :goto_5a
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v2

    .line 235
    .local v2, photoId:J
    const-string v5, "com.google.android.apps.plus.widget.PHOTO_ID"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    const-string v5, "com.google.android.apps.plus.widget.PHOTO_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    const v5, 0x7f0d01ae

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_9

    .line 226
    .end local v2           #photoId:J
    .end local v4           #rv:Landroid/widget/RemoteViews;
    :cond_78
    const-string v5, "EsPhotoRVFactory"

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 227
    const-string v5, "EsPhotoRVFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getViewAt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") has a bitmap"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_9e
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    aget-object v5, v5, p1

    iget-object v4, v5, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 231
    .restart local v4       #rv:Landroid/widget/RemoteViews;
    const/16 v5, 0x8

    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5a
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 160
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mReloadCursor:Z

    .line 163
    new-instance v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;-><init>(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 165
    return-void
.end method

.method public onDataSetChanged()V
    .registers 18

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 288
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v7, v14, v15}, Lcom/google/android/apps/plus/widget/EsPhotoWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v7, :cond_24

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->loadCursor()V

    .line 293
    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v14

    .line 294
    :try_start_29
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v7, :cond_41

    .line 295
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_3c

    .line 296
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_3c
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 301
    :cond_41
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_51

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 302
    :cond_51
    monitor-exit v14

    .line 352
    :goto_52
    return-void

    .line 305
    :cond_53
    const/4 v9, 0x0

    .line 307
    .local v9, needsRefresh:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContentsLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_59
    .catchall {:try_start_29 .. :try_end_59} :catchall_109

    .line 308
    const/16 v7, 0x32

    :try_start_5b
    new-array v11, v7, [Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    .line 309
    .local v11, newSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v10, newImageRefsToSlotMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mImageLoaderRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    const/4 v8, 0x0

    .local v8, i:I
    :goto_81
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v8, v7, :cond_10c

    .line 315
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, unsizedPhotoUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 321
    .local v4, photoId:J
    if-nez v13, :cond_f7

    .line 322
    const-string v6, ""

    .line 328
    .local v6, photoUrl:Ljava/lang/String;
    :goto_ae
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 329
    .local v2, ownerId:J
    new-instance v1, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 330
    .local v1, ref:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fe

    .line 331
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 332
    .local v12, oldSlot:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    aget-object v7, v7, v12

    aput-object v7, v11, v8

    .line 337
    .end local v12           #oldSlot:I
    :goto_e0
    aget-object v7, v11, v8

    iget-object v7, v7, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v7, :cond_e7

    .line 338
    const/4 v9, 0x1

    .line 341
    :cond_e7
    aget-object v7, v11, v8

    iget-object v7, v7, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    add-int/lit8 v8, v8, 0x1

    goto :goto_81

    .line 324
    .end local v1           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v2           #ownerId:J
    .end local v6           #photoUrl:Ljava/lang/String;
    :cond_f7
    const/16 v7, 0x6e

    invoke-static {v7, v13}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #photoUrl:Ljava/lang/String;
    goto :goto_ae

    .line 334
    .restart local v1       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v2       #ownerId:J
    :cond_fe
    new-instance v7, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    invoke-direct {v7, v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;-><init>(Lcom/google/android/apps/plus/api/MediaRef;)V

    aput-object v7, v11, v8

    goto :goto_e0

    .line 346
    .end local v1           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v2           #ownerId:J
    .end local v4           #photoId:J
    .end local v6           #photoUrl:Ljava/lang/String;
    .end local v8           #i:I
    .end local v10           #newImageRefsToSlotMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/Integer;>;"
    .end local v11           #newSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    .end local v13           #unsizedPhotoUrl:Ljava/lang/String;
    :catchall_106
    move-exception v7

    monitor-exit v15
    :try_end_108
    .catchall {:try_start_5b .. :try_end_108} :catchall_106

    :try_start_108
    throw v7

    .line 351
    .end local v9           #needsRefresh:Z
    :catchall_109
    move-exception v7

    monitor-exit v14
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_109

    throw v7

    .line 344
    .restart local v8       #i:I
    .restart local v9       #needsRefresh:Z
    .restart local v10       #newImageRefsToSlotMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/Integer;>;"
    .restart local v11       #newSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    :cond_10c
    :try_start_10c
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    .line 345
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;

    .line 346
    monitor-exit v15
    :try_end_115
    .catchall {:try_start_10c .. :try_end_115} :catchall_106

    .line 348
    if-eqz v9, :cond_122

    .line 349
    :try_start_117
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mImageLoaderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :cond_122
    monitor-exit v14
    :try_end_123
    .catchall {:try_start_117 .. :try_end_123} :catchall_109

    goto/16 :goto_52
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$EsPhotoWidgetServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mMediaRefToSlotMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mImageLoaderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_34

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->abandon()V

    .line 184
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3d

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_1b .. :try_end_3e} :catchall_46

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->deleteCircleId(Landroid/content/Context;I)V

    .line 190
    return-void

    .line 187
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method
