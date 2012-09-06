.class public LT/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/f;


# instance fields
.field protected a:I

.field private volatile b:Landroid/graphics/Bitmap;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LT/f;->a:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    .line 103
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, LT/f;-><init>(IIZ)V

    .line 54
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LT/f;->a:I

    .line 57
    if-eqz p3, :cond_1c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 59
    :goto_a
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    .line 60
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a

    .line 63
    :cond_1f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILT/g;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LT/f;->a:I

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, LT/f;->a(Landroid/content/Context;Ljava/lang/Integer;LT/g;)V

    .line 90
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_36

    .line 91
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

    .line 95
    :cond_36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LT/f;->a:I

    .line 75
    iput-object p1, p0, LT/f;->b:Landroid/graphics/Bitmap;

    .line 76
    if-nez p1, :cond_12

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_12
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LT/f;->a:I

    .line 39
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_18
    return-void
.end method

.method public constructor <init>([IIIZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LT/f;->a:I

    .line 66
    if-eqz p4, :cond_1c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 68
    :goto_a
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    .line 69
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a

    .line 72
    :cond_1f
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Integer;LT/g;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    sget-object v1, LT/g;->b:LT/g;

    if-ne p3, v1, :cond_d

    .line 109
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 112
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    .line 113
    sget-object v0, LT/g;->b:LT/g;

    if-ne p3, v0, :cond_30

    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 115
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 117
    :cond_30
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(I)LS/f;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p1, :cond_4

    .line 236
    :goto_3
    return-object p0

    .line 230
    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 231
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 234
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    new-instance p0, LT/f;

    invoke-direct {p0, v0}, LT/f;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public a(II)LS/f;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0}, LT/f;->a()I

    move-result v3

    invoke-virtual {p0}, LT/f;->b()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, LT/f;->a(IIIIII)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIIII)LS/f;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v0, LT/i;

    move-object v1, p0

    move v2, p5

    move v3, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, LT/i;-><init>(LT/f;IIIIII)V

    .line 195
    mul-int v1, p5, p6

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_15

    .line 203
    invoke-virtual {v0}, LT/i;->c()LS/e;

    .line 205
    :cond_15
    return-object v0
.end method

.method public a(LS/e;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    check-cast p1, LT/e;

    .line 211
    invoke-virtual {p1}, LT/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, LT/f;->b:Landroid/graphics/Bitmap;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    return-void
.end method

.method public a([IIIIIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 178
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public c()LS/e;
    .registers 4

    .prologue
    .line 182
    new-instance v0, LT/e;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, LT/e;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 148
    iget v0, p0, LT/f;->a:I

    if-gtz v0, :cond_10

    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 149
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    .line 152
    :cond_10
    return-void
.end method

.method public e()LS/f;
    .registers 2

    .prologue
    .line 132
    iget v0, p0, LT/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LT/f;->a:I

    .line 133
    return-object p0
.end method

.method public f()V
    .registers 3

    .prologue
    .line 138
    iget v0, p0, LT/f;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LT/f;->a:I

    .line 139
    iget v0, p0, LT/f;->a:I

    if-gez v0, :cond_25

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative reference count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LT/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_25
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 216
    iget v0, p0, LT/f;->a:I

    if-eqz v0, :cond_4

    .line 220
    :cond_4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 221
    return-void
.end method

.method public g()I
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, LT/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_5
.end method

.method public h()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, LT/f;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
