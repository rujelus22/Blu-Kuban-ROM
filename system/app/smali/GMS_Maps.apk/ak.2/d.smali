.class public Lak/d;
.super Ljava/io/InputStream;


# instance fields
.field private a:I

.field private b:[B

.field private c:I

.field private d:I

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lak/d;->e:Ljava/io/InputStream;

    iput p2, p0, Lak/d;->a:I

    const/16 v0, 0x1000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lak/d;->b:[B

    return-void
.end method

.method private a()Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lak/d;->a:I

    if-gtz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lak/d;->c:I

    iget v2, p0, Lak/d;->d:I

    if-lt v1, v2, :cond_28

    iget-object v1, p0, Lak/d;->e:Ljava/io/InputStream;

    iget-object v2, p0, Lak/d;->b:[B

    iget v3, p0, Lak/d;->a:I

    iget-object v4, p0, Lak/d;->b:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Lak/d;->d:I

    iget v1, p0, Lak/d;->d:I

    if-gtz v1, :cond_26

    iput v0, p0, Lak/d;->a:I

    goto :goto_5

    :cond_26
    iput v0, p0, Lak/d;->c:I

    :cond_28
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public available()I
    .registers 3

    iget v0, p0, Lak/d;->d:I

    iget v1, p0, Lak/d;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 4

    invoke-direct {p0}, Lak/d;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lak/d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lak/d;->a:I

    iget-object v0, p0, Lak/d;->b:[B

    iget v1, p0, Lak/d;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lak/d;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_7
.end method

.method public read([BII)I
    .registers 7

    invoke-direct {p0}, Lak/d;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lak/d;->d:I

    iget v1, p0, Lak/d;->c:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lak/d;->b:[B

    iget v2, p0, Lak/d;->c:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lak/d;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lak/d;->c:I

    iget v1, p0, Lak/d;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lak/d;->a:I

    goto :goto_7
.end method
