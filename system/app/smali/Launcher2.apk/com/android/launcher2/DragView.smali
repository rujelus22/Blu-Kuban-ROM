.class public Lcom/android/launcher2/DragView;
.super Landroid/view/View;
.source "DragView.java"


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mHasDrawn:Z

.field private mLayoutParams:Lcom/android/launcher2/DragLayer$LayoutParams;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIII)V
    .registers 24
    .parameter "launcher"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 41
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 43
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/DragView;->mHasDrawn:Z

    .line 46
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    .line 47
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 68
    .local v13, res:Landroid/content/res/Resources;
    const v2, 0x7f090019

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 70
    .local v9, dragScale:I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    .local v7, scale:Landroid/graphics/Matrix;
    add-int v2, p7, v9

    div-int v2, v2, p7

    int-to-float v14, v2

    .line 72
    .local v14, scaleFactor:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_39

    .line 73
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 76
    :cond_39
    const v2, 0x7f0a0034

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 77
    .local v11, offsetX:I
    const v2, 0x7f0a0035

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 80
    .local v12, offsetY:I
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_a2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 81
    iget-object v2, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x6e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object v2, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x4020

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v2, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher2/DragView$1;

    invoke-direct {v3, p0, v11, v12}, Lcom/android/launcher2/DragView$1;-><init>(Lcom/android/launcher2/DragView;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    const/4 v8, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 109
    move/from16 v0, p3

    iput v0, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    .line 110
    move/from16 v0, p4

    iput v0, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    .line 113
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 114
    .local v10, ms:I
    invoke-virtual {p0, v10, v10}, Lcom/android/launcher2/DragView;->measure(II)V

    .line 115
    return-void

    .line 80
    nop

    :array_a2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    return v0
.end method

.method static synthetic access$016(Lcom/android/launcher2/DragView;F)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DragView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return v0
.end method

.method static synthetic access$116(Lcom/android/launcher2/DragView;F)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragLayer$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Lcom/android/launcher2/DragLayer$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method


# virtual methods
.method public getDragRegion()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionHeight()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDragRegionLeft()I
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getDragRegionTop()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getOffsetY()F
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return v0
.end method

.method getPosition([I)[I
    .registers 5
    .parameter "result"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 234
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    if-nez p1, :cond_7

    const/4 v1, 0x2

    new-array p1, v1, [I

    .line 235
    :cond_7
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    aput v2, p1, v1

    .line 236
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    aput v2, p1, v1

    .line 237
    return-object p1
.end method

.method public hasDrawn()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/launcher2/DragView;->mHasDrawn:Z

    return v0
.end method

.method move(II)V
    .registers 6
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 219
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 220
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 221
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher2/DragLayer;->requestLayout()V

    .line 222
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragView;->mHasDrawn:Z

    .line 169
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/DragView;->setMeasuredDimension(II)V

    .line 156
    return-void
.end method

.method remove()V
    .registers 2

    .prologue
    .line 225
    new-instance v0, Lcom/android/launcher2/DragView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragView$2;-><init>(Lcom/android/launcher2/DragView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragView;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public setAlpha(F)V
    .registers 4
    .parameter "alpha"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 184
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_e

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    .line 187
    :cond_e
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->invalidate()V

    .line 189
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 147
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 139
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .registers 2
    .parameter "paint"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->invalidate()V

    .line 175
    return-void
.end method

.method public show(II)V
    .registers 6
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    .line 200
    new-instance v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 201
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 202
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 203
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 204
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iput-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 208
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 209
    return-void
.end method
