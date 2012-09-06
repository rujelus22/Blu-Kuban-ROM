.class public Lz/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field protected b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# virtual methods
.method protected a(ILjava/lang/String;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 81
    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_26
    const-string v1, "ShaderProgram"

    const-string v2, "glGetUniformLocation"

    invoke-static {v1, v2}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 213
    const v1, 0x8b31

    invoke-virtual {p0, v1, p1}, Lz/y;->b(ILjava/lang/String;)I

    move-result v2

    .line 214
    if-nez v2, :cond_c

    .line 242
    :cond_b
    :goto_b
    return v0

    .line 218
    :cond_c
    const v1, 0x8b30

    invoke-virtual {p0, v1, p2}, Lz/y;->b(ILjava/lang/String;)I

    move-result v3

    .line 219
    if-eqz v3, :cond_b

    .line 223
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 224
    if-eqz v1, :cond_45

    .line 225
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 226
    const-string v2, "ShaderState"

    const-string v4, "glAttachShader"

    invoke-static {v2, v4}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 228
    const-string v2, "ShaderState"

    const-string v3, "glAttachShader"

    invoke-static {v2, v3}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v1}, Lz/y;->b(I)V

    .line 232
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 233
    new-array v2, v5, [I

    .line 234
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 235
    aget v2, v2, v0

    if-eq v2, v5, :cond_45

    .line 238
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_b

    :cond_45
    move v0, v1

    goto :goto_b
.end method

.method protected a(I)V
    .registers 3
    .parameter

    .prologue
    .line 68
    const-string v0, "uMVPMatrix"

    invoke-virtual {p0, p1, v0}, Lz/y;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lz/y;->b:I

    .line 69
    return-void
.end method

.method public a(Lz/j;Lz/i;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-boolean v0, p2, Lz/i;->e:Z

    iget-boolean v3, p0, Lz/y;->e:Z

    if-ne v0, v3, :cond_d

    iget-boolean v0, p2, Lz/i;->f:Z

    if-nez v0, :cond_d

    .line 172
    :cond_c
    :goto_c
    return v2

    .line 144
    :cond_d
    iget-boolean v0, p2, Lz/i;->e:Z

    if-nez v0, :cond_15

    iget-boolean v0, p2, Lz/i;->f:Z

    if-eqz v0, :cond_c

    .line 148
    :cond_15
    iget-boolean v0, p2, Lz/i;->e:Z

    iput-boolean v0, p0, Lz/y;->e:Z

    .line 149
    iget-boolean v0, p0, Lz/y;->e:Z

    if-eqz v0, :cond_52

    .line 150
    iget-boolean v0, p2, Lz/i;->f:Z

    if-eqz v0, :cond_23

    .line 152
    iput v2, p0, Lz/y;->a:I

    .line 155
    :cond_23
    iget v0, p0, Lz/y;->a:I

    if-nez v0, :cond_50

    move v0, v1

    :goto_28
    const-string v3, "Attempt to overwrite existing shader program: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lz/y;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/P;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lz/y;->c:Ljava/lang/String;

    iget-object v3, p0, Lz/y;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lz/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lz/y;->a:I

    .line 162
    iget v0, p0, Lz/y;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 163
    iget v0, p0, Lz/y;->a:I

    invoke-virtual {p0, v0}, Lz/y;->a(I)V

    .line 164
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :goto_4e
    move v2, v1

    .line 172
    goto :goto_c

    :cond_50
    move v0, v2

    .line 155
    goto :goto_28

    .line 166
    :cond_52
    iget-boolean v0, p2, Lz/i;->f:Z

    if-nez v0, :cond_5b

    .line 167
    iget v0, p0, Lz/y;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 169
    :cond_5b
    iput v2, p0, Lz/y;->a:I

    goto :goto_4e
.end method

.method b(ILjava/lang/String;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 188
    if-eqz v1, :cond_1e

    .line 189
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 190
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 192
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 193
    aget v2, v2, v0

    if-nez v2, :cond_1e

    .line 196
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 200
    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method

.method protected b(I)V
    .registers 4
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    const-string v1, "aPosition"

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 102
    const-string v0, "ShaderProgram"

    const-string v1, "bindAttribute aPosition"

    invoke-static {v0, v1}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    const-string v1, "aNormal"

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 106
    const-string v0, "ShaderProgram"

    const-string v1, "bindAttribute aTextureCoord"

    invoke-static {v0, v1}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x2

    const-string v1, "aColor"

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 110
    const-string v0, "ShaderProgram"

    const-string v1, "bindAttribute aColor"

    invoke-static {v0, v1}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x4

    const-string v1, "aTextureCoord"

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 114
    const-string v0, "ShaderProgram"

    const-string v1, "bindAttribute aTextureCoord"

    invoke-static {v0, v1}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
