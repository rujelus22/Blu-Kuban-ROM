.class public Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;
.super Landroid/view/View;
.source "SensorArrow.java"


# instance fields
.field private final COMPLETED_CAL:I

.field private final REAL_COMPLETED_CAL:I

.field private direction:F

.field private mArrowPaint:Landroid/graphics/Paint;

.field private mBGPaint:Landroid/graphics/Paint;

.field private mCurrentCal:I

.field private mPassPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextPaintCal:Landroid/graphics/Paint;

.field private mX:I

.field private needCalMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->direction:F

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->COMPLETED_CAL:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->REAL_COMPLETED_CAL:I

    .line 40
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->initCompassView()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->direction:F

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->COMPLETED_CAL:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->REAL_COMPLETED_CAL:I

    .line 50
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->initCompassView()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->direction:F

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->COMPLETED_CAL:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->REAL_COMPLETED_CAL:I

    .line 45
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->initCompassView()V

    .line 46
    return-void
.end method

.method private draw_arrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 10
    .parameter "canvas"
    .parameter "p"
    .parameter "x"

    .prologue
    const/4 v1, 0x2

    const/high16 v4, 0x4343

    .line 100
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mCurrentCal:I

    if-ge v0, v1, :cond_1c

    .line 101
    const/high16 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    :cond_c
    :goto_c
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->direction:F

    neg-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 108
    int-to-float v1, p3

    const/4 v2, 0x0

    int-to-float v3, p3

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    return-void

    .line 102
    :cond_1c
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mCurrentCal:I

    if-ne v0, v1, :cond_27

    .line 103
    const v0, -0xff0100

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c

    .line 104
    :cond_27
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mCurrentCal:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    .line 105
    const v0, -0xffff01

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c
.end method

.method private initCompassView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 54
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    .line 56
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->needCalMsg:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mBGPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mBGPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 69
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4220

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mPassPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mPassPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mPassPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mPassPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mPassPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x428c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 80
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    const/high16 v1, 0x4270

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->setCurrentCal(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->invalidate()V

    .line 84
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "cv"

    .prologue
    const/high16 v2, 0x4343

    .line 88
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->draw_arrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 90
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mCurrentCal:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_39

    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->needCalMsg:Ljava/lang/String;

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mCurrentCal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    add-int/lit16 v2, v2, 0x82

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    :goto_38
    return-void

    .line 94
    :cond_39
    const-string v0, "PASS"

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mPassPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mCurrentCal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mX:I

    add-int/lit16 v2, v2, 0x82

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_38
.end method

.method public setCurrentCal(I)V
    .registers 2
    .parameter "cal"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->mCurrentCal:I

    .line 27
    return-void
.end method

.method public setDirection(F)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->direction:F

    .line 35
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->invalidate()V

    .line 36
    return-void
.end method
