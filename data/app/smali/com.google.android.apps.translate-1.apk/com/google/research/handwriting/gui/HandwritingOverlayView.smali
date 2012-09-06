.class public Lcom/google/research/handwriting/gui/HandwritingOverlayView;
.super Landroid/widget/RelativeLayout;
.source "HandwritingOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/HandwritingOverlayView$1;,
        Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;,
        Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;,
        Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastX:F

.field private lastY:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

.field private final mMultitouchDetector:Lcom/google/research/handwriting/gui/MultitouchGestureDetector;

.field private final mPaintClipRect:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private final mPaintStrokeRecognized:Landroid/graphics/Paint;

.field private final mPenTolerance:I

.field private final mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

.field private mStrokeColor:I

.field private mStrokeColorRecognized:I

.field private mUndoCopy:Landroid/graphics/Bitmap;

.field private mUsingHistoryEvent:Z

.field private final mUsingMultitouchDetector:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    .line 262
    const/16 v0, -0x100

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColorRecognized:I

    .line 263
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPenTolerance:I

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUsingHistoryEvent:Z

    .line 282
    new-instance v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUsingMultitouchDetector:Z

    .line 319
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    .line 320
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    .line 321
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintClipRect:Landroid/graphics/Paint;

    .line 322
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mClipRect:Landroid/graphics/RectF;

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/research/handwriting/gui/R$color;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/research/handwriting/gui/R$color;->strokeColorRecognized:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColorRecognized:I

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mMultitouchDetector:Lcom/google/research/handwriting/gui/MultitouchGestureDetector;

    .line 333
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->initializeDrawingStyles()V

    .line 334
    return-void
.end method

.method private createBuffer()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->getHeight()I

    move-result v1

    .line 376
    .local v1, height:I
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->getWidth()I

    move-result v2

    .line 377
    .local v2, width:I
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    .line 378
    .local v0, buffer:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_32

    .line 379
    :cond_19
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    .line 381
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    .line 383
    :cond_32
    return-void
.end method

.method private drawPenDown(FFFLandroid/graphics/Paint;)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "paint"

    .prologue
    .line 634
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 635
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->createBuffer()V

    .line 638
    :cond_7
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mClipRect:Landroid/graphics/RectF;

    .line 639
    .local v0, clip:Landroid/graphics/RectF;
    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 641
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->resetSmoothing()V

    .line 642
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMaxRadius()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMaxRadius()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 643
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 644
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 645
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v2, p3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getRadius(F)F

    move-result v2

    invoke-virtual {v1, p1, p2, v2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 646
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->invalidate(IIII)V

    .line 647
    return-void
.end method

.method private drawPenMove(FFFFFLandroid/graphics/Paint;)V
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "lastX"
    .parameter "lastY"
    .parameter "pressure"
    .parameter "paint"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 666
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->createBuffer()V

    .line 668
    :cond_7
    iget-object v6, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mClipRect:Landroid/graphics/RectF;

    .line 669
    .local v6, clip:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    .line 670
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 671
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMaxRadius()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMaxRadius()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 672
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v1, p5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getStrokeWidth(F)F

    move-result v7

    .line 673
    .local v7, strokeWidth:F
    invoke-virtual {p6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 674
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 675
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p6

    .line 676
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 677
    iget v1, v6, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v6, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v6, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->invalidate(IIII)V

    .line 678
    return-void
.end method

.method private drawPenUp(FFFLandroid/graphics/Paint;)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "paint"

    .prologue
    .line 691
    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 692
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->createBuffer()V

    .line 694
    :cond_7
    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mClipRect:Landroid/graphics/RectF;

    .line 695
    .local v1, clip:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    .line 696
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, p2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 697
    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMaxRadius()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMaxRadius()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 698
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 699
    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v2, p3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getRadius(F)F

    move-result v2

    invoke-virtual {v0, p1, p2, v2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 700
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->invalidate(IIII)V

    .line 701
    return-void
.end method

.method private drawStrokeListImpl(Lcom/google/research/handwriting/base/StrokeList;FFFLandroid/graphics/Paint;Z)V
    .registers 19
    .parameter "strokes"
    .parameter "scale"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "paint"
    .parameter "useFixedPressure"

    .prologue
    .line 593
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, s:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/research/handwriting/base/Stroke;>;"
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 594
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/research/handwriting/base/Stroke;

    .line 595
    .local v11, stroke:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual {v11}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 597
    .local v9, pIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/research/handwriting/base/Stroke$Point;>;"
    const/4 v4, 0x0

    .line 598
    .local v4, lastX:F
    const/4 v5, 0x0

    .line 599
    .local v5, lastY:F
    const/4 v6, 0x0

    .line 600
    .local v6, lastP:F
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 601
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 602
    .local v8, p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v1, v8, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    add-float/2addr v1, p3

    mul-float v4, v1, p2

    .line 603
    iget v1, v8, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    add-float v1, v1, p4

    mul-float v5, v1, p2

    .line 604
    if-eqz p6, :cond_63

    const/high16 v6, 0x3f80

    .line 605
    :goto_32
    move-object/from16 v0, p5

    invoke-direct {p0, v4, v5, v6, v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawPenDown(FFFLandroid/graphics/Paint;)V

    .line 608
    .end local v8           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_37
    :goto_37
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 609
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 610
    .restart local v8       #p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v1, v8, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    add-float/2addr v1, p3

    mul-float v2, v1, p2

    .line 611
    .local v2, x:F
    iget v1, v8, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    add-float v1, v1, p4

    mul-float v3, v1, p2

    .line 612
    .local v3, y:F
    if-eqz p6, :cond_68

    const/high16 v6, 0x3f80

    .line 613
    :goto_52
    cmpl-float v1, v2, v4

    if-nez v1, :cond_5a

    cmpl-float v1, v3, v5

    if-eqz v1, :cond_60

    :cond_5a
    move-object v1, p0

    move-object/from16 v7, p5

    .line 614
    invoke-direct/range {v1 .. v7}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawPenMove(FFFFFLandroid/graphics/Paint;)V

    .line 616
    :cond_60
    move v4, v2

    .line 617
    move v5, v3

    .line 618
    goto :goto_37

    .line 604
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_63
    iget v1, v8, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    mul-float v6, v1, p2

    goto :goto_32

    .line 612
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_68
    iget v1, v8, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    mul-float v6, v1, p2

    goto :goto_52

    .line 619
    .end local v2           #x:F
    .end local v3           #y:F
    .end local v8           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_6d
    move-object/from16 v0, p5

    invoke-direct {p0, v4, v5, v6, v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawPenUp(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 621
    .end local v4           #lastX:F
    .end local v5           #lastY:F
    .end local v6           #lastP:F
    .end local v9           #pIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/research/handwriting/base/Stroke$Point;>;"
    .end local v11           #stroke:Lcom/google/research/handwriting/base/Stroke;
    :cond_73
    return-void
.end method

.method private initializeDrawingStyles()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const v2, -0xffff01

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setWillNotDraw(Z)V

    .line 404
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 405
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 406
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 407
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 408
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->defaultStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 411
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 412
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 414
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 415
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColorRecognized:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->defaultStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 418
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintClipRect:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintClipRect:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 420
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintClipRect:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintClipRect:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    return-void
.end method

.method private processTouchDown(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p5, v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawPenDown(FFFLandroid/graphics/Paint;)V

    .line 488
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    if-eqz v0, :cond_12

    .line 489
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;->onPenDown(FFJF)V

    .line 491
    :cond_12
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastX:F

    .line 492
    iput p2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastY:F

    .line 493
    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 449
    .local v6, action:I
    packed-switch v6, :pswitch_data_70

    .line 469
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 451
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->processTouchDown(FFJF)V

    move v0, v9

    .line 452
    goto :goto_9

    .line 454
    :pswitch_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 455
    .local v8, historySize:I
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUsingHistoryEvent:Z

    if-eqz v0, :cond_44

    if-lez v8, :cond_44

    .line 456
    const/4 v7, 0x0

    .local v7, h:I
    :goto_2b
    if-ge v7, v8, :cond_44

    .line 457
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->processTouchMove(FFJF)V

    .line 456
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 461
    .end local v7           #h:I
    :cond_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->processTouchMove(FFJF)V

    move v0, v9

    .line 462
    goto :goto_9

    .line 466
    .end local v8           #historySize:I
    :pswitch_5a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->processTouchUp(FFJF)V

    move v0, v9

    .line 467
    goto :goto_9

    .line 449
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5a
        :pswitch_20
        :pswitch_5a
    .end packed-switch
.end method

.method private processTouchMove(FFJF)V
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    const/high16 v1, 0x4040

    .line 505
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 506
    .local v7, dx:F
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 507
    .local v8, dy:F
    cmpg-float v0, v7, v1

    if-gtz v0, :cond_1b

    cmpg-float v0, v8, v1

    if-gtz v0, :cond_1b

    .line 517
    :goto_1a
    return-void

    .line 511
    :cond_1b
    iget v3, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastX:F

    iget v4, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastY:F

    iget-object v6, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawPenMove(FFFFFLandroid/graphics/Paint;)V

    .line 512
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    if-eqz v0, :cond_35

    .line 513
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;->onPenMove(FFJF)V

    .line 515
    :cond_35
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastX:F

    .line 516
    iput p2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastY:F

    goto :goto_1a
.end method


# virtual methods
.method public cancelStroke()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUndoCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 525
    .local v3, w:I
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUndoCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 526
    .local v7, h:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 527
    .local v1, pixels:[I
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUndoCopy:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 528
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 529
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUndoCopy:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 530
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v2, v0, v4}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->invalidate(IIII)V

    .line 531
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;->cancelStroke()V

    .line 532
    return-void
.end method

.method public clear()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 707
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->createBuffer()V

    .line 708
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 709
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 710
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->invalidate()V

    .line 711
    return-void
.end method

.method public clearRegion(FFFF)V
    .registers 11
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 820
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 821
    float-to-int v0, p1

    float-to-int v1, p2

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->invalidate(IIII)V

    .line 822
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 388
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 395
    :goto_a
    return v0

    .line 390
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->processTouchEvent(Landroid/view/MotionEvent;)Z

    .line 392
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 393
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 395
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public drawStrokeList(Lcom/google/research/handwriting/base/StrokeList;FFFLandroid/graphics/Paint;)V
    .registers 13
    .parameter "strokes"
    .parameter "scale"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "paint"

    .prologue
    .line 584
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawStrokeListImpl(Lcom/google/research/handwriting/base/StrokeList;FFFLandroid/graphics/Paint;Z)V

    .line 585
    return-void
.end method

.method public drawStrokeList(Lcom/google/research/handwriting/base/StrokeList;Z)V
    .registers 9
    .parameter "strokes"
    .parameter "recognized"

    .prologue
    const/4 v3, 0x0

    .line 564
    const/high16 v2, 0x3f80

    if-eqz p2, :cond_e

    iget-object v5, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStrokeRecognized:Landroid/graphics/Paint;

    :goto_7
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawStrokeList(Lcom/google/research/handwriting/base/StrokeList;FFFLandroid/graphics/Paint;)V

    .line 565
    return-void

    .line 564
    :cond_e
    iget-object v5, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    goto :goto_7
.end method

.method public drawStrokeListWithFixedWidth(Lcom/google/research/handwriting/base/StrokeList;FFFLandroid/graphics/Paint;F)V
    .registers 16
    .parameter "strokes"
    .parameter "scale"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "paint"
    .parameter "strokeWidth"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMinRadius()F

    move-result v8

    .line 574
    .local v8, savedMinPressure:F
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->getMaxRadius()F

    move-result v7

    .line 575
    .local v7, savedMaxPressure:F
    invoke-virtual {p0, p6}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setMinStrokeWidth(F)V

    .line 576
    invoke-virtual {p0, p6}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->setMaxStrokeWidth(F)V

    .line 577
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawStrokeListImpl(Lcom/google/research/handwriting/base/StrokeList;FFFLandroid/graphics/Paint;Z)V

    .line 578
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v0, v8}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->setMinRadius(F)V

    .line 579
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    invoke-virtual {v0, v7}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->setMaxRadius(F)V

    .line 580
    return-void
.end method

.method public getStrokeColor()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 365
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 366
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->createBuffer()V

    .line 368
    :cond_b
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 369
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 780
    instance-of v1, p1, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;

    if-eqz v1, :cond_1a

    move-object v0, p1

    .line 781
    check-cast v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;

    .line 782
    .local v0, ss:Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;
    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 784
    iget v1, v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColor:I

    iput v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    .line 785
    iget v1, v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColorRecognized:I

    iput v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColorRecognized:I

    .line 787
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->initializeDrawingStyles()V

    .line 791
    .end local v0           #ss:Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;
    :goto_19
    return-void

    .line 789
    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_19
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 769
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 770
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;

    invoke-direct {v0, v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 772
    .local v0, ss:Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;
    iget v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    iput v2, v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColor:I

    .line 773
    iget v2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColorRecognized:I

    iput v2, v0, Lcom/google/research/handwriting/gui/HandwritingOverlayView$SavedState;->strokeColorRecognized:I

    .line 775
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 356
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->createBuffer()V

    .line 357
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    if-eqz v0, :cond_f

    .line 358
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    invoke-interface {v0, p1, p2}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;->onSizeChanged(II)V

    .line 360
    :cond_f
    return-void
.end method

.method public processTouchUp(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 544
    invoke-direct/range {p0 .. p5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->processTouchMove(FFJF)V

    .line 545
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p5, v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawPenUp(FFFLandroid/graphics/Paint;)V

    .line 547
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    if-eqz v0, :cond_15

    .line 548
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;->onPenUp(FFJF)V

    .line 550
    :cond_15
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastX:F

    .line 551
    iput p2, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->lastY:F

    .line 552
    return-void
.end method

.method public setHandwritingOverlayListener(Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mListener:Lcom/google/research/handwriting/gui/HandwritingOverlayView$HandwritingOverlayListener;

    .line 722
    return-void
.end method

.method public setMaxStrokeWidth(F)V
    .registers 4
    .parameter "strokeWidth"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    const/high16 v1, 0x4000

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->setMaxRadius(F)V

    .line 801
    return-void
.end method

.method public setMinStrokeWidth(F)V
    .registers 4
    .parameter "strokeWidth"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPressureNormalizer:Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;

    const/high16 v1, 0x4000

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/HandwritingOverlayView$PressureNormalizer;->setMinRadius(F)V

    .line 805
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 341
    iput p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    .line 342
    iget-object v0, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mPaintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    return-void
.end method

.method public setUsingHistoryEvent(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->mUsingHistoryEvent:Z

    .line 347
    return-void
.end method
