.class public Lcom/sec/android/app/lcdtest/SensorArrow;
.super Landroid/view/View;
.source "SensorArrow.java"


# instance fields
.field private final COMPLETED_CAL:I

.field private final REAL_COMPLETED_CAL:I

.field private direction:F

.field private mArrowPaint:Landroid/graphics/Paint;

.field private mBGPaint:Landroid/graphics/Paint;

.field private mCurrentCal:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextPaintCal:Landroid/graphics/Paint;

.field private mX:I

.field private needCalMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->direction:F

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->COMPLETED_CAL:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->REAL_COMPLETED_CAL:I

    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorArrow;->initCompassView()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->direction:F

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->COMPLETED_CAL:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->REAL_COMPLETED_CAL:I

    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorArrow;->initCompassView()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->direction:F

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->COMPLETED_CAL:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->REAL_COMPLETED_CAL:I

    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorArrow;->initCompassView()V

    .line 44
    return-void
.end method

.method private draw_arrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 10
    .parameter "canvas"
    .parameter "p"
    .parameter "x"

    .prologue
    const/4 v1, 0x2

    const/high16 v4, 0x428c

    .line 91
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mCurrentCal:I

    if-ge v0, v1, :cond_1c

    .line 92
    const/high16 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    :cond_c
    :goto_c
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->direction:F

    neg-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 99
    int-to-float v1, p3

    const/4 v2, 0x0

    int-to-float v3, p3

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    return-void

    .line 93
    :cond_1c
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mCurrentCal:I

    if-ne v0, v1, :cond_27

    .line 94
    const v0, -0xff0100

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c

    .line 95
    :cond_27
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mCurrentCal:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    .line 96
    const v0, -0xffff01

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c
.end method

.method private initCompassView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 52
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/SensorArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->needCalMsg:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mBGPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mBGPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/SensorArrow;->setCurrentCal(I)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/SensorArrow;->invalidate()V

    .line 76
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "cv"

    .prologue
    const/high16 v2, 0x428c

    .line 80
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/lcdtest/SensorArrow;->draw_arrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 82
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mCurrentCal:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_37

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->needCalMsg:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mCurrentCal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    add-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    :goto_36
    return-void

    .line 86
    :cond_37
    iget v0, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mCurrentCal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mX:I

    add-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mTextPaintCal:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_36
.end method

.method public setCurrentCal(I)V
    .registers 2
    .parameter "cal"

    .prologue
    .line 24
    iput p1, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->mCurrentCal:I

    .line 25
    return-void
.end method

.method public setDirection(F)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/app/lcdtest/SensorArrow;->direction:F

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/SensorArrow;->invalidate()V

    .line 34
    return-void
.end method
