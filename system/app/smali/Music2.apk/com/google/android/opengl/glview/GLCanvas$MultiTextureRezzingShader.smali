.class abstract Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;
.super Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MultiTextureRezzingShader"
.end annotation


# instance fields
.field private mFadePreCalAHandle:I

.field private mFadePreCalBHandle:I

.field private mMixPreCalAHandle:I

.field private mMixPreCalBHandle:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLCanvas;


# direct methods
.method private constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 3
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->this$0:Lcom/google/android/opengl/glview/GLCanvas;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;Lcom/google/android/opengl/glview/GLCanvas$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public bindMixAndFade(FFFF)V
    .registers 13
    .parameter "mix0"
    .parameter "mix1"
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, -0x1

    .line 503
    sub-float v4, p1, p2

    div-float v2, v7, v4

    .line 504
    .local v2, mixPreCalA:F
    neg-float v4, p2

    sub-float v5, p1, p2

    div-float v3, v4, v5

    .line 505
    .local v3, mixPreCalB:F
    sub-float v4, p3, p4

    div-float v0, v7, v4

    .line 506
    .local v0, fadePreCalA:F
    neg-float v4, p4

    sub-float v5, p3, p4

    div-float v1, v4, v5

    .line 508
    .local v1, fadePreCalB:F
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mMixPreCalAHandle:I

    if-eq v4, v6, :cond_1e

    .line 509
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mMixPreCalAHandle:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 514
    :cond_1e
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mMixPreCalBHandle:I

    if-eq v4, v6, :cond_27

    .line 515
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mMixPreCalBHandle:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 520
    :cond_27
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mFadePreCalAHandle:I

    if-eq v4, v6, :cond_30

    .line 521
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mFadePreCalAHandle:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 526
    :cond_30
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mFadePreCalBHandle:I

    if-eq v4, v6, :cond_39

    .line 527
    iget v4, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mFadePreCalBHandle:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 532
    :cond_39
    return-void
.end method

.method public create()V
    .registers 4

    .prologue
    .line 449
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLCanvas$TexturedShader;->create()V

    .line 451
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uPreMixA"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mMixPreCalAHandle:I

    .line 455
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uPreMixB"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mMixPreCalBHandle:I

    .line 459
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uPreFadeA"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mFadePreCalAHandle:I

    .line 463
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "uPreFadeB"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mFadePreCalBHandle:I

    .line 468
    iget v1, p0, Lcom/google/android/opengl/glview/GLCanvas$MultiTextureRezzingShader;->mProgram:I

    const-string v2, "sTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 472
    .local v0, sampleLoc:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    .line 474
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 479
    :cond_3a
    return-void
.end method
