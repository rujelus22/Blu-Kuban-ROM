.class public Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/gl/ShaderProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shader"
.end annotation


# instance fields
.field private final id:I

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private final name:Ljava/lang/String;

.field private valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .parameter "name"
    .parameter "type"
    .parameter "src"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v2, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 151
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->name:Ljava/lang/String;

    .line 152
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I

    .line 153
    iput-boolean v6, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->valid:Z

    .line 155
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I

    invoke-static {v2, p3}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 156
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 157
    new-array v1, v6, [I

    .line 158
    .local v1, status:[I
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I

    const v3, 0x8b81

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 160
    aget v2, v1, v7

    if-ne v2, v6, :cond_40

    .line 161
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Shader %s compiled successfully."

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-void

    .line 163
    :cond_40
    iget v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, log:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Shader %s did not compile:\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed to compile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I

    return v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 181
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 183
    return-void

    .line 181
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->valid:Z

    if-eqz v0, :cond_c

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->valid:Z

    .line 172
    iget v0, p0, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$Shader;->id:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 174
    :cond_c
    return-void
.end method
