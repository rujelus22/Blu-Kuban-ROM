.class public Lasz;
.super Ljava/io/OutputStream;


# instance fields
.field private a:I

.field private a:[B

.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lasz;->a:I

    iput v0, p0, Lasz;->b:I

    invoke-virtual {p0}, Lasz;->b()V

    return-void
.end method

.method private static a(III)I
    .registers 4

    sub-int v0, p1, p2

    :goto_2
    if-ge v0, p0, :cond_8

    add-int/2addr v0, p1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    return p1
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lasz;->a:[I

    array-length v0, v0

    iget v1, p0, Lasz;->b:I

    invoke-static {p1, v0, v1}, Lasz;->a(III)I

    move-result v0

    iget-object v1, p0, Lasz;->a:[I

    array-length v1, v1

    if-le v0, v1, :cond_1a

    new-array v0, v0, [I

    iget-object v1, p0, Lasz;->a:[I

    iget v2, p0, Lasz;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lasz;->a:[I

    :cond_1a
    return-void
.end method

.method private c(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lasz;->a:[B

    array-length v0, v0

    iget v1, p0, Lasz;->a:I

    invoke-static {p1, v0, v1}, Lasz;->a(III)I

    move-result v0

    iget-object v1, p0, Lasz;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_1a

    new-array v0, v0, [B

    iget-object v1, p0, Lasz;->a:[B

    iget v2, p0, Lasz;->a:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lasz;->a:[B

    :cond_1a
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lasz;->b:I

    return v0
.end method

.method public a(I)I
    .registers 3

    iget-object v0, p0, Lasz;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lasz;->a:I

    iput v0, p0, Lasz;->b:I

    return-void
.end method

.method public a(I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lasz;->b(I)V

    iget-object v0, p0, Lasz;->a:[I

    iget v1, p0, Lasz;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lasz;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lasz;->a:[I

    aput p2, v0, p1

    return-void
.end method

.method public a(Ljava/io/OutputStream;II)V
    .registers 5

    iget-object v0, p0, Lasz;->a:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lasz;->a:I

    return v0
.end method

.method public b()V
    .registers 2

    invoke-virtual {p0}, Lasz;->a()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lasz;->a:[B

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lasz;->a:[I

    return-void
.end method

.method public write(I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lasz;->c(I)V

    iget-object v0, p0, Lasz;->a:[B

    iget v1, p0, Lasz;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lasz;->a:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .registers 6

    array-length v0, p1

    invoke-direct {p0, v0}, Lasz;->c(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lasz;->a:[B

    iget v2, p0, Lasz;->a:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lasz;->a:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lasz;->a:I

    return-void
.end method

.method public write([BII)V
    .registers 6

    invoke-direct {p0, p3}, Lasz;->c(I)V

    iget-object v0, p0, Lasz;->a:[B

    iget v1, p0, Lasz;->a:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lasz;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Lasz;->a:I

    return-void
.end method
