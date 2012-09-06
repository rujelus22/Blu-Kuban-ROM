.class public Lz/r;
.super Lz/E;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/nio/ByteBuffer;

.field protected final b:I

.field protected c:I

.field private final f:Ljava/nio/ShortBuffer;

.field private final g:I

.field private h:[I

.field private i:[I


# virtual methods
.method public a(Lz/j;Lz/i;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x88e4

    const v6, 0x8893

    const v5, 0x8892

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-super {p0, p1, p2}, Lz/E;->a(Lz/j;Lz/i;)Z

    move-result v0

    .line 328
    if-eqz v0, :cond_62

    .line 330
    iget-boolean v1, p2, Lz/i;->e:Z

    if-eqz v1, :cond_63

    .line 331
    iget-object v1, p0, Lz/r;->h:[I

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 332
    iget-object v1, p0, Lz/r;->h:[I

    aget v1, v1, v3

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 333
    iget-object v1, p0, Lz/r;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    iget v1, p0, Lz/r;->b:I

    iget v2, p0, Lz/r;->c:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lz/r;->a:Ljava/nio/ByteBuffer;

    invoke-static {v5, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 336
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 337
    const-string v1, "InterleavedVertexData"

    const-string v2, "glBindBuffers"

    invoke-static {v1, v2}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lz/r;->f:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_62

    .line 340
    iget-object v1, p0, Lz/r;->i:[I

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 341
    iget-object v1, p0, Lz/r;->i:[I

    aget v1, v1, v3

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 342
    iget-object v1, p0, Lz/r;->f:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 343
    iget v1, p0, Lz/r;->g:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lz/r;->f:Ljava/nio/ShortBuffer;

    invoke-static {v6, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 345
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 346
    const-string v1, "InterleavedVertexData"

    const-string v2, "glBindBuffers"

    invoke-static {v1, v2}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_62
    :goto_62
    return v0

    .line 349
    :cond_63
    iget-object v1, p0, Lz/r;->h:[I

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 350
    iget-object v1, p0, Lz/r;->h:[I

    aput v3, v1, v3

    .line 351
    iget-object v1, p0, Lz/r;->f:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_62

    .line 352
    iget-object v1, p0, Lz/r;->i:[I

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 353
    iget-object v1, p0, Lz/r;->i:[I

    aput v3, v1, v3

    goto :goto_62
.end method
