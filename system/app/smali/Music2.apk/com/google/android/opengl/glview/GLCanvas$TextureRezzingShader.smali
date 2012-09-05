.class abstract Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;
.super Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TextureRezzingShader"
.end annotation


# instance fields
.field private mFadePreCalAHandle:I

.field private mFadePreCalBHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 3
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bindFade(FF)V
    .registers 8
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    const/4 v4, -0x1

    .line 346
    const/high16 v2, 0x3f80

    sub-float v3, p1, p2

    div-float v0, v2, v3

    .line 347
    .local v0, fadePreCalA:F
    neg-float v2, p2

    sub-float v3, p1, p2

    div-float v1, v2, v3

    .line 349
    .local v1, fadePreCalB:F
    iget v2, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mFadePreCalAHandle:I

    if-eq v2, v4, :cond_15

    .line 350
    iget v2, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mFadePreCalAHandle:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 355
    :cond_15
    iget v2, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mFadePreCalBHandle:I

    if-eq v2, v4, :cond_1e

    .line 356
    iget v2, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mFadePreCalBHandle:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 361
    :cond_1e
    return-void
.end method

.method public create()V
    .registers 3

    .prologue
    .line 313
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->create()V

    .line 315
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mProgram:I

    const-string v1, "uPreFadeA"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mFadePreCalAHandle:I

    .line 319
    iget v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mProgram:I

    const-string v1, "uPreFadeB"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/glview/GLCanvas$TextureRezzingShader;->mFadePreCalBHandle:I

    .line 323
    return-void
.end method
