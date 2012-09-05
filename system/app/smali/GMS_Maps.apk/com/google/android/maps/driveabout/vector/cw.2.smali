.class public Lcom/google/android/maps/driveabout/vector/cw;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private final e:[I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:F

.field private k:F

.field private final l:Lcom/google/android/maps/driveabout/vector/aT;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->f:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->g:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->h:Z

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->i:Z

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->n:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    aput v1, v0, v1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I

    return-void
.end method

.method public static a(II)I
    .registers 2

    :goto_0
    if-ge p1, p0, :cond_5

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return p1
.end method

.method static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/bV;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/maps/driveabout/vector/bV;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method static c(Landroid/graphics/Bitmap;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_14

    add-int/lit8 v0, v1, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljavax/microedition/khronos/opengles/GL10;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;I)V
    .registers 6

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;II)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cw;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/bV;)Landroid/graphics/Bitmap;

    move-result-object v1

    move v7, v6

    :goto_1d
    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;IIZZZ)V

    if-eqz v7, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-nez v0, :cond_2b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    return-void

    :cond_2c
    move v7, v4

    move-object v1, p1

    goto :goto_1d
.end method

.method public a(Landroid/graphics/Bitmap;II)V
    .registers 12

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cw;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/bV;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x1

    move v7, v0

    :goto_15
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;IIZZZ)V

    if-eqz v7, :cond_26

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-nez v0, :cond_26

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_26
    return-void

    :cond_27
    move v7, v4

    move-object v1, p1

    goto :goto_15
.end method

.method declared-synchronized a(Landroid/graphics/Bitmap;IIZZZ)V
    .registers 18

    monitor-enter p0

    if-eqz p5, :cond_10

    if-eqz p6, :cond_10

    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have both isMipMap and autoGenerateMipMap be true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz p6, :cond_77

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aT;->D()Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v1, 0x1

    move v2, v1

    :goto_20
    if-nez p1, :cond_7a

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cw;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:I

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v6

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v7

    :goto_30
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aT;->B()I

    move-result v1

    if-gt v6, v1, :cond_3a

    if-le v7, v1, :cond_8d

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Textures with dimensions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are larger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " the maximum supported size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    const/4 v1, 0x0

    move v2, v1

    goto :goto_20

    :cond_7a
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cw;->c:I

    if-eqz p5, :cond_8b

    div-int/lit8 v1, p3, 0x2

    :goto_80
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    goto :goto_30

    :cond_8b
    move v1, p3

    goto :goto_80

    :cond_8d
    int-to-float v1, p2

    int-to-float v3, v6

    div-float/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->j:F

    int-to-float v1, p3

    int-to-float v3, v7

    div-float/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->k:F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-nez v1, :cond_a5

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    :cond_a5
    const/16 v1, 0xde1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->f:Z

    if-eqz v1, :cond_13d

    const/16 v1, 0xde1

    const/16 v3, 0x2802

    const v4, 0x46240400

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_bd
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->g:Z

    if-eqz v1, :cond_149

    const/16 v1, 0xde1

    const/16 v3, 0x2803

    const v4, 0x46240400

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_cb
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->h:Z

    if-eqz v1, :cond_16c

    if-nez p5, :cond_d3

    if-eqz v2, :cond_160

    :cond_d3
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->i:Z

    if-eqz v1, :cond_155

    const/16 v1, 0xde1

    const/16 v3, 0x2801

    const v4, 0x461c0c00

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_e1
    const/16 v1, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_eb
    if-eqz p1, :cond_1c0

    if-eqz p5, :cond_18d

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_f8
    if-lez v2, :cond_19f

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v1, 0x0

    add-int v9, v2, v3

    invoke-direct {v8, v1, v3, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p4, :cond_180

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    sget-object v10, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v2, v10}, Lcom/google/android/maps/driveabout/vector/bV;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_11c
    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    invoke-virtual {v5, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v5, 0xde1

    const v8, 0x8191

    const/4 v9, 0x0

    invoke-interface {v0, v5, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v8, 0xde1

    add-int/lit8 v5, v4, 0x1

    const/4 v9, 0x0

    invoke-static {v8, v4, v1, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/2addr v3, v2

    div-int/lit8 v1, v2, 0x2

    move v2, v1

    move v4, v5

    goto :goto_f8

    :cond_13d
    const/16 v1, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_bd

    :cond_149
    const/16 v1, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_cb

    :cond_155
    const/16 v1, 0xde1

    const/16 v3, 0x2801

    const v4, 0x461c0400

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto :goto_e1

    :cond_160
    const/16 v1, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_e1

    :cond_16c
    const/16 v1, 0xde1

    const/16 v3, 0x2801

    const/high16 v4, 0x4618

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v3, 0x2800

    const/high16 v4, 0x4618

    invoke-interface {v0, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_eb

    :cond_180
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v2, v10}, Lcom/google/android/maps/driveabout/vector/bV;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_11c

    :cond_18d
    if-eqz v2, :cond_1af

    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_19f
    :goto_19f
    if-nez p1, :cond_1d8

    mul-int v0, v6, v7

    mul-int/lit8 v0, v0, 0x3

    :goto_1a5
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->n:I

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-eqz v0, :cond_1ad

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->b:Landroid/graphics/Bitmap;
    :try_end_1ad
    .catchall {:try_start_10 .. :try_end_1ad} :catchall_d

    :cond_1ad
    monitor-exit p0

    return-void

    :cond_1af
    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x0

    :try_start_1b5
    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_19f

    :cond_1c0
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1907

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    goto :goto_19f

    :cond_1d8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1df
    .catchall {:try_start_1b5 .. :try_end_1df} :catchall_d

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_1a5
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq p1, v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to bind texture into an OpenGL context other than the one it was created from."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    aget v0, v0, v2

    if-eqz v0, :cond_1e

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    :cond_1e
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->f:Z

    return-void
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->j:F

    return v0
.end method

.method public b(Landroid/content/res/Resources;I)V
    .registers 10

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;IIZZZ)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-nez v0, :cond_1a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;II)V
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cw;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/bV;)Landroid/graphics/Bitmap;

    move-result-object p1

    move v7, v4

    :goto_15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;IIZZZ)V

    if-eqz v7, :cond_29

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-nez v0, :cond_29

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_29
    return-void

    :cond_2a
    move v7, v5

    goto :goto_15
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->g:Z

    return-void
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->k:F

    return v0
.end method

.method public c(Landroid/content/res/Resources;I)V
    .registers 6

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;II)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->h:Z

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->d:I

    return v0
.end method

.method public d(Landroid/content/res/Resources;I)V
    .registers 10

    const/4 v4, 0x1

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;IIZZZ)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    if-nez v0, :cond_1a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->i:Z

    return-void
.end method

.method public declared-synchronized e()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cw;->a:Z

    return-void
.end method

.method public declared-synchronized f()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I

    if-gtz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRef called on Texture with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " references!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ln/a;->b()Z

    move-result v1

    if-nez v1, :cond_2f

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    :try_start_2f
    const-string v1, "Texture"

    invoke-static {v1, v0}, Ln/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->l:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cw;->e:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->c(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->n:I
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_2c

    goto :goto_34
.end method

.method g()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->m:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cw;->n:I

    return v0
.end method
