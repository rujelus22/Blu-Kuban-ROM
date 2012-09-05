.class public Lcom/sec/android/app/twlauncher/DragAnimation;
.super Ljava/lang/Object;
.source "DragAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragAnimation$1;,
        Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;,
        Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;
    }
.end annotation


# instance fields
.field mAnimationDuration:I

.field mAnimationFromX:F

.field mAnimationFromY:F

.field mAnimationStartTime:J

.field mAnimationState:I

.field mAnimationToX:F

.field mAnimationToY:F

.field mAnimationView:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field mXOffset:F

.field mYOffset:F


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/view/animation/Interpolator;Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V
    .registers 4
    .parameter "interpolator"
    .parameter "lstnr"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 67
    if-eqz p2, :cond_d

    .end local p2
    :goto_a
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

    .line 68
    return-void

    .line 67
    .restart local p2
    :cond_d
    new-instance p2, Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;

    .end local p2
    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/twlauncher/DragAnimation$DummyLstnr;-><init>(Lcom/sec/android/app/twlauncher/DragAnimation;Lcom/sec/android/app/twlauncher/DragAnimation$1;)V

    goto :goto_a
.end method


# virtual methods
.method drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, ret:Z
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    if-eqz v6, :cond_9e

    .line 74
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationStartTime:J

    .line 76
    iput v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 77
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

    invoke-interface {v6, p0}, Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;->onAnimStart(Lcom/sec/android/app/twlauncher/DragAnimation;)V

    .line 80
    :cond_19
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    if-ne v6, v8, :cond_9e

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 83
    .local v2, normalized:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_9f

    .line 84
    iput v10, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 85
    const/high16 v2, 0x3f80

    .line 90
    :cond_34
    :goto_34
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToX:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float v4, v6, v7

    .line 92
    .local v4, valueX:F
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToY:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float v5, v6, v7

    .line 95
    .local v5, valueY:F
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 96
    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 98
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v6, :cond_85

    .line 99
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_85

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_85

    .line 100
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 105
    new-instance v6, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v6, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 108
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_85
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-eqz v6, :cond_8e

    .line 109
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 112
    :cond_8e
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 114
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    if-ne v6, v10, :cond_9d

    .line 115
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    .line 116
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mLstnr:Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;

    invoke-interface {v6, p0, v4, v5}, Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/DragAnimation;FF)V

    .line 118
    :cond_9d
    const/4 v3, 0x1

    .line 123
    .end local v2           #normalized:F
    .end local v4           #valueX:F
    .end local v5           #valueY:F
    :cond_9e
    return v3

    .line 86
    .restart local v2       #normalized:F
    :cond_9f
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_34

    .line 87
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_34
.end method

.method public setAnimation(Landroid/view/View;FFFFFFI)V
    .registers 10
    .parameter "v"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "duration"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    .line 129
    iput p2, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromX:F

    .line 130
    iput p3, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToX:F

    .line 131
    iput p4, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationFromY:F

    .line 132
    iput p5, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationToY:F

    .line 133
    iput p6, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mXOffset:F

    .line 134
    iput p7, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mYOffset:F

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationState:I

    .line 136
    iput p8, p0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationDuration:I

    .line 138
    return-void
.end method
