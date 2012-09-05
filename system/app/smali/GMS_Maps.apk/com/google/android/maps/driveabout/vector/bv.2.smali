.class public Lcom/google/android/maps/driveabout/vector/bv;
.super Lcom/google/android/maps/driveabout/vector/bu;


# instance fields
.field private final h:[I

.field private i:Lcom/google/android/maps/driveabout/vector/aT;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    aput v1, v0, v1

    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;I)V
    .registers 9

    const v5, 0x8893

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bv;->i:Lcom/google/android/maps/driveabout/vector/aT;

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    aget v1, v1, v4

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_1f

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bv;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->f:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->f:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    :cond_4b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->c:I

    const/16 v2, 0x1403

    invoke-interface {v0, p2, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_d
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->i:Lcom/google/android/maps/driveabout/vector/aT;

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->i:Lcom/google/android/maps/driveabout/vector/aT;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->i:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->h:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/bv;->f:I

    :cond_25
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bv;->i:Lcom/google/android/maps/driveabout/vector/aT;

    return-void
.end method

.method public d()I
    .registers 3

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->g:LA/h;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->g:LA/h;

    invoke-virtual {v1}, LA/h;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->a:[S

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->a:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->D()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cR;->b()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->g:LA/h;

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bv;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :goto_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/googlenav/android/I;->a:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->g:LA/h;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->g:LA/h;

    invoke-virtual {v0}, LA/h;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bv;->g:LA/h;

    :cond_36
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bv;->a:[S

    :cond_38
    :goto_38
    return-void

    :cond_39
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bv;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bv;->g:LA/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bv;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, LA/h;->a(Ljava/nio/ShortBuffer;)V

    goto :goto_1b

    :cond_44
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_38
.end method
