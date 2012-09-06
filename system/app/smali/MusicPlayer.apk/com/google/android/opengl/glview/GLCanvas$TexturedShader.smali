.class Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.super Lcom/google/android/opengl/glview/GLCanvas$Shader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TexturedShader"
.end annotation


# instance fields
.field private mMixHandle:I

.field protected maTextureHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 3
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .registers 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bind()V

    .line 203
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 207
    return-void
.end method

.method public bindInputs()V
    .registers 7

    .prologue
    .line 221
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bindInputs()V

    .line 223
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    #getter for: Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;
    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    #getter for: Lcom/google/android/opengl/glview/GLCanvas;->mVertices:Ljava/nio/FloatBuffer;
    invoke-static {v5}, Lcom/google/android/opengl/glview/GLCanvas;->access$100(Lcom/google/android/opengl/glview/GLCanvas;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 229
    return-void
.end method

.method public bindMix(F)V
    .registers 4
    .parameter "mix"

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mMixHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 233
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mMixHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 238
    :cond_a
    return-void
.end method

.method public create()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 171
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->create()V

    .line 172
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    .line 176
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    if-ne v1, v3, :cond_1a

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aTextureCoord"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1a
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    const-string v2, "sTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 184
    .local v0, sampleLoc:I
    if-eq v0, v3, :cond_28

    .line 186
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 192
    :cond_28
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    const-string v2, "uMix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mMixHandle:I

    .line 196
    return-void
.end method

.method protected createShaderProgram()V
    .registers 3

    .prologue
    .line 163
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    #calls: Lcom/google/android/opengl/glview/GLCanvas;->createProgram(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->mProgram:I

    .line 167
    return-void
.end method

.method public unbind()V
    .registers 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->unbind()V

    .line 213
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 217
    return-void
.end method
