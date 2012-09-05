.class public Lcom/sec/android/mimage/photoretouching/mask/Brush;
.super Ljava/lang/Object;
.source "Brush.java"


# static fields
.field public static final ACTION_ADD:I = 0x1

.field public static final ACTION_DEL:I = 0x2

.field public static final ACTION_NO:I

.field private static bSmartMode:Z


# instance fields
.field private action_type:I

.field private brush_index:I

.field private mIsVisible:Z

.field private final mMatrixValues:[F

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private radius_pool:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->bSmartMode:Z

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mMatrixValues:[F

    .line 31
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->release()V

    .line 32
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->action_type:I

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mIsVisible:Z

    .line 41
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->InitBrush()V

    .line 43
    return-void
.end method


# virtual methods
.method public InitBrush()V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    if-nez v0, :cond_9

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    .line 50
    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput v2, v0, v1

    .line 51
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    const/4 v1, 0x1

    const/16 v2, 0x16

    aput v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    const/4 v1, 0x2

    const/16 v2, 0x1e

    aput v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    .line 55
    return-void
.end method

.method public changeMode()V
    .registers 2

    .prologue
    .line 73
    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->bSmartMode:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->bSmartMode:Z

    .line 74
    return-void

    .line 73
    :cond_8
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public changeSize()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    if-nez v1, :cond_6

    .line 69
    :goto_5
    return v0

    .line 62
    :cond_6
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1c

    .line 63
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    .line 67
    :goto_11
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    .line 69
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    goto :goto_5

    .line 65
    :cond_1c
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    goto :goto_11
.end method

.method public changeStep(I)V
    .registers 4
    .parameter "step"

    .prologue
    .line 81
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    .line 82
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    .line 83
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Matrix;)V
    .registers 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "DisplayMatrix"

    .prologue
    const/16 v4, 0xc8

    const/16 v3, 0x64

    const/high16 v7, 0x4120

    const/high16 v6, 0x4110

    const/high16 v2, -0x100

    .line 90
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mIsVisible:Z

    if-eqz v0, :cond_95

    .line 92
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    const/high16 v0, 0x4080

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->action_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_89

    .line 117
    sub-float v2, p3, v6

    add-float v4, p3, v7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    :cond_89
    sub-float v1, p2, v6

    add-float v3, p2, v7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    :cond_95
    return-void
.end method

.method public getActionType()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->action_type:I

    return v0
.end method

.method public getRadius()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    return v0
.end method

.method public getRealBrushSize(IILandroid/graphics/Matrix;)I
    .registers 8
    .parameter "size"
    .parameter "mode"
    .parameter "DisplayMat"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mMatrixValues:[F

    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 163
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mMatrixValues:[F

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 165
    .local v1, scale:F
    if-nez p2, :cond_11

    .line 166
    int-to-float v2, p1

    div-float v0, v2, v1

    .line 170
    .local v0, brushSize:F
    :goto_f
    float-to-int v2, v0

    return v2

    .line 168
    .end local v0           #brushSize:F
    :cond_11
    int-to-float v2, p1

    mul-float v0, v2, v1

    .restart local v0       #brushSize:F
    goto :goto_f
.end method

.method public getRealRadius(Landroid/graphics/Matrix;)I
    .registers 6
    .parameter "DisplayMat"

    .prologue
    .line 132
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mMatrixValues:[F

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 133
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mMatrixValues:[F

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 135
    .local v1, scale:F
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    int-to-float v2, v2

    div-float v0, v2, v1

    .line 137
    .local v0, brushSize:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gez v2, :cond_17

    .line 138
    const/high16 v0, 0x3f80

    .line 141
    :cond_17
    float-to-int v2, v0

    return v2
.end method

.method public getSizeID()I
    .registers 4

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 154
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_7
    return v0

    .line 150
    .restart local v0       #i:I
    :cond_8
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_7

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getStep()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->brush_index:I

    return v0
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 182
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->paint:Landroid/graphics/Paint;

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    if-eqz v0, :cond_d

    .line 184
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    .line 185
    :cond_d
    return-void
.end method

.method public setActionType(I)V
    .registers 2
    .parameter "t"

    .prologue
    .line 177
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->action_type:I

    return-void
.end method

.method public setPool([I)V
    .registers 2
    .parameter "_pool"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius_pool:[I

    return-void
.end method

.method public setRadius(I)V
    .registers 2
    .parameter "r"

    .prologue
    .line 175
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->radius:I

    .line 176
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->mIsVisible:Z

    return-void
.end method

.method public smartModeOn()Z
    .registers 2

    .prologue
    .line 77
    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/mask/Brush;->bSmartMode:Z

    return v0
.end method
