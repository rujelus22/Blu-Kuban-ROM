.class public Lcom/infraware/polarisoffice/common/GrdientColorPicker;
.super Landroid/view/View;
.source "GrdientColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;
    }
.end annotation


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private context:Landroid/content/Context;

.field private mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

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

    .line 25
    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 26
    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

    .line 34
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 26
    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

    .line 40
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->context:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 26
    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

    .line 46
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->context:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    .line 52
    const/16 v0, 0x1a8

    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    .line 53
    const/16 v0, 0x66

    iput v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    .line 54
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->makeSpectrum()V

    .line 55
    return-void
.end method

.method private makeSpectrum()V
    .registers 29

    .prologue
    .line 107
    const/4 v3, 0x6

    new-array v7, v3, [I

    fill-array-data v7, :array_110

    .line 112
    .local v7, colors:[I
    const/4 v3, 0x6

    new-array v8, v3, [F

    fill-array-data v8, :array_120

    .line 116
    .local v8, positions:[F
    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_130

    .line 120
    .local v15, pos1:[F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 121
    .local v27, spec:Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    .local v22, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 123
    .local v2, shaderA:Landroid/graphics/Shader;
    new-instance v26, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 124
    .local v26, mOvalHueSat:Landroid/graphics/Paint;
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 125
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 127
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    const/4 v10, 0x1

    invoke-direct {v3, v4, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    .line 131
    .local v23, drawnColors1:[[I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_78
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_c0

    .line 136
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    .line 139
    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .local v25, last:Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 143
    .local v21, satu:Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 146
    const/16 v24, 0x0

    :goto_b7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_de

    .line 152
    return-void

    .line 132
    .end local v21           #satu:Landroid/graphics/Paint;
    .end local v25           #last:Landroid/graphics/Canvas;
    :cond_c0
    aget-object v3, v23, v24

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 133
    aget-object v3, v23, v24

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v3, v4

    .line 134
    aget-object v3, v23, v24

    const/4 v4, 0x2

    const/high16 v5, -0x100

    aput v5, v3, v4

    .line 131
    add-int/lit8 v24, v24, 0x1

    goto :goto_78

    .line 147
    .restart local v21       #satu:Landroid/graphics/Paint;
    .restart local v25       #last:Landroid/graphics/Canvas;
    :cond_de
    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    int-to-float v13, v3

    aget-object v14, v23, v24

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 149
    .local v9, shaderB1:Landroid/graphics/Shader;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 150
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v16, v25

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 146
    add-int/lit8 v24, v24, 0x1

    goto :goto_b7

    .line 107
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

    .line 112
    :array_120
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 116
    :array_130
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public getAvailableColor()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 70
    const/4 v0, 0x1

    .line 71
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getColor()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 75
    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    if-gez v2, :cond_7

    iput v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 76
    :cond_7
    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    if-gez v2, :cond_d

    iput v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 77
    :cond_d
    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    if-lt v2, v3, :cond_19

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 78
    :cond_19
    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    if-lt v2, v3, :cond_25

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 82
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    iget v4, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2e} :catch_33

    move-result v0

    .line 88
    .local v0, color:I
    :goto_2f
    const/high16 v2, -0x100

    or-int/2addr v2, v0

    return v2

    .line 83
    .end local v0           #color:I
    :catch_33
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 85
    const/high16 v0, -0x100

    .restart local v0       #color:I
    goto :goto_2f
.end method

.method public getXY()[I
    .registers 4

    .prologue
    .line 164
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 165
    .local v0, val:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    aput v2, v0, v1

    .line 166
    const/4 v1, 0x1

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    aput v2, v0, v1

    .line 168
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40f0

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 183
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 188
    :cond_17
    packed-switch v0, :pswitch_data_b8

    .line 212
    :goto_1a
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 190
    :pswitch_1f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 192
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;->onColorChanged(I)V

    .line 194
    :pswitch_37
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 195
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    if-gez v1, :cond_4c

    iput v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 196
    :cond_4c
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    if-gez v1, :cond_52

    iput v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 197
    :cond_52
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    if-lt v1, v2, :cond_5e

    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 198
    :cond_5e
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    if-lt v1, v2, :cond_6a

    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 199
    :cond_6a
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;->onColorChanged(I)V

    .line 200
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->invalidate()V

    goto :goto_1a

    .line 203
    :pswitch_77
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    if-gez v1, :cond_7d

    iput v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 204
    :cond_7d
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    if-gez v1, :cond_83

    iput v3, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 205
    :cond_83
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    if-lt v1, v2, :cond_8f

    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 206
    :cond_8f
    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    if-lt v1, v2, :cond_9b

    iget v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 207
    :cond_9b
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;->onColorChanged(I)V

    .line 208
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->invalidate()V

    .line 209
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1a

    .line 188
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_77
        :pswitch_37
    .end packed-switch
.end method

.method public setGrdientColorChangedListener(Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->mGrdientColorChangedListener:Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;

    .line 177
    return-void
.end method

.method public setXY(II)V
    .registers 4
    .parameter "xpos"
    .parameter "ypos"

    .prologue
    .line 155
    iput p1, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->x:I

    .line 156
    iput p2, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->y:I

    .line 157
    if-gez p1, :cond_7

    const/4 p1, 0x0

    .line 158
    :cond_7
    if-gez p2, :cond_a

    const/4 p2, 0x0

    .line 159
    :cond_a
    iget v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    if-lt p1, v0, :cond_12

    iget v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->WIDTH:I

    add-int/lit8 p1, v0, -0x1

    .line 160
    :cond_12
    iget v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    if-lt p2, v0, :cond_1a

    iget v0, p0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->HEIGHT:I

    add-int/lit8 p2, v0, -0x1

    .line 161
    :cond_1a
    return-void
.end method
