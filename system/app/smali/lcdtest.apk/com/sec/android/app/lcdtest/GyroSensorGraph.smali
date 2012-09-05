.class public Lcom/sec/android/app/lcdtest/GyroSensorGraph;
.super Landroid/view/View;
.source "GyroSensorGraph.java"


# instance fields
.field private final GRAPH_SCALING_COOR:I

.field private final INCREASING_COOR:I

.field private final INIT_COOR_X:I

.field private final INIT_COOR_Y:I

.field private LIST_SIZE:I

.field private final TEXT_SCALING_COOR:F

.field private mBaseLinePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mEffects:Landroid/graphics/PathEffect;

.field private mPathX:Landroid/graphics/Path;

.field private mPathY:Landroid/graphics/Path;

.field private mPathZ:Landroid/graphics/Path;

.field private mScreenWidth:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mValueX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mValueY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mValueZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mXPaint:Landroid/graphics/Paint;

.field private mYPaint:Landroid/graphics/Paint;

.field private mZPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INIT_COOR_X:I

    .line 18
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INIT_COOR_Y:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INCREASING_COOR:I

    .line 20
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->GRAPH_SCALING_COOR:I

    .line 21
    const v0, 0x42654ca3

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->TEXT_SCALING_COOR:F

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INIT_COOR_X:I

    .line 18
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INIT_COOR_Y:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INCREASING_COOR:I

    .line 20
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->GRAPH_SCALING_COOR:I

    .line 21
    const v0, 0x42654ca3

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->TEXT_SCALING_COOR:F

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INIT_COOR_X:I

    .line 18
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INIT_COOR_Y:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->INCREASING_COOR:I

    .line 20
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->GRAPH_SCALING_COOR:I

    .line 21
    const v0, 0x42654ca3

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->TEXT_SCALING_COOR:F

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/high16 v5, -0x100

    const/high16 v4, 0x3f80

    const/4 v3, 0x1

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 52
    .local v0, mWm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mScreenWidth:I

    .line 53
    iget v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mScreenWidth:I

    add-int/lit8 v1, v1, -0xa

    div-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->LIST_SIZE:I

    .line 54
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x4120

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mEffects:Landroid/graphics/PathEffect;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mXPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mXPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mXPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40c0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mXPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mXPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mEffects:Landroid/graphics/PathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mYPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mYPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mYPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mYPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mYPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mEffects:Landroid/graphics/PathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mZPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mZPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mZPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mZPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mZPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mEffects:Landroid/graphics/PathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->invalidate()V

    .line 82
    return-void
.end method

.method private setPath()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/high16 v3, 0x4120

    const/high16 v5, 0x4396

    const/high16 v4, 0x4170

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 122
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 124
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 126
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    sub-float v1, v5, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    sub-float v1, v5, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    sub-float v1, v5, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 132
    const/4 v0, 0x1

    .local v0, i:I
    :goto_68
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_be

    .line 133
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    mul-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0xa

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    sub-float v1, v5, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    mul-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0xa

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    sub-float v1, v5, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    mul-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0xa

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    sub-float v1, v5, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 138
    :cond_be
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->invalidate()V

    .line 139
    return-void
.end method


# virtual methods
.method public addValue(FFF)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->LIST_SIZE:I

    if-le v0, v1, :cond_35

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    :cond_35
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->setPath()V

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x428c

    const v4, 0x42654ca3

    const/high16 v12, 0x4120

    const/high16 v1, 0x4248

    const/high16 v2, 0x4220

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v9, v0, v4

    .line 87
    .local v9, textx:F
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueY:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v10, v0, v4

    .line 88
    .local v10, texty:F
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mValueZ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v11, v0, v4

    .line 90
    .local v11, textz:F
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    const-string v0, "x :"

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    const/high16 v3, 0x4302

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mXPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    const-string v0, "y :"

    const/high16 v3, 0x4320

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    const/high16 v4, 0x4348

    const/high16 v6, 0x438c

    iget-object v8, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mYPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x4348

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    const-string v0, "z :"

    const/high16 v3, 0x439b

    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 98
    const/high16 v1, 0x43af

    const/high16 v3, 0x43d7

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mZPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x43af

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    const/high16 v2, 0x42c8

    const/high16 v4, 0x43fa

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v12

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    const/high16 v2, 0x4396

    iget v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mScreenWidth:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v3, v0

    const/high16 v4, 0x4396

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mBaseLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathX:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mXPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathY:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mYPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mPathZ:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->mZPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    return-void
.end method
