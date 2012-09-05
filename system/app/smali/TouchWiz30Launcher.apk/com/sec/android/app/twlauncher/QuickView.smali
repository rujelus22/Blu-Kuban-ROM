.class public abstract Lcom/sec/android/app/twlauncher/QuickView;
.super Landroid/widget/FrameLayout;
.source "QuickView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickView$Animate;
    }
.end annotation


# instance fields
.field protected mAddDrawable:Landroid/graphics/drawable/Drawable;

.field protected mAnimationDuration:I

.field protected mAnimationStartTime:J

.field protected mAnimationState:I

.field protected mChildRects:[Landroid/graphics/Rect;

.field protected mCurrentPage:I

.field protected mCurrentRects:[Landroid/graphics/Rect;

.field protected mDeleteIndex:I

.field protected mDeleteView:Landroid/view/View;

.field protected mDraggingIndex:I

.field protected mDraggingView:Landroid/view/View;

.field protected mEnabledChildAnimation:Z

.field protected mFinishRects:[Landroid/graphics/Rect;

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field protected mMovePinchStart:I

.field protected mMultiTouchUsed:Z

.field protected mOriginDragIndex:I

.field protected mPinchIndex:I

.field protected mPinchOutIndex:I

.field protected mPinchOutProcess:Z

.field protected mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field protected mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

.field protected mScreenBgDrawablePadding:Landroid/graphics/Rect;

.field protected mScreenRect:Landroid/graphics/Rect;

.field protected mStartRects:[Landroid/graphics/Rect;

.field protected mTmpRect:Landroid/graphics/Rect;

.field protected mTouchState:I

.field protected mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 76
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    .line 135
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 139
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 3
    .parameter "canvas"

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public drawCloseAnimation()V
    .registers 3

    .prologue
    .line 209
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    .line 210
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 211
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    .line 213
    :cond_c
    return-void
.end method

.method protected drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .registers 19
    .parameter "canvas"
    .parameter "surface"
    .parameter "drawable"
    .parameter "bounds"
    .parameter "drawPos"
    .parameter "alpha"
    .parameter "color"

    .prologue
    .line 171
    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    sub-int v10, v1, v2

    .line 172
    .local v10, w:I
    const/4 v1, 0x1

    if-lt v10, v1, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getWidth()I

    move-result v1

    if-le v10, v1, :cond_11

    .line 173
    :cond_f
    const/4 v1, 0x0

    .line 200
    :goto_10
    return-object v1

    .line 175
    :cond_11
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    sub-int v9, v1, v2

    .line 176
    .local v9, h:I
    const/4 v1, 0x1

    if-lt v9, v1, :cond_20

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getHeight()I

    move-result v1

    if-le v9, v1, :cond_22

    .line 177
    :cond_20
    const/4 v1, 0x0

    goto :goto_10

    .line 179
    :cond_22
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 182
    if-eqz p2, :cond_51

    int-to-float v1, v10

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3ca3d70a

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_51

    int-to-float v1, v9

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3ca3d70a

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6a

    .line 185
    :cond_51
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 186
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 187
    .local v7, bmp:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v8, c:Landroid/graphics/Canvas;
    invoke-virtual {p3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    new-instance p2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .end local p2
    invoke-direct {p2, v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    .line 190
    .restart local p2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 192
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #c:Landroid/graphics/Canvas;
    :cond_6a
    const/4 v1, 0x0

    cmpl-float v1, p6, v1

    if-ltz v1, :cond_74

    .line 193
    move/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 195
    :cond_74
    if-eqz p7, :cond_82

    .line 196
    const/4 v1, 0x0

    aget v1, p7, v1

    const/4 v2, 0x1

    aget v2, p7, v2

    const/4 v3, 0x2

    aget v3, p7, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    .line 198
    :cond_82
    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    move-object/from16 v0, p5

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 199
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object v1, p2

    .line 200
    goto/16 :goto_10
.end method

.method public drawOpenAnimation()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 205
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    .line 206
    return-void
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    return v0
.end method

.method public isAnimating()Z
    .registers 3

    .prologue
    .line 216
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method isOpened()Z
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public postInvalidate()V
    .registers 1

    .prologue
    .line 148
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 162
    return-void
.end method
