.class public Lcom/google/android/apps/plus/views/MediaImage;
.super Ljava/lang/Object;
.source "MediaImage.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;


# static fields
.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mInvalidated:Z

.field private mLoaded:Z

.field private final mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/apps/plus/content/MediaImageRequest;)V
    .registers 4
    .parameter "view"
    .parameter "request"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MediaImage;->mView:Landroid/view/View;

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/plus/views/MediaImage;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 30
    sget-object v0, Lcom/google/android/apps/plus/views/MediaImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v0, :cond_15

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/MediaImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 33
    :cond_15
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mInvalidated:Z

    .line 72
    return-void
.end method

.method public load()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    if-eqz v0, :cond_b

    .line 92
    sget-object v0, Lcom/google/android/apps/plus/views/MediaImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MediaImage;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 94
    :cond_b
    return-void
.end method

.method public refreshIfInvalidated()V
    .registers 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mInvalidated:Z

    if-eqz v0, :cond_12

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mInvalidated:Z

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    if-eqz v0, :cond_12

    .line 82
    sget-object v0, Lcom/google/android/apps/plus/views/MediaImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MediaImage;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 85
    :cond_12
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MediaImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mLoaded:Z

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MediaImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 43
    return-void

    .line 41
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method
