.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.super Ljava/lang/Object;
.source "EsWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
.implements Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;,
        Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    }
.end annotation


# static fields
.field private static sAuthorBitmap:Landroid/graphics/Bitmap;

.field private static sCheckinBitmap:Landroid/graphics/Bitmap;

.field private static sInitialized:Z

.field private static sLocationBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAppWidgetId:I

.field private mCleanupRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

.field private final mCursorLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

.field private mSyncRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    .line 100
    new-instance v1, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;

    .line 113
    new-instance v1, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 138
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    .line 140
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-static {p1}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 143
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/service/ImageCache;->registerMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V

    .line 146
    sget-boolean v1, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sInitialized:Z

    if-nez v1, :cond_61

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sAuthorBitmap:Landroid/graphics/Bitmap;

    .line 150
    const v1, 0x7f0200e2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sLocationBitmap:Landroid/graphics/Bitmap;

    .line 151
    const v1, 0x7f0200b6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sCheckinBitmap:Landroid/graphics/Bitmap;

    .line 153
    sput-boolean v3, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sInitialized:Z

    .line 155
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/service/ImageCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private clearRemoteViewInfos()V
    .registers 5

    .prologue
    .line 273
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    if-eqz v2, :cond_57

    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    array-length v1, v2

    .local v1, size:I
    :goto_8
    if-ge v0, v1, :cond_57

    .line 275
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 276
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 277
    :try_start_23
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_51

    .line 281
    :cond_2f
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 282
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 283
    :try_start_42
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_54

    .line 274
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 278
    :catchall_51
    move-exception v2

    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v2

    .line 284
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2

    .line 288
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    .line 289
    return-void
.end method

.method private createRemoteViews(I)V
    .registers 47
    .parameter "position"

    .prologue
    .line 292
    const-string v4, "EsRemoteViewsFactory"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 293
    const-string v4, "EsRemoteViewsFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] createRemoteViews: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 297
    :try_start_38
    new-instance v38, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300f2

    move-object/from16 v0, v38

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 299
    .local v38, rv:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v4, v4, p1

    move-object/from16 v0, v38

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v4, v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$602(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 301
    const v4, 0x7f090290

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 302
    const v4, 0x7f09028f

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 303
    const v4, 0x7f090291

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 304
    const v4, 0x7f090292

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 305
    const v4, 0x7f09028b

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    const v4, 0x7f09028d

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 307
    const v4, 0x7f09028e

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 308
    const v4, 0x7f09009d

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_b3

    .line 311
    monitor-exit v44

    .line 539
    :goto_b2
    return-void

    .line 314
    :cond_b3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, activityId:Ljava/lang/String;
    if-nez v8, :cond_c3

    .line 317
    monitor-exit v44

    goto :goto_b2

    .line 538
    .end local v8           #activityId:Ljava/lang/String;
    .end local v38           #rv:Landroid/widget/RemoteViews;
    :catchall_c0
    move-exception v4

    monitor-exit v44
    :try_end_c2
    .catchall {:try_start_38 .. :try_end_c2} :catchall_c0

    throw v4

    .line 320
    .restart local v8       #activityId:Ljava/lang/String;
    .restart local v38       #rv:Landroid/widget/RemoteViews;
    :cond_c3
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v4, v5, v8}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    .line 322
    .local v23, fillInIntent:Landroid/content/Intent;
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v22, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 324
    const-string v4, "com.google.android.apps.plus.widget.ACTIVITY_ACTION"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const/high16 v4, 0x1400

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 327
    const v4, 0x7f090289

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 331
    .local v37, res:Landroid/content/res/Resources;
    const v4, 0x7f09028a

    sget-object v5, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sAuthorBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, authorId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v4, v4, p1

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAuthorId:Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1102(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    new-instance v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v10, v9, v4, v5}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    .line 337
    .local v10, avatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 339
    const v4, 0x7f09005e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 342
    const/16 v36, 0x0

    .line 343
    .local v36, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_157
    .catchall {:try_start_c3 .. :try_end_157} :catchall_c0

    move-result-object v34

    .line 345
    .local v34, plusOneBytes:[B
    if-eqz v34, :cond_15e

    .line 347
    :try_start_15a
    invoke-static/range {v34 .. v34}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_15d
    .catchall {:try_start_15a .. :try_end_15d} :catchall_c0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_15a .. :try_end_15d} :catch_1c7

    move-result-object v36

    .line 353
    :cond_15e
    :goto_15e
    if-nez v36, :cond_1cb

    const/16 v35, 0x0

    .line 354
    .local v35, plusOneCount:I
    :goto_162
    if-nez v35, :cond_1d0

    .line 355
    const v4, 0x7f090293

    const/16 v5, 0x8

    :try_start_169
    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 356
    const v4, 0x7f090294

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 363
    :goto_178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 365
    .local v42, totalComments:I
    if-nez v42, :cond_1f3

    .line 366
    const v4, 0x7f090295

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 367
    const v4, 0x7f090296

    const/16 v5, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 374
    :goto_197
    const/16 v33, 0x0

    .line 375
    .local v33, originalAuthorName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 377
    .local v25, isCheckIn:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 379
    .local v21, explanations:[B
    if-eqz v21, :cond_220

    .line 380
    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/plus/content/DbExplanation;->deserialize([B)[Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v15

    .line 381
    .local v15, dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    if-eqz v15, :cond_220

    .line 382
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1ae
    array-length v4, v15

    move/from16 v0, v24

    if-ge v0, v4, :cond_220

    .line 383
    sget-object v4, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Explanation$Type:[I

    aget-object v5, v15, v24

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_472

    .line 382
    :goto_1c4
    add-int/lit8 v24, v24, 0x1

    goto :goto_1ae

    .line 348
    .end local v15           #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v21           #explanations:[B
    .end local v24           #i:I
    .end local v25           #isCheckIn:Z
    .end local v33           #originalAuthorName:Ljava/lang/String;
    .end local v35           #plusOneCount:I
    .end local v42           #totalComments:I
    :catch_1c7
    move-exception v20

    .line 349
    .local v20, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    const/16 v36, 0x0

    goto :goto_15e

    .line 353
    .end local v20           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_1cb
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v35

    goto :goto_162

    .line 358
    .restart local v35       #plusOneCount:I
    :cond_1d0
    const v4, 0x7f090293

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 359
    const v4, 0x7f090294

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 360
    const v4, 0x7f090294

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_178

    .line 369
    .restart local v42       #totalComments:I
    :cond_1f3
    const v4, 0x7f090295

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 370
    const v4, 0x7f090296

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 371
    const v4, 0x7f090296

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_197

    .line 385
    .restart local v15       #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .restart local v21       #explanations:[B
    .restart local v24       #i:I
    .restart local v25       #isCheckIn:Z
    .restart local v33       #originalAuthorName:Ljava/lang/String;
    :pswitch_216
    aget-object v4, v15, v24

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v33

    .line 386
    goto :goto_1c4

    .line 390
    :pswitch_21d
    const/16 v25, 0x1

    goto :goto_1c4

    .line 398
    .end local v15           #dbExplanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v24           #i:I
    :cond_220
    const/4 v12, 0x0

    .line 399
    .local v12, content:Ljava/lang/String;
    const/16 v18, 0x0

    .line 400
    .local v18, documentContent:Ljava/lang/String;
    const/16 v19, 0x0

    .line 401
    .local v19, documentDescription:Ljava/lang/String;
    const/16 v40, 0x0

    .line 402
    .local v40, titleContent:Ljava/lang/String;
    const/16 v41, 0x0

    .line 403
    .local v41, titleDescription:Ljava/lang/String;
    const/16 v30, 0x0

    .line 405
    .local v30, mediaContent:Ljava/lang/String;
    const/16 v31, 0x0

    .line 406
    .local v31, needsImage:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    .line 407
    .local v29, mediaBytes:[B
    if-eqz v29, :cond_2ca

    .line 408
    invoke-static/range {v29 .. v29}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v16

    .line 409
    .local v16, dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    const/16 v24, 0x0

    .restart local v24       #i:I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v39, v0

    .local v39, size:I
    :goto_244
    move/from16 v0, v24

    move/from16 v1, v39

    if-ge v0, v1, :cond_2ca

    .line 410
    aget-object v4, v16, v24

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v28

    .line 411
    .local v28, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v43

    .line 412
    .local v43, type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    aget-object v4, v16, v24

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/DbMedia;->getContentText()Ljava/lang/String;

    move-result-object v13

    .line 413
    .local v13, contentText:Ljava/lang/String;
    aget-object v4, v16, v24

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/DbMedia;->getDescriptionText()Ljava/lang/String;

    move-result-object v17

    .line 415
    .local v17, descriptionText:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    invoke-virtual/range {v43 .. v43}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_47a

    .line 409
    :cond_26b
    :goto_26b
    add-int/lit8 v24, v24, 0x1

    goto :goto_244

    .line 417
    :pswitch_26e
    move-object v12, v13

    .line 418
    goto :goto_26b

    .line 422
    :pswitch_270
    move-object/from16 v18, v13

    .line 423
    move-object/from16 v19, v17

    .line 424
    goto :goto_26b

    .line 428
    :pswitch_275
    move-object/from16 v40, v13

    .line 429
    move-object/from16 v41, v17

    .line 430
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v4

    if-eqz v4, :cond_26b

    goto :goto_26b

    .line 440
    :pswitch_280
    move-object/from16 v30, v13

    .line 441
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v4

    if-eqz v4, :cond_26b

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&google_plus:widget"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, thumbnailUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v4, v4, p1

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mUrl:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1302(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    new-instance v2, Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual/range {v43 .. v43}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x258

    const/16 v6, 0x258

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 448
    .local v2, req:Lcom/google/android/apps/plus/content/MediaImageRequest;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 450
    const/16 v31, 0x1

    goto :goto_26b

    .line 458
    .end local v2           #req:Lcom/google/android/apps/plus/content/MediaImageRequest;
    .end local v3           #thumbnailUrl:Ljava/lang/String;
    .end local v13           #contentText:Ljava/lang/String;
    .end local v16           #dbMediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v17           #descriptionText:Ljava/lang/String;
    .end local v24           #i:I
    .end local v28           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v39           #size:I
    .end local v43           #type:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_2ca
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e5

    .line 459
    const v4, 0x7f09009d

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 460
    const v4, 0x7f09009d

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 463
    :cond_2e5
    const/4 v14, 0x1

    .line 465
    .local v14, continueProcessing:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2ef
    .catchall {:try_start_169 .. :try_end_2ef} :catchall_c0

    move-result-object v27

    .line 467
    .local v27, locationBytes:[B
    if-eqz v27, :cond_332

    .line 469
    :try_start_2f2
    invoke-static/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$Location;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v26

    .line 470
    .local v26, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const v4, 0x7f090290

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 471
    const v4, 0x7f090290

    const v5, 0x7f0a0027

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 472
    const v4, 0x7f090290

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 474
    const v4, 0x7f09028f

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 475
    const v5, 0x7f09028f

    if-eqz v25, :cond_45d

    sget-object v4, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sCheckinBitmap:Landroid/graphics/Bitmap;

    :goto_32c
    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_331
    .catchall {:try_start_2f2 .. :try_end_331} :catchall_c0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2f2 .. :try_end_331} :catch_46f

    .line 477
    const/4 v14, 0x0

    .line 483
    .end local v26           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_332
    :goto_332
    :try_start_332
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_461

    .line 484
    const v4, 0x7f0a0027

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 486
    .local v11, color:I
    const v4, 0x7f09028b

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v5, 0x7f0801dc

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v33, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 489
    .local v32, originalAuthor:Ljava/lang/String;
    const v4, 0x7f09028b

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 491
    const v4, 0x7f09028d

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 492
    const v4, 0x7f09028e

    const/4 v5, 0x4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 497
    .end local v32           #originalAuthor:Ljava/lang/String;
    :goto_377
    if-eqz v14, :cond_39d

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39d

    .line 498
    const v4, 0x7f090290

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 499
    const v4, 0x7f090290

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 500
    const v4, 0x7f090290

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 501
    const/4 v14, 0x0

    .line 504
    :cond_39d
    if-eqz v14, :cond_3c3

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c3

    .line 505
    const v4, 0x7f090290

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 506
    const v4, 0x7f090290

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 507
    const v4, 0x7f090290

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 508
    const/4 v14, 0x0

    .line 511
    :cond_3c3
    if-eqz v14, :cond_3e9

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e9

    .line 512
    const v4, 0x7f090290

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 513
    const v4, 0x7f090290

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 514
    const v4, 0x7f090290

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 515
    const/4 v14, 0x0

    .line 518
    :cond_3e9
    if-eqz v14, :cond_40f

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40f

    .line 519
    const v4, 0x7f090290

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 520
    const v4, 0x7f090290

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 521
    const v4, 0x7f090290

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 522
    const/4 v14, 0x0

    .line 525
    :cond_40f
    if-eqz v14, :cond_435

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_435

    .line 526
    const v4, 0x7f090290

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 527
    const v4, 0x7f090290

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 528
    const v4, 0x7f090290

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 529
    const/4 v14, 0x0

    .line 532
    :cond_435
    if-nez v31, :cond_45a

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLoaded:Z
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$802(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Z)Z

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v4, v4, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_44c
    .catchall {:try_start_332 .. :try_end_44c} :catchall_c0

    .line 535
    :try_start_44c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v4, v4, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 536
    monitor-exit v5
    :try_end_45a
    .catchall {:try_start_44c .. :try_end_45a} :catchall_46c

    .line 538
    :cond_45a
    :try_start_45a
    monitor-exit v44
    :try_end_45b
    .catchall {:try_start_45a .. :try_end_45b} :catchall_c0

    goto/16 :goto_b2

    .line 475
    .end local v11           #color:I
    .restart local v26       #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_45d
    :try_start_45d
    sget-object v4, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->sLocationBitmap:Landroid/graphics/Bitmap;
    :try_end_45f
    .catchall {:try_start_45d .. :try_end_45f} :catchall_c0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_45d .. :try_end_45f} :catch_46f

    goto/16 :goto_32c

    .line 494
    .end local v26           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_461
    const v4, 0x7f0a0028

    :try_start_464
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_469
    .catchall {:try_start_464 .. :try_end_469} :catchall_c0

    move-result v11

    .restart local v11       #color:I
    goto/16 :goto_377

    .line 536
    :catchall_46c
    move-exception v4

    :try_start_46d
    monitor-exit v5
    :try_end_46e
    .catchall {:try_start_46d .. :try_end_46e} :catchall_46c

    :try_start_46e
    throw v4
    :try_end_46f
    .catchall {:try_start_46e .. :try_end_46f} :catchall_c0

    .line 478
    .end local v11           #color:I
    :catch_46f
    move-exception v4

    goto/16 :goto_332

    .line 383
    :pswitch_data_472
    .packed-switch 0x1
        :pswitch_216
        :pswitch_21d
    .end packed-switch

    .line 415
    :pswitch_data_47a
    .packed-switch 0x1
        :pswitch_26e
        :pswitch_270
        :pswitch_275
        :pswitch_280
        :pswitch_280
    .end packed-switch
.end method

.method private loadCursor()V
    .registers 9

    .prologue
    .line 683
    const-string v2, "EsRemoteViewsFactory"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 684
    const-string v2, "EsRemoteViewsFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] loadCursor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_29
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 688
    :try_start_2c
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_35

    .line 689
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_35
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, circleId:Ljava/lang/String;
    if-eqz v0, :cond_47

    const-string v2, "v.all.circles"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 695
    :cond_47
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 707
    .local v1, streamUri:Landroid/net/Uri;
    :goto_56
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    .line 708
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v4, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_STREAM:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setProjection([Ljava/lang/String;)V

    .line 709
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelection(Ljava/lang/String;)V

    .line 710
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    const-string v4, "sort_index ASC"

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 712
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 714
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_94

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_94

    .line 715
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 717
    :cond_94
    monitor-exit v3

    .line 718
    return-void

    .line 698
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_96
    const-string v2, "v.whatshot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 699
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #streamUri:Landroid/net/Uri;
    goto :goto_56

    .line 703
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_ae
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v0, v5, v6}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #streamUri:Landroid/net/Uri;
    goto :goto_56

    .line 717
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #streamUri:Landroid/net/Uri;
    :catchall_bd
    move-exception v2

    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_2c .. :try_end_bf} :catchall_bd

    throw v2
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 190
    const-string v0, "EsRemoteViewsFactory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 191
    const-string v0, "EsRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] getCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_40

    .line 195
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    monitor-exit v1

    .line 197
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_3f

    .line 199
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_43

    throw v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 553
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 11
    .parameter "position"

    .prologue
    const/4 v8, 0x3

    .line 204
    const-string v5, "EsRemoteViewsFactory"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 205
    const-string v5, "EsRemoteViewsFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] getViewAt("

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

    .line 209
    :cond_33
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 210
    :try_start_36
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 211
    :cond_42
    const/4 v4, 0x0

    monitor-exit v6

    .line 269
    :goto_44
    return-object v4

    .line 214
    :cond_45
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 215
    .local v1, count:I
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_b6

    .line 219
    if-ge p1, v1, :cond_6b

    const/16 v5, 0xa

    if-ge p1, v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    if-eqz v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    array-length v5, v5

    if-ge p1, v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    if-eqz v5, :cond_6b

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;

    move-result-object v5

    if-nez v5, :cond_b9

    .line 223
    :cond_6b
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0300f6

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 224
    .local v4, rv:Landroid/widget/RemoteViews;
    const v5, 0x7f09029f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, circleId:Ljava/lang/String;
    if-nez v0, :cond_8c

    .line 228
    const-string v0, "v.all.circles"

    .line 232
    :cond_8c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v2, extras:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 234
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v5, v6, v0}, Lcom/google/android/apps/plus/phone/Intents;->getCirclePostsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 235
    .local v3, fillInIntent:Landroid/content/Intent;
    const-string v5, "com.google.android.apps.plus.widget.CIRCLE_ACTION"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/high16 v5, 0x1400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    const v5, 0x7f090289

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_44

    .line 215
    .end local v0           #circleId:Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #fillInIntent:Landroid/content/Intent;
    .end local v4           #rv:Landroid/widget/RemoteViews;
    :catchall_b6
    move-exception v5

    :try_start_b7
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v5

    .line 240
    .restart local v1       #count:I
    :cond_b9
    const-string v5, "EsRemoteViewsFactory"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 241
    const-string v5, "EsRemoteViewsFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] getViewAt for non-footer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " avatarLoaded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v7, v7, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLoaded:Z
    invoke-static {v7}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " imageLoaded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v7, v7, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLoaded:Z
    invoke-static {v7}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_109
    :goto_109
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLoaded:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Z

    move-result v5

    if-nez v5, :cond_12c

    .line 247
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 249
    :try_start_11c
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_127
    .catchall {:try_start_11c .. :try_end_127} :catchall_129
    .catch Ljava/lang/InterruptedException; {:try_start_11c .. :try_end_127} :catch_15b

    .line 253
    :goto_127
    :try_start_127
    monitor-exit v6

    goto :goto_109

    :catchall_129
    move-exception v5

    monitor-exit v6
    :try_end_12b
    .catchall {:try_start_127 .. :try_end_12b} :catchall_129

    throw v5

    .line 256
    :cond_12c
    :goto_12c
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLoaded:Z
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Z

    move-result v5

    if-nez v5, :cond_14f

    .line 257
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 259
    :try_start_13f
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_14a
    .catchall {:try_start_13f .. :try_end_14a} :catchall_14c
    .catch Ljava/lang/InterruptedException; {:try_start_13f .. :try_end_14a} :catch_159

    .line 263
    :goto_14a
    :try_start_14a
    monitor-exit v6

    goto :goto_12c

    :catchall_14c
    move-exception v5

    monitor-exit v6
    :try_end_14e
    .catchall {:try_start_14a .. :try_end_14e} :catchall_14c

    throw v5

    .line 266
    :cond_14f
    iget-object v5, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v5, v5, p1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v5}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;

    move-result-object v4

    .restart local v4       #rv:Landroid/widget/RemoteViews;
    goto/16 :goto_44

    .line 260
    .end local v4           #rv:Landroid/widget/RemoteViews;
    :catch_159
    move-exception v5

    goto :goto_14a

    .line 250
    :catch_15b
    move-exception v5

    goto :goto_127
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 548
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "gaiaId"

    .prologue
    .line 722
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    if-eqz v2, :cond_41

    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    array-length v1, v2

    .local v1, size:I
    :goto_8
    if-ge v0, v1, :cond_41

    .line 724
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAuthorId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 726
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLoaded:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$702(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Z)Z

    .line 727
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 728
    :try_start_2f
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 729
    monitor-exit v3

    .line 723
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 729
    :catchall_3e
    move-exception v2

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_3e

    throw v2

    .line 733
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_41
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 159
    const-string v0, "EsRemoteViewsFactory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 160
    const-string v0, "EsRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_29
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    .line 164
    return-void
.end method

.method public onDataSetChanged()V
    .registers 10

    .prologue
    .line 563
    const-string v6, "EsRemoteViewsFactory"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 564
    const-string v6, "EsRemoteViewsFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] onDataSetChanged"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 571
    .local v1, identityToken:J
    :try_start_2d
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 572
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v8, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v6, v7, v8}, Lcom/google/android/apps/plus/widget/EsWidgetProvider;->configureWidget(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 573
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v6, :cond_45

    .line 574
    invoke-direct {p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->loadCursor()V

    .line 577
    :cond_45
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v6, :cond_59

    .line 578
    iget-object v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_73

    .line 579
    :try_start_4c
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_55

    .line 580
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_55
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 583
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_70

    .line 588
    :cond_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    invoke-direct {p0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->clearRemoteViewInfos()V

    .line 593
    iget-object v7, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v7

    .line 594
    :try_start_62
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_6e

    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 595
    :cond_6e
    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_b3

    .line 680
    :goto_6f
    return-void

    .line 583
    :catchall_70
    move-exception v6

    :try_start_71
    monitor-exit v7
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v6
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 588
    :catchall_73
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 598
    :cond_78
    :try_start_78
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 599
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/16 v8, 0xa

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 600
    .local v4, numRows:I
    new-array v6, v4, [Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    iput-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    .line 602
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8e
    if-ge v0, v4, :cond_b1

    .line 603
    move v3, v0

    .line 604
    .local v3, index:I
    iget-object v6, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    new-instance v5, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;)V

    aput-object v5, v6, v0

    .line 606
    .local v5, rvInfo:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    new-instance v6, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;

    invoke-direct {v6, p0, v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)V

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    invoke-static {v5, v6}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1402(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    .line 649
    new-instance v6, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;

    invoke-direct {v6, p0, v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)V

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    invoke-static {v5, v6}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1202(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    .line 677
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->createRemoteViews(I)V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 679
    .end local v3           #index:I
    .end local v5           #rvInfo:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    :cond_b1
    monitor-exit v7

    goto :goto_6f

    .end local v0           #i:I
    .end local v4           #numRows:I
    :catchall_b3
    move-exception v6

    monitor-exit v7
    :try_end_b5
    .catchall {:try_start_78 .. :try_end_b5} :catchall_b3

    throw v6
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 168
    const-string v0, "EsRemoteViewsFactory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 169
    const-string v0, "EsRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_45

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLoader:Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->abandon()V

    .line 178
    :cond_45
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4e

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_5e

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->deleteCircleId(Landroid/content/Context;I)V

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void

    .line 181
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public onMediaImageChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 737
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    if-eqz v2, :cond_41

    .line 738
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    array-length v1, v2

    .local v1, size:I
    :goto_8
    if-ge v0, v1, :cond_41

    .line 739
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 741
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLoaded:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$802(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Z)Z

    .line 742
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 743
    :try_start_2f
    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 744
    monitor-exit v3

    .line 738
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 744
    :catchall_3e
    move-exception v2

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_3e

    throw v2

    .line 748
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_41
    return-void
.end method
