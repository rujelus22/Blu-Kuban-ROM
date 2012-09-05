.class public Lcom/google/android/maps/driveabout/vector/y;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I

.field d:Ljava/nio/ByteBuffer;

.field protected e:I

.field protected f:LA/b;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->e:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->h:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/y;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/y;->d()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/y;[BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/y;->a([BI)V

    return-void
.end method

.method private a([BI)V
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/y;->h:I

    if-lez v1, :cond_1e

    :goto_5
    if-ge v0, p2, :cond_23

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/y;->h:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/y;->h:I

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_23
    return-void
.end method

.method private d()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    if-nez v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/y;->b:I

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_19

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    :cond_13
    :goto_13
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/y;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    return-void

    :cond_19
    new-instance v1, LA/b;

    invoke-direct {v1, v0}, LA/b;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/y;->a()V

    goto :goto_13

    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    invoke-virtual {v0}, LA/b;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/y;->a()V

    goto :goto_13
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    invoke-virtual {v0, v1}, LA/b;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    iget-object v0, v0, LA/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    iget v0, v0, LA/b;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    :cond_19
    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/y;->h:I

    return-void
.end method

.method public a(II)V
    .registers 11

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v1, v0

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v2, v0

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v3, v0

    int-to-byte v4, p1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_41

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v1, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v2, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v3, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v4, v5, v6

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/y;->a()V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_41
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/y;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->c:I

    return-void
.end method

.method protected a(IZ)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/y;->a([BI)V

    :goto_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz p2, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    invoke-virtual {v0}, LA/b;->c()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    :cond_22
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    :cond_24
    return-void

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/y;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/z;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/vector/z;-><init>(Lcom/google/android/maps/driveabout/vector/y;)V

    invoke-virtual {v0, v1}, LA/b;->a(LA/d;)V

    goto :goto_a
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 2

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/y;->e:I

    return v0
.end method

.method public b(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/y;->b:I

    if-le p1, v0, :cond_24

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/y;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    if-nez v2, :cond_44

    const/16 v2, 0x1000

    if-ge v0, v2, :cond_25

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    :goto_22
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/y;->b:I

    :cond_24
    return-void

    :cond_25
    new-instance v2, LA/b;

    invoke-direct {v2, v0}, LA/b;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    invoke-virtual {v0, v2, v3}, LA/b;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    iget-object v0, v0, LA/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    iget v0, v0, LA/b;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    goto :goto_22

    :cond_44
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    invoke-virtual {v2, v0}, LA/b;->c(I)V

    goto :goto_22
.end method

.method public b(II)V
    .registers 11

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v1, v0

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v2, v0

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v3, v0

    int-to-byte v4, p1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_41

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v2, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v3, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v4, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    aput-byte v1, v5, v6

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/y;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_3e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/y;->a()V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_41
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/y;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->c:I

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/y;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    invoke-virtual {v0}, LA/b;->c()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    return-void
.end method

.method public c()I
    .registers 3

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->f:LA/b;

    invoke-virtual {v1}, LA/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    return v0

    :cond_19
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/y;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->e:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x4

    const/16 v2, 0x1401

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/y;->c:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->k()Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/y;->a(IZ)V

    return-void
.end method
