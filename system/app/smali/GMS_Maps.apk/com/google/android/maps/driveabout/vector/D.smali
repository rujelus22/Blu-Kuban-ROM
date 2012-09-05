.class public Lcom/google/android/maps/driveabout/vector/D;
.super Lcom/google/android/maps/driveabout/vector/y;


# instance fields
.field private final g:[I

.field private h:Lcom/google/android/maps/driveabout/vector/aT;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/y;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:Lcom/google/android/maps/driveabout/vector/aT;

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:Lcom/google/android/maps/driveabout/vector/aT;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/D;->e:I

    :cond_25
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:Lcom/google/android/maps/driveabout/vector/aT;

    return-void
.end method

.method public c()I
    .registers 3

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:LA/b;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:LA/b;

    invoke-virtual {v1}, LA/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->a:[B

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 8

    const v5, 0x8892

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:Lcom/google/android/maps/driveabout/vector/aT;

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/y;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    aget v1, v1, v4

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1f

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/D;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->d:Ljava/nio/ByteBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:Ljava/nio/ByteBuffer;

    :cond_49
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x4

    const/16 v2, 0x1401

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_d
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/D;->c:I

    mul-int/lit8 v1, v0, 0x4

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cR;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->d:Ljava/nio/ByteBuffer;

    sget-boolean v0, Lcom/google/googlenav/android/I;->a:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/D;->a(IZ)V

    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_13

    :cond_19
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/y;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_16
.end method
