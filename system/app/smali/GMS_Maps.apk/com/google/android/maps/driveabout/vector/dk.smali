.class public Lcom/google/android/maps/driveabout/vector/dk;
.super Lcom/google/android/maps/driveabout/vector/di;


# instance fields
.field private final m:[I

.field private n:Lcom/google/android/maps/driveabout/vector/aT;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    aput v1, v0, v1

    :cond_c
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->n:Lcom/google/android/maps/driveabout/vector/aT;

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->n:Lcom/google/android/maps/driveabout/vector/aT;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->n:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/dk;->a:I

    :cond_25
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->n:Lcom/google/android/maps/driveabout/vector/aT;

    return-void
.end method

.method public d()I
    .registers 3

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->l:LA/f;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->l:LA/f;

    invoke-virtual {v1}, LA/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->g:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->g:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 8

    const v5, 0x8892

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dk;->n:Lcom/google/android/maps/driveabout/vector/aT;

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    aget v1, v1, v4

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    if-nez v1, :cond_1f

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/dk;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    :cond_4b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->m:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x3

    const/16 v2, 0x140c

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_d
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->c:Z

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->i:I

    mul-int/lit8 v0, v0, 0x3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cR;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->l:LA/f;

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dk;->g:[I

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :goto_1b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/googlenav/android/I;->a:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->l:LA/f;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dk;->l:LA/f;

    invoke-virtual {v0}, LA/f;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/dk;->l:LA/f;

    :cond_34
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/dk;->g:[I

    :cond_36
    :goto_36
    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dk;->a()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dk;->l:LA/f;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dk;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, LA/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_1b

    :cond_42
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_36
.end method
