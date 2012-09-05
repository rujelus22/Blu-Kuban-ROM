.class public Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;
.super Landroid/view/View;
.source "GrdientColorPicker.java"


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

.field private mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

.field private selector:Landroid/graphics/Bitmap;

.field private spectrum:Landroid/graphics/Bitmap;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    .line 27
    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    .line 27
    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    .line 27
    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    .line 45
    return-void
.end method

.method private getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    if-nez v0, :cond_a

    .line 150
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getInstance()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 152
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    return-object v0
.end method

.method private makeSpectrum()V
    .registers 29

    .prologue
    .line 99
    const/4 v3, 0x6

    new-array v7, v3, [I

    fill-array-data v7, :array_110

    .line 104
    .local v7, colors:[I
    const/4 v3, 0x6

    new-array v8, v3, [F

    fill-array-data v8, :array_120

    .line 108
    .local v8, positions:[F
    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_130

    .line 112
    .local v15, pos1:[F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 113
    .local v27, spec:Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .local v22, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 115
    .local v2, shaderA:Landroid/graphics/Shader;
    new-instance v26, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 116
    .local v26, mOvalHueSat:Landroid/graphics/Paint;
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 119
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    const/4 v10, 0x1

    invoke-direct {v3, v4, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    .line 123
    .local v23, drawnColors1:[[I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_78
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_c0

    .line 128
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    .line 131
    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    .local v25, last:Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 135
    .local v21, satu:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 138
    const/16 v24, 0x0

    :goto_b7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_de

    .line 144
    return-void

    .line 124
    .end local v21           #satu:Landroid/graphics/Paint;
    .end local v25           #last:Landroid/graphics/Canvas;
    :cond_c0
    aget-object v3, v23, v24

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 125
    aget-object v3, v23, v24

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v3, v4

    .line 126
    aget-object v3, v23, v24

    const/4 v4, 0x2

    const/high16 v5, -0x100

    aput v5, v3, v4

    .line 123
    add-int/lit8 v24, v24, 0x1

    goto :goto_78

    .line 139
    .restart local v21       #satu:Landroid/graphics/Paint;
    .restart local v25       #last:Landroid/graphics/Canvas;
    :cond_de
    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->HEIGHT:I

    int-to-float v13, v3

    aget-object v14, v23, v24

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 141
    .local v9, shaderB1:Landroid/graphics/Shader;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->HEIGHT:I

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v16, v25

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    add-int/lit8 v24, v24, 0x1

    goto :goto_b7

    .line 99
    nop

    :array_110
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 104
    :array_120
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 108
    :array_130
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_23
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    .line 94
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 95
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    .line 96
    return-void
.end method

.method public getColor()I
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, -0x1

    .line 66
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    goto :goto_5
.end method

.method public initializeSelectorLocation()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    .line 187
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40f0

    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    :cond_27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 51
    if-eqz p1, :cond_25

    .line 52
    sub-int v0, p4, p2

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    .line 53
    sub-int v0, p5, p3

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->HEIGHT:I

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1e

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    .line 57
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_25

    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->makeSpectrum()V

    .line 61
    :cond_25
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 158
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    .line 161
    packed-switch v0, :pswitch_data_82

    .line 181
    :goto_16
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 163
    :pswitch_1b
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getColorPickerView()Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setFocusToRainbow()V

    .line 165
    :pswitch_26
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    if-gez v1, :cond_2c

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    .line 166
    :cond_2c
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    if-gez v1, :cond_32

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    .line 167
    :cond_32
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->HEIGHT:I

    if-lt v1, v2, :cond_3e

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->y:I

    .line 168
    :cond_3e
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    if-lt v1, v2, :cond_4a

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->WIDTH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->x:I

    .line 169
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    if-eqz v1, :cond_66

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/ve/view/paint/ColorChangedListener;->onColorChanged(I)V

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getColorPickerView()Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setSelectorColor(I)V

    .line 174
    :cond_66
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->invalidate()V

    goto :goto_16

    .line 178
    :pswitch_76
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_16

    .line 161
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_76
        :pswitch_26
    .end packed-switch
.end method

.method public setColorchangedListener(Lcom/sec/android/app/ve/view/paint/ColorChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    .line 191
    return-void
.end method
