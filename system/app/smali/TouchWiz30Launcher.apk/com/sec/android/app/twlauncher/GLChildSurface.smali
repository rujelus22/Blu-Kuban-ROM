.class Lcom/sec/android/app/twlauncher/GLChildSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.source "GLChildSurface.java"


# instance fields
.field mInvalidated:Z

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 16
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    .line 17
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .registers 4
    .parameter "view"
    .parameter "policy"

    .prologue
    .line 21
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    .line 22
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public invalidate()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    .line 42
    return-void
.end method

.method public declared-synchronized onContextLost()V
    .registers 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->onContextLost()V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    if-eq v0, v1, :cond_d

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 57
    :cond_d
    monitor-exit p0

    return-void

    .line 54
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postUploadIfNeeded()V
    .registers 6

    .prologue
    .line 26
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    if-eqz v2, :cond_49

    .line 27
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_49

    .line 28
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    .line 38
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_49
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    .line 62
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 63
    return-void
.end method
