.class public Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;
.super Ljava/lang/Object;
.source "MXBaseThumbnailer.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;
    }
.end annotation


# instance fields
.field protected mBitmapCache:Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;

.field protected mBrokenCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

.field private mThumbnailDispatchedListener:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mThumbnailDispatchedListener:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mCache:Ljava/util/HashMap;

    .line 41
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mCache:Ljava/util/HashMap;

    const/16 v2, 0xc8

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;-><init>(Ljava/util/Map;II)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBitmapCache:Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBrokenCache:Ljava/util/HashMap;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;)Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mThumbnailDispatchedListener:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;

    return-object v0
.end method


# virtual methods
.method public cancelDispatch()V
    .registers 3

    .prologue
    .line 60
    const-string v0, "MXBaseThumbnailer"

    const-string v1, "cancelDispatch"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    if-eqz v0, :cond_10

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->clearQueue()V

    .line 63
    :cond_10
    return-void
.end method

.method public clearCache()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBitmapCache:Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->clear()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBrokenCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 375
    return-void
.end method

.method public getChechedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "path"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->isBroken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 390
    const/4 v0, 0x0

    .line 392
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBitmapCache:Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public getThumbnail(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->isBroken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->put(Ljava/lang/String;)V

    .line 52
    :cond_f
    return-void
.end method

.method public getThumbnailBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "path"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 89
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaLoader;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    :cond_f
    :goto_f
    return-object v0

    .line 91
    :cond_10
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 92
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaLoader;->getVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f

    .line 94
    :cond_1f
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 95
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaLoader;->getApkBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f
.end method

.method public isBroken(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBrokenCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 381
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    .line 382
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 384
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setOnThumbnailDispatchedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mThumbnailDispatchedListener:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;

    .line 226
    return-void
.end method

.method public startThumbnailer()V
    .registers 3

    .prologue
    .line 66
    const-string v0, "MXBaseThumbnailer"

    const-string v1, "startThumbnailer"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    if-nez v0, :cond_17

    .line 68
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;-><init>(Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->start()V

    .line 71
    :cond_17
    return-void
.end method

.method public stopThumbnailer()V
    .registers 3

    .prologue
    .line 74
    const-string v0, "MXBaseThumbnailer"

    const-string v1, "stopThumbnailer"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    if-eqz v0, :cond_15

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->clearQueue()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->stopLooper()V

    .line 79
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mDispatcher:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;

    .line 80
    return-void
.end method
