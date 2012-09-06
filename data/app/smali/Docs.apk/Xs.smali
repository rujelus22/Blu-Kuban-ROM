.class public LXs;
.super Ljava/lang/Object;
.source "BitmapManipulator.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    .line 37
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)LXs;
    .registers 2
    .parameter

    .prologue
    .line 309
    new-instance v0, LXs;

    invoke-direct {v0, p0}, LXs;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;I)LXs;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 325
    if-lt p1, v1, :cond_22

    move v0, v1

    :goto_5
    const-string v3, "Need sampleSize >= 1"

    invoke-static {v0, v3}, LafQ;->a(ZLjava/lang/Object;)V

    .line 327
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 328
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 329
    const/4 v3, 0x0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_24

    :goto_18
    const-string v2, "Failed decoding bitmap"

    invoke-static {v1, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 332
    invoke-static {v0}, LXs;->a(Landroid/graphics/Bitmap;)LXs;

    move-result-object v0

    return-object v0

    :cond_22
    move v0, v2

    .line 325
    goto :goto_5

    :cond_24
    move v1, v2

    .line 331
    goto :goto_18
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 293
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    :cond_9
    iput-object p1, p0, LXs;->a:Landroid/graphics/Bitmap;

    .line 296
    return-void
.end method

.method public static a(LXu;LXu;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 271
    invoke-virtual {p0}, LXu;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, LXu;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 272
    invoke-virtual {p1}, LXu;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, LXu;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 274
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public a()LXs;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 75
    const-string v0, "BitmapManipulator"

    const-string v1, "Converting bitmap to grayscale"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 81
    invoke-virtual {v2, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 82
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 83
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 84
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 86
    iget-object v3, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    invoke-direct {p0, v0}, LXs;->a(Landroid/graphics/Bitmap;)V

    .line 88
    return-object p0
.end method

.method public a(FI)LXs;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 101
    cmpl-float v0, p1, v6

    if-nez v0, :cond_6

    .line 122
    :goto_5
    return-object p0

    .line 105
    :cond_6
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    new-instance v2, Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v6, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    aput v6, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/16 v4, 0xa

    aput v6, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v6, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/16 v4, 0xf

    aput v6, v3, v4

    const/16 v4, 0x10

    aput v6, v3, v4

    const/16 v4, 0x11

    aput v6, v3, v4

    const/16 v4, 0x12

    const/high16 v5, 0x3f80

    div-float/2addr v5, p1

    aput v5, v3, v4

    const/16 v4, 0x13

    aput v6, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 116
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 117
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 118
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 120
    iget-object v3, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-direct {p0, v0}, LXs;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5
.end method

.method public a(I)LXs;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 43
    rem-int/lit16 v0, p1, 0x168

    if-eqz v0, :cond_38

    .line 44
    const-string v0, "BitmapManipulator"

    const-string v2, "Rotating image by %d deg"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 48
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 49
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 51
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, LXs;->a(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_38
    return-object p0
.end method

.method public a(LXu;)LXs;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0}, LXs;->a()LXu;

    move-result-object v0

    invoke-static {v0, p1}, LXs;->a(LXu;LXu;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 193
    invoke-virtual {p1}, LXu;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v2, v0

    .line 203
    :goto_19
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 206
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, LXu;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, LXu;->b()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, LXs;->a(Landroid/graphics/Bitmap;)V

    .line 211
    return-object p0

    .line 199
    :cond_42
    invoke-virtual {p1}, LXu;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v2, v0

    goto :goto_19
.end method

.method public a(LXu;I)LXs;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    .line 231
    invoke-virtual {p0}, LXs;->a()LXu;

    move-result-object v0

    invoke-static {v0, p1}, LXs;->a(LXu;LXu;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 235
    invoke-virtual {p1}, LXu;->a()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 236
    invoke-virtual {p1}, LXu;->b()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    move v2, v1

    .line 245
    :goto_2b
    invoke-virtual {p1}, LXu;->a()I

    move-result v3

    invoke-virtual {p1}, LXu;->b()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 248
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 249
    invoke-virtual {v3, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 250
    iget-object v5, p0, LXs;->a:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, LXu;->a()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p1}, LXu;->b()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-direct {v1, v2, v0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 257
    invoke-direct {p0, v3}, LXs;->a(Landroid/graphics/Bitmap;)V

    .line 258
    return-object p0

    .line 241
    :cond_6f
    invoke-virtual {p1}, LXu;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 242
    invoke-virtual {p1}, LXu;->a()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    move v0, v1

    goto :goto_2b
.end method

.method public a(Ljava/io/OutputStream;I)LXs;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 162
    return-object p0
.end method

.method public a()LXu;
    .registers 4

    .prologue
    .line 281
    new-instance v0, LXu;

    iget-object v1, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, LXs;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, LXu;-><init>(II)V

    return-object v0
.end method

.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, LXs;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LXs;->a(Landroid/graphics/Bitmap;)V

    .line 289
    return-void
.end method
