.class public Lcom/sec/android/app/lcdtest/PointerLocation$MyView;
.super Landroid/view/View;
.source "PointerLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/PointerLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private mCurDown:Z

.field private mCurPressure:F

.field private mCurSize:F

.field private mCurWidth:I

.field private mCurX:I

.field private mCurY:I

.field private mHeaderBottom:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mVelocity:Landroid/view/VelocityTracker;

.field private final mXs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mYs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/lcdtest/PointerLocation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/lcdtest/PointerLocation;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "c"

    .prologue
    const/16 v5, 0xc0

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->this$0:Lcom/sec/android/app/lcdtest/PointerLocation;

    .line 67
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mXs:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mYs:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v3, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTargetPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v2, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->getWidth()I

    move-result v1

    div-int/lit8 v18, v1, 0x5

    .line 103
    .local v18, w:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v1, v1

    add-int/lit8 v13, v1, 0x1

    .line 104
    .local v13, base:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mHeaderBottom:I

    .line 105
    .local v14, bottom:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v1, v18, -0x1

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurX:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v6, 0x3f80

    int-to-float v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    move/from16 v0, v18

    int-to-float v2, v0

    const/4 v3, 0x0

    mul-int/lit8 v1, v18, 0x2

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Y: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurY:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v18, 0x1

    int-to-float v6, v6

    int-to-float v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    mul-int/lit8 v1, v18, 0x2

    int-to-float v2, v1

    const/4 v3, 0x0

    mul-int/lit8 v1, v18, 0x3

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    mul-int/lit8 v1, v18, 0x2

    int-to-float v2, v1

    const/4 v3, 0x0

    mul-int/lit8 v1, v18, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurPressure:F

    move/from16 v0, v18

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    const/high16 v6, 0x3f80

    sub-float v4, v1, v6

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pres: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurPressure:F

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v6, v18, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    int-to-float v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    mul-int/lit8 v1, v18, 0x3

    int-to-float v2, v1

    const/4 v3, 0x0

    mul-int/lit8 v1, v18, 0x4

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    mul-int/lit8 v1, v18, 0x3

    int-to-float v2, v1

    const/4 v3, 0x0

    mul-int/lit8 v1, v18, 0x3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurSize:F

    move/from16 v0, v18

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    const/high16 v6, 0x3f80

    sub-float v4, v1, v6

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurSize:F

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v6, v18, 0x3

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    int-to-float v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    mul-int/lit8 v1, v18, 0x4

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1b9

    const/16 v17, 0x0

    .line 117
    .local v17, velocity:I
    :goto_145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yVel: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v6, v18, 0x4

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    int-to-float v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mXs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 120
    .local v12, N:I
    const/4 v2, 0x0

    .local v2, lastX:F
    const/4 v3, 0x0

    .line 121
    .local v3, lastY:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 122
    const/4 v15, 0x0

    .local v15, i:I
    :goto_182
    if-ge v15, v12, :cond_1c9

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mXs:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 124
    .local v4, x:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mYs:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 125
    .local v5, y:F
    if-lez v15, :cond_1b4

    .line 126
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 129
    :cond_1b4
    move v2, v4

    .line 130
    move v3, v5

    .line 122
    add-int/lit8 v15, v15, 0x1

    goto :goto_182

    .line 116
    .end local v2           #lastX:F
    .end local v3           #lastY:F
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v12           #N:I
    .end local v15           #i:I
    .end local v17           #velocity:I
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/high16 v6, 0x447a

    mul-float/2addr v1, v6

    float-to-int v0, v1

    move/from16 v17, v0

    goto/16 :goto_145

    .line 132
    .restart local v2       #lastX:F
    .restart local v3       #lastY:F
    .restart local v12       #N:I
    .restart local v15       #i:I
    .restart local v17       #velocity:I
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_282

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    const/high16 v6, 0x4180

    mul-float v19, v1, v6

    .line 135
    .local v19, xVel:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/high16 v6, 0x4180

    mul-float v20, v1, v6

    .line 136
    .local v20, yVel:F
    add-float v9, v2, v19

    add-float v10, v3, v20

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v2

    move v8, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    .end local v19           #xVel:F
    .end local v20           #yVel:F
    :goto_203
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurDown:Z

    if-eqz v1, :cond_281

    .line 142
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurY:I

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->getWidth()I

    move-result v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurY:I

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 143
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurX:I

    int-to-float v7, v1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurX:I

    int-to-float v9, v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->getHeight()I

    move-result v1

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurPressure:F

    const/high16 v6, 0x437f

    mul-float/2addr v1, v6

    float-to-int v0, v1

    move/from16 v16, v0

    .line 145
    .local v16, pressureLevel:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/16 v7, 0x80

    move/from16 v0, v16

    rsub-int v8, v0, 0xff

    move/from16 v0, v16

    invoke-virtual {v1, v6, v0, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 146
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurY:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 147
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurY:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurWidth:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    .end local v16           #pressureLevel:I
    :cond_281
    return-void

    .line 138
    :cond_282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_203
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mHeaderBottom:I

    .line 95
    const-string v0, "foo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metrics: ascent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " descent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 155
    .local v1, action:I
    if-nez v1, :cond_17

    .line 156
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mXs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mYs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 158
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    .line 160
    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 163
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-ge v2, v0, :cond_45

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mXs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mYs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 167
    :cond_45
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mXs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mYs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    if-eqz v1, :cond_64

    const/4 v3, 0x2

    if-ne v1, v3, :cond_92

    :cond_64
    move v3, v4

    :goto_65
    iput-boolean v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurDown:Z

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurX:I

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurY:I

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurPressure:F

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurSize:F

    .line 174
    iget v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurSize:F

    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->mCurWidth:I

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;->invalidate()V

    .line 177
    return v4

    .line 169
    :cond_92
    const/4 v3, 0x0

    goto :goto_65
.end method
