.class public Lorg/bouncycastle/crypto/a/b;
.super Lorg/bouncycastle/crypto/a/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/a/a;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/a/b;->c()V

    return-void
.end method

.method private a(III)I
    .registers 6

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private b(III)I
    .registers 5

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private c(III)I
    .registers 6

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a([BI)I
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/a/b;->e()V

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->a:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/g/a;->a(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->b:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/g/a;->a(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->c:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/g/a;->a(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->d:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/g/a;->a(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->e:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/g/a;->a(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/a/b;->c()V

    const/16 v0, 0x14

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-1"

    return-object v0
.end method

.method protected a(J)V
    .registers 7

    const/16 v3, 0xe

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->g:I

    if-le v0, v3, :cond_9

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/a/b;->f()V

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method protected b([BI)V
    .registers 6

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    iget v2, p0, Lorg/bouncycastle/crypto/a/b;->g:I

    aput v0, v1, v2

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->g:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_30

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/a/b;->f()V

    :cond_30
    return-void
.end method

.method public c()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/a/a;->c()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->a:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->b:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->c:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->d:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->e:I

    iput v1, p0, Lorg/bouncycastle/crypto/a/b;->g:I

    move v0, v1

    :goto_20
    iget-object v2, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    array-length v2, v2

    if-ne v0, v2, :cond_26

    return-void

    :cond_26
    iget-object v2, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method protected f()V
    .registers 11

    const/16 v0, 0x10

    :goto_2
    const/16 v1, 0x50

    if-lt v0, v1, :cond_43

    iget v6, p0, Lorg/bouncycastle/crypto/a/b;->a:I

    iget v5, p0, Lorg/bouncycastle/crypto/a/b;->b:I

    iget v4, p0, Lorg/bouncycastle/crypto/a/b;->c:I

    iget v3, p0, Lorg/bouncycastle/crypto/a/b;->d:I

    iget v2, p0, Lorg/bouncycastle/crypto/a/b;->e:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_12
    const/4 v7, 0x4

    if-lt v0, v7, :cond_6a

    const/4 v0, 0x0

    :goto_16
    const/4 v7, 0x4

    if-lt v0, v7, :cond_f5

    const/4 v0, 0x0

    :goto_1a
    const/4 v7, 0x4

    if-lt v0, v7, :cond_180

    const/4 v0, 0x0

    :goto_1e
    const/4 v7, 0x3

    if-le v0, v7, :cond_20b

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->a:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->a:I

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->b:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->b:I

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->c:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->c:I

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->d:I

    iget v0, p0, Lorg/bouncycastle/crypto/a/b;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/a/b;->g:I

    const/4 v0, 0x0

    :goto_3e
    const/16 v1, 0x10

    if-lt v0, v1, :cond_296

    return-void

    :cond_43
    iget-object v1, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v2, v0, -0x3

    aget v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v3, v0, -0x8

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v3, v0, -0xe

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v3, v0, -0x10

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6a
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/a/b;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, 0x5a827999

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/a/b;->a(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lorg/bouncycastle/crypto/a/b;->a(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lorg/bouncycastle/crypto/a/b;->a(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, 0x5a827999

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/crypto/a/b;->a(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_f5
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, 0x6ed9eba1

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, 0x6ed9eba1

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    :cond_180
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/a/b;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, -0x70e44324

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/a/b;->c(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lorg/bouncycastle/crypto/a/b;->c(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lorg/bouncycastle/crypto/a/b;->c(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, -0x70e44324

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/crypto/a/b;->c(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, -0x70e44324

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1a

    :cond_20b
    shl-int/lit8 v7, v6, 0x5

    ushr-int/lit8 v8, v6, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    add-int/2addr v1, v7

    const v7, -0x359d3e2a

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v2

    shl-int/lit8 v2, v1, 0x5

    ushr-int/lit8 v7, v1, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v2, v7

    const v7, -0x359d3e2a

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    shl-int/lit8 v2, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v2

    shl-int/lit8 v2, v3, 0x5

    ushr-int/lit8 v7, v3, 0x1b

    or-int/2addr v2, v7

    invoke-direct {p0, v1, v6, v5}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v9, v8, 0x1

    aget v7, v7, v8

    add-int/2addr v2, v7

    const v7, -0x359d3e2a

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    shl-int/lit8 v2, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v2, v1

    shl-int/lit8 v1, v4, 0x5

    ushr-int/lit8 v7, v4, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v3, v2, v6}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v8, v9, 0x1

    aget v7, v7, v9

    add-int/2addr v1, v7

    const v7, -0x359d3e2a

    add-int/2addr v1, v7

    add-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v1

    shl-int/lit8 v1, v5, 0x5

    ushr-int/lit8 v7, v5, 0x1b

    or-int/2addr v1, v7

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/crypto/a/b;->b(III)I

    move-result v7

    add-int/2addr v7, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    add-int/lit8 v1, v8, 0x1

    aget v8, v9, v8

    add-int/2addr v7, v8

    const v8, -0x359d3e2a

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1e

    :cond_296
    iget-object v1, p0, Lorg/bouncycastle/crypto/a/b;->f:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e
.end method
