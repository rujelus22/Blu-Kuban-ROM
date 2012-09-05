.class public Lcom/sprint/w/installer/util/ImageReflectionCreator;
.super Ljava/lang/Object;
.source "ImageReflectionCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mCurrent:Z

.field mDrawHalo:Z

.field mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->log:Lcom/sprint/id/logger/Logger;

    .line 27
    iput-object p1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 4
    .parameter "view"
    .parameter "currentPack"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->log:Lcom/sprint/id/logger/Logger;

    .line 36
    iput-object p1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    .line 37
    iput-boolean p2, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mCurrent:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mDrawHalo:Z

    .line 39
    return-void
.end method

.method public constructor <init>(ZLandroid/widget/ImageView;)V
    .registers 4
    .parameter "drawHalo"
    .parameter "view"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->log:Lcom/sprint/id/logger/Logger;

    .line 31
    iput-object p2, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    .line 32
    iput-boolean p1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mDrawHalo:Z

    .line 33
    return-void
.end method

.method private drawHaloAndReflection()V
    .registers 16

    .prologue
    const/high16 v14, 0x3f80

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v4, 0x0

    .line 111
    iget-object v1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 112
    .local v10, originalImage:Landroid/graphics/Bitmap;
    if-nez v10, :cond_27

    .line 114
    iget-object v1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 118
    :cond_27
    const/4 v7, 0x4

    .line 120
    .local v7, haloGap:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 121
    .local v9, oHeight:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int v11, v1, v7

    .line 122
    .local v11, width:I
    add-int v8, v9, v7

    .line 125
    .local v8, height:I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 127
    .local v6, bHaloed:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 131
    .local v5, p:Landroid/graphics/Paint;
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    const v1, 0x55ffffff

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    const/16 v1, 0x10

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    aput v4, v1, v13

    aput v4, v1, v12

    const/4 v2, 0x3

    int-to-float v3, v8

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v14, v1, v2

    const/4 v2, 0x5

    int-to-float v3, v8

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v11

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v3, v8

    aput v3, v1, v2

    const/16 v2, 0x8

    int-to-float v3, v11

    aput v3, v1, v2

    const/16 v2, 0x9

    add-int/lit8 v3, v8, -0x1

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    int-to-float v3, v11

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v4, v1, v2

    const/16 v2, 0xc

    add-int/lit8 v3, v11, -0x1

    int-to-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v4, v1, v2

    const/16 v2, 0xe

    aput v14, v1, v2

    const/16 v2, 0xf

    aput v4, v1, v2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 138
    int-to-float v1, v12

    int-to-float v2, v12

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    iget-boolean v1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mCurrent:Z

    if-eqz v1, :cond_b8

    .line 141
    new-instance v5, Landroid/graphics/Paint;

    .end local v5           #p:Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 142
    .restart local v5       #p:Landroid/graphics/Paint;
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    const/high16 v1, -0x6700

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    int-to-float v1, v12

    int-to-float v2, v12

    add-int/lit8 v3, v11, -0x2

    int-to-float v3, v3

    add-int/lit8 v4, v8, -0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 147
    :cond_b8
    iget-object v1, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-direct {p0}, Lcom/sprint/w/installer/util/ImageReflectionCreator;->drawReflection()V

    .line 151
    return-void
.end method

.method private drawReflection()V
    .registers 29

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    .local v1, originalImage:Landroid/graphics/Bitmap;
    if-nez v1, :cond_28

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 58
    :cond_28
    const/16 v24, 0x4

    .line 60
    .local v24, reflectionGap:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    .line 61
    .local v27, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 64
    .local v22, height:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v6, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 73
    .local v25, reflectionImage:Landroid/graphics/Bitmap;
    div-int/lit8 v2, v22, 0x3

    add-int v2, v2, v22

    add-int/lit8 v2, v2, 0x4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v27

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 77
    .local v21, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v7, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .local v12, deafaultPaint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 85
    const/4 v8, 0x0

    move/from16 v0, v22

    int-to-float v9, v0

    move/from16 v0, v27

    int-to-float v10, v0

    add-int/lit8 v2, v22, 0x4

    int-to-float v11, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    const/4 v2, 0x0

    add-int/lit8 v3, v22, 0x4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 92
    .local v23, paint:Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    add-int/lit8 v2, v22, 0x4

    int-to-float v15, v2

    const/16 v16, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v17, v0

    const v18, 0x70ffffff

    const v19, 0xffffff

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 94
    .local v13, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    const/4 v15, 0x0

    add-int/lit8 v2, v22, 0x4

    int-to-float v0, v2

    move/from16 v16, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v0, v2

    move/from16 v18, v0

    move-object v14, v7

    move-object/from16 v19, v23

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    check-cast v26, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .local v26, thumbDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v26, :cond_f8

    .line 103
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 107
    :goto_f7
    return-void

    .line 105
    :cond_f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Error decoding icon"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_f7
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sprint/w/installer/util/ImageReflectionCreator;->mDrawHalo:Z

    if-eqz v0, :cond_8

    .line 44
    invoke-direct {p0}, Lcom/sprint/w/installer/util/ImageReflectionCreator;->drawHaloAndReflection()V

    .line 48
    :goto_7
    return-void

    .line 46
    :cond_8
    invoke-direct {p0}, Lcom/sprint/w/installer/util/ImageReflectionCreator;->drawReflection()V

    goto :goto_7
.end method
