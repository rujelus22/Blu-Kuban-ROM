.class public Lcom/sec/android/app/ve/view/paint/StrokePreview;
.super Landroid/widget/ImageView;
.source "StrokePreview.java"


# instance fields
.field private StartY:F

.field private StrokeVal:I

.field private X:F

.field private Y:F

.field public amplitude:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private path:Landroid/graphics/Path;

.field public phase:I

.field public wavelength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->X:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->Y:F

    .line 17
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StartY:F

    .line 20
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->wavelength:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->amplitude:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->phase:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StrokeVal:I

    .line 27
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/StrokePreview;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->X:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->Y:F

    .line 17
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StartY:F

    .line 20
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->wavelength:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->amplitude:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->phase:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StrokeVal:I

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/StrokePreview;->init()V

    .line 50
    return-void
.end method


# virtual methods
.method init()V
    .registers 3

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mBitmapPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mBitmapPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 63
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StrokeVal:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v13, v1

    .line 66
    .local v13, temp:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StartY:F

    div-int/lit8 v2, v13, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->Y:F

    .line 67
    const/16 v1, 0x64

    new-array v12, v1, [F

    .line 68
    .local v12, pts:[F
    const-wide v1, 0x4076800000000000L

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->wavelength:I

    int-to-double v3, v3

    div-double v9, v1, v3

    .line 69
    .local v9, degreesPerPixel:D
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->amplitude:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v15, v1, 0x2

    .line 74
    .local v15, yOffset:I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->path:Landroid/graphics/Path;

    .line 77
    const/4 v11, 0x0

    .local v11, i:I
    :goto_46
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/paint/StrokePreview;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    if-lt v11, v1, :cond_4f

    .line 99
    return-void

    .line 78
    :cond_4f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->phase:I

    int-to-double v1, v1

    int-to-double v3, v11

    mul-double/2addr v3, v9

    add-double v7, v1, v3

    .line 79
    .local v7, degrees:D
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->X:F

    int-to-float v2, v11

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 80
    .local v14, xloc:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->Y:F

    int-to-float v2, v15

    add-float/2addr v1, v2

    float-to-double v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->amplitude:I

    int-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    const-wide v19, 0x4066800000000000L

    div-double v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v16, v0

    .line 81
    .local v16, yloc:I
    if-nez v11, :cond_8e

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->path:Landroid/graphics/Path;

    int-to-float v2, v14

    move/from16 v0, v16

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    :cond_8e
    sub-int v1, v16, v13

    if-gez v1, :cond_b8

    .line 85
    const/16 v17, 0x0

    .line 88
    .local v17, yloc1:I
    :goto_94
    add-int v1, v16, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/paint/StrokePreview;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-le v1, v2, :cond_bb

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/paint/StrokePreview;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v18, v1, -0x5

    .line 95
    .local v18, yloc2:I
    :goto_a4
    int-to-float v2, v14

    move/from16 v0, v17

    int-to-float v3, v0

    int-to-float v4, v14

    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    .line 87
    .end local v17           #yloc1:I
    .end local v18           #yloc2:I
    :cond_b8
    sub-int v17, v16, v13

    .restart local v17       #yloc1:I
    goto :goto_94

    .line 91
    :cond_bb
    add-int v18, v16, v13

    .restart local v18       #yloc2:I
    goto :goto_a4
.end method

.method public setColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mColor:I

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mBitmapPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/StrokePreview;->invalidate()V

    .line 43
    return-void
.end method

.method public setStrokeVal(I)V
    .registers 4
    .parameter "strokeVal"

    .prologue
    const/4 v1, 0x2

    .line 33
    iput p1, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StrokeVal:I

    .line 34
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StrokeVal:I

    if-ge v0, v1, :cond_9

    .line 35
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/StrokePreview;->StrokeVal:I

    .line 36
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/StrokePreview;->invalidate()V

    .line 37
    return-void
.end method
