.class public Lcom/google/android/apps/unveil/env/gl/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;,
        Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;,
        Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private final name:Ljava/lang/String;

.field private final uniforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attributes:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->uniforms:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->valid:Z

    .line 47
    return-void
.end method


# virtual methods
.method public attach(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    #getter for: Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->access$000(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 51
    return-void
.end method

.method public declareAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I
    .registers 8
    .parameter "slot"

    .prologue
    .line 58
    iget v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 59
    .local v0, attribute:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attributes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_16
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 62
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Unable to find attribute %s in shader %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public declareUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I
    .registers 8
    .parameter "slot"

    .prologue
    .line 72
    iget v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 73
    .local v0, uniform:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->uniforms:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_16
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->uniforms:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 76
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Unable to find attribute %s in shader %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    return-void

    .line 127
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I
    .registers 3
    .parameter "slot"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I
    .registers 3
    .parameter "slot"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->uniforms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public link()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 86
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 88
    new-array v1, v6, [I

    .line 89
    .local v1, status:[I
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    const v3, 0x8b82

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 91
    aget v2, v1, v7

    if-ne v2, v6, :cond_27

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Program %s linked successfully."

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void

    .line 94
    :cond_27
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, log:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Program %s did not link:\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed to link"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public release()V
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->valid:Z

    if-eqz v0, :cond_c

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->valid:Z

    .line 118
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 120
    :cond_c
    return-void
.end method

.method public use()V
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 55
    return-void
.end method

.method public validate()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 101
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 103
    new-array v1, v6, [I

    .line 104
    .local v1, status:[I
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    const v3, 0x8b81

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 106
    aget v2, v1, v7

    if-ne v2, v6, :cond_27

    .line 107
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Program %s validated successfully."

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void

    .line 109
    :cond_27
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->id:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, log:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Program %s did not validate:\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed to validate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
