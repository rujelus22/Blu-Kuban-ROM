.class abstract Lcom/google/android/opengl/glview/GLCanvas$Shader;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Shader"
.end annotation


# instance fields
.field protected mProgram:I

.field protected maPositionHandle:I

.field protected muMVPMatrixHandle:I

.field private muQuadScaleHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$Shader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .registers 3

    .prologue
    .line 77
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 78
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 79
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 84
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 88
    return-void
.end method

.method public bindInputs()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 97
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    #getter for: Lcom/google/android/opengl/glview/GLCanvas;->mMVPMatrix:[F
    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$000(Lcom/google/android/opengl/glview/GLCanvas;)[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 101
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    #getter for: Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 102
    .local v5, vertices:Ljava/nio/FloatBuffer;
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    const/4 v1, 0x4

    const/16 v2, 0x1406

    const/16 v4, 0x18

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 109
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muQuadScaleHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    .line 110
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muQuadScaleHandle:I

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    #getter for: Lcom/google/android/opengl/glview/GLCanvas;->mQuadScale:[F
    invoke-static {v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$200(Lcom/google/android/opengl/glview/GLCanvas;)[F

    move-result-object v1

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 115
    :cond_30
    return-void
.end method

.method public create()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->createShaderProgram()V

    .line 43
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    if-nez v0, :cond_10

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get a valid program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_10
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 53
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    .line 57
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    if-ne v0, v2, :cond_2b

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2b
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muMVPMatrixHandle:I

    .line 64
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muMVPMatrixHandle:I

    if-ne v0, v2, :cond_41

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_41
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->mProgram:I

    const-string v1, "uQuadScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->muQuadScaleHandle:I

    .line 72
    return-void
.end method

.method protected abstract createShaderProgram()V
.end method

.method public unbind()V
    .registers 2

    .prologue
    .line 121
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 122
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$Shader;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 126
    return-void
.end method
