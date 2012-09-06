.class public Lcom/google/android/apps/plus/views/RemoteImage;
.super Ljava/lang/Object;
.source "RemoteImage.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;


# static fields
.field private static sImageCache:Lcom/google/android/apps/plus/service/ImageCache;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mInvalidated:Z

.field private mLoaded:Z

.field private final mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 4
    .parameter "view"
    .parameter "request"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mView:Landroid/view/View;

    .line 28
    iput-object p2, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    .line 29
    sget-object v0, Lcom/google/android/apps/plus/views/RemoteImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v0, :cond_15

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/views/RemoteImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 32
    :cond_15
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequest()Lcom/google/android/apps/plus/content/ImageRequest;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mInvalidated:Z

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 70
    return-void
.end method

.method public load()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_b

    .line 90
    sget-object v0, Lcom/google/android/apps/plus/views/RemoteImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 92
    :cond_b
    return-void
.end method

.method public refreshIfInvalidated()V
    .registers 3

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mInvalidated:Z

    if-eqz v0, :cond_12

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mInvalidated:Z

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    if-eqz v0, :cond_12

    .line 80
    sget-object v0, Lcom/google/android/apps/plus/views/RemoteImage;->sImageCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 83
    :cond_12
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mLoaded:Z

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RemoteImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 39
    return-void

    .line 37
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method
