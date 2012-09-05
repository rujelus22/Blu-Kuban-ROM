.class Lcom/sec/android/app/twlauncher/GLEasySurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.source "GLEasySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/RectF;

.field private mInvalidated:Z

.field private mLoc:Landroid/graphics/RectF;

.field private mLstnrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;",
            ">;"
        }
    .end annotation
.end field

.field private mViewForInvalidate:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .registers 3
    .parameter "policy"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addOnDrawLstnr(Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;)V
    .registers 3
    .parameter "aLstnr"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->postUploadIfNeeded()V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 101
    return-void
.end method

.method public drawView(Landroid/graphics/Canvas;Landroid/view/View;FF)V
    .registers 7
    .parameter "aCanvas"
    .parameter "aView"
    .parameter "aLeft"
    .parameter "aTop"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLoc()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 95
    :cond_c
    return-void
.end method

.method public declared-synchronized onContextLost()V
    .registers 3

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->onContextLost()V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    if-eq v0, v1, :cond_d

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 116
    :cond_d
    monitor-exit p0

    return-void

    .line 112
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postUploadIfNeeded()V
    .registers 10

    .prologue
    const/high16 v7, 0x3f80

    .line 72
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    if-nez v6, :cond_7

    .line 88
    :cond_6
    :goto_6
    return-void

    .line 75
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 76
    .local v5, width:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 77
    .local v2, height:F
    cmpg-float v6, v5, v7

    if-ltz v6, :cond_6

    cmpg-float v6, v2, v7

    if-ltz v6, :cond_6

    .line 80
    float-to-int v6, v5

    float-to-int v7, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 83
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2f
    if-ge v3, v4, :cond_3f

    .line 84
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;

    invoke-interface {v6, p0, v1}, Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;->onDraw(Lcom/sec/android/app/twlauncher/GLEasySurface;Landroid/graphics/Canvas;)V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 86
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 87
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    goto :goto_6
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->postUploadIfNeeded()V

    .line 121
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 122
    return-void
.end method

.method public setLoc(FFFF)V
    .registers 9
    .parameter "aLeft"
    .parameter "aTop"
    .parameter "aRight"
    .parameter "aBottom"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    .line 35
    sub-float v0, p3, p1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_f

    sub-float v0, p4, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 44
    :cond_f
    :goto_f
    return-void

    .line 38
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    .line 41
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V

    goto :goto_f
.end method

.method public setLoc(Landroid/graphics/RectF;)V
    .registers 6
    .parameter "aLoc"

    .prologue
    .line 31
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLEasySurface;->setLoc(FFFF)V

    .line 32
    return-void
.end method

.method public setViewForInvalidate(Landroid/view/View;)V
    .registers 2
    .parameter "aView"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V

    .line 57
    return-void
.end method
