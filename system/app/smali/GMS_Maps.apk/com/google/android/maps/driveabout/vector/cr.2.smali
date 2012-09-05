.class public Lcom/google/android/maps/driveabout/vector/cr;
.super Lcom/google/android/maps/driveabout/vector/cp;


# instance fields
.field private final l:[I

.field private m:Lcom/google/android/maps/driveabout/vector/aT;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    return-void
.end method

.method protected constructor <init>(III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(III)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    return-void
.end method

.method public static b(II)Lcom/google/android/maps/driveabout/vector/cr;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cr;

    const/16 v1, 0x1402

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/maps/driveabout/vector/cr;-><init>(III)V

    return-object v0
.end method

.method private f(Lcom/google/android/maps/driveabout/vector/aT;)Z
    .registers 8

    const v5, 0x8892

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_15
    return v0

    :cond_16
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    invoke-interface {v0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aget v1, v3, v1

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cr;->h:I

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->a:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    const v4, 0x88e4

    invoke-interface {v0, v5, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    move v0, v2

    goto :goto_15
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aput v1, v0, v1

    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;I)V
    .registers 10

    const v6, 0x8892

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cr;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aget v0, v0, v5

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->f(Lcom/google/android/maps/driveabout/vector/aT;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_1a
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aget v1, v1, v5

    invoke-interface {v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cr;->g:I

    mul-int/lit8 v3, p2, 0x2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cr;->h:I

    mul-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-interface {v0, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_d
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->m:Lcom/google/android/maps/driveabout/vector/aT;

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->m:Lcom/google/android/maps/driveabout/vector/aT;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cr;->a:I

    :cond_25
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cr;->m:Lcom/google/android/maps/driveabout/vector/aT;

    return-void
.end method

.method public d()I
    .registers 3

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    invoke-virtual {v1}, LA/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->c:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const v4, 0x8892

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cr;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aget v0, v0, v3

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->f(Lcom/google/android/maps/driveabout/vector/aT;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_1a
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cr;->l:[I

    aget v1, v1, v3

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cr;->g:I

    invoke-interface {v0, v1, v2, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-interface {v0, v4, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_d
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-eqz v0, :cond_94

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->e:I

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->g:I

    const/16 v2, 0x1402

    if-ne v0, v2, :cond_4c

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cR;->b()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cr;->a(Ljava/nio/ShortBuffer;I)V

    :goto_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/googlenav/android/I;->a:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    invoke-virtual {v0}, LA/f;->c()V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    :cond_3a
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cr;->c:[I

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cr;->a()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cr;->i:I

    invoke-virtual {v2, v0, v3}, LA/f;->a(Ljava/nio/ShortBuffer;I)V

    goto :goto_21

    :cond_4c
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->g:I

    const/16 v2, 0x1400

    if-ne v0, v2, :cond_73

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cR;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cr;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_21

    :cond_64
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cr;->a()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cr;->i:I

    invoke-virtual {v2, v0, v3}, LA/f;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_21

    :cond_73
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cR;->c()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cr;->c:[I

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    goto :goto_21

    :cond_87
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cr;->a()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cr;->k:LA/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cr;->f:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v2, v0}, LA/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_21

    :cond_94
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_3c
.end method
