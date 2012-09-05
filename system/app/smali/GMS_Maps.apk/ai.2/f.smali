.class public Lai/f;
.super Ljava/lang/Object;

# interfaces
.implements Lah/f;


# instance fields
.field protected a:I

.field private volatile b:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lai/f;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lai/f;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lai/f;->a:I

    if-eqz p3, :cond_1c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_a
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a

    :cond_1f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILai/g;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lai/f;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lai/f;->a(Landroid/content/Context;Ljava/lang/Integer;Lai/g;)V

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null Bitmap! \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"; if seen during a test, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this usually means that the image file needs to be added to the test.config file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lai/f;->a:I

    iput-object p1, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lai/f;->a:I

    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method public constructor <init>([IIIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lai/f;->a:I

    if-eqz p4, :cond_1c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_a
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a

    :cond_1f
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Integer;Lai/g;)V
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lai/g;->b:Lai/g;

    if-ne p3, v1, :cond_d

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    sget-object v0, Lai/g;->b:Lai/g;

    if-ne p3, v0, :cond_30

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_30
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(I)Lah/f;
    .registers 9

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object p0

    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance p0, Lai/f;

    invoke-direct {p0, v0}, Lai/f;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public a(II)Lah/f;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lai/f;->a()I

    move-result v3

    invoke-virtual {p0}, Lai/f;->b()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lai/f;->a(IIIIII)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIIII)Lah/f;
    .registers 15

    new-instance v0, Lai/i;

    move-object v1, p0

    move v2, p5

    move v3, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lai/i;-><init>(Lai/f;IIIIII)V

    mul-int v1, p5, p6

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_15

    invoke-virtual {v0}, Lai/i;->c()Lah/e;

    :cond_15
    return-object v0
.end method

.method public a(Lah/e;II)V
    .registers 9

    check-cast p1, Lai/e;

    invoke-virtual {p1}, Lai/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a([IIIIIII)V
    .registers 16

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public c()Lah/e;
    .registers 4

    new-instance v0, Lai/e;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lai/e;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public d()V
    .registers 2

    iget v0, p0, Lai/f;->a:I

    if-gtz v0, :cond_10

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    :cond_10
    return-void
.end method

.method public e()Lah/f;
    .registers 2

    iget v0, p0, Lai/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lai/f;->a:I

    return-object p0
.end method

.method public f()V
    .registers 3

    iget v0, p0, Lai/f;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lai/f;->a:I

    iget v0, p0, Lai/f;->a:I

    if-gez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative reference count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lai/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    return-void
.end method

.method protected finalize()V
    .registers 2

    iget v0, p0, Lai/f;->a:I

    if-eqz v0, :cond_4

    :cond_4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()I
    .registers 3

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_5
.end method

.method public h()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lai/f;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
