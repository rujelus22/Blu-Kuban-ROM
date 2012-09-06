.class Lcom/google/android/opengl/glview/GLCanvas$FlatShader;
.super Lcom/google/android/opengl/glview/GLCanvas$Shader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatShader"
.end annotation


# instance fields
.field private muFlatColorHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 3
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bindInputs()V
    .registers 5

    .prologue
    .line 687
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->bindInputs()V

    .line 689
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->muFlatColorHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    #getter for: Lcom/google/android/opengl/glview/GLCanvas;->mFlatColor:[F
    invoke-static {v2}, Lcom/google/android/opengl/glview/GLCanvas;->access$800(Lcom/google/android/opengl/glview/GLCanvas;)[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 693
    return-void
.end method

.method public create()V
    .registers 3

    .prologue
    .line 674
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$Shader;->create()V

    .line 676
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->mProgram:I

    const-string v1, "uvFlatColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->muFlatColorHandle:I

    .line 680
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->muFlatColorHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 681
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uvFlatColor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_1a
    return-void
.end method

.method protected createShaderProgram()V
    .registers 3

    .prologue
    .line 666
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform vec4 uQuadScale;\nattribute vec4 aPosition;\nvoid main() {\n  vec4 p = aPosition * uQuadScale;\n  p.x = p.x + p.z;\n  p.y = p.y + p.w;\n  p.z = 0.0;\n  p.w = 1.0;\n  gl_Position = uMVPMatrix * p;\n}\n"

    const-string v1, "precision mediump float;\nuniform vec4 uvFlatColor;\nvoid main() {\n  gl_FragColor = uvFlatColor;\n}\n"

    #calls: Lcom/google/android/opengl/glview/GLCanvas;->createProgram(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->access$400(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$FlatShader;->mProgram:I

    .line 670
    return-void
.end method
