.class public Lcom/google/android/opengl/glview/GLCamera;
.super Ljava/lang/Object;
.source "GLCamera.java"


# instance fields
.field private mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

.field private mProjMatrix:[F

.field private mVMatrix:[F


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    const/16 v1, 0x10

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCamera;->mVMatrix:[F

    .line 12
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCamera;->mProjMatrix:[F

    .line 16
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCamera;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    .line 17
    return-void
.end method


# virtual methods
.method public setCamera(II)V
    .registers 25
    .parameter "width"
    .parameter "height"

    .prologue
    .line 20
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 22
    const/high16 v8, 0x447a

    .line 23
    .local v8, znear:F
    const/high16 v9, 0x44fa

    .line 24
    .local v9, zfar:F
    sub-float v2, v9, v8

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    add-float v21, v2, v8

    .line 25
    .local v21, zcenter:F
    move/from16 v0, p1

    int-to-float v2, v0

    mul-float/2addr v2, v8

    div-float v2, v2, v21

    const/high16 v3, 0x3f00

    mul-float v5, v2, v3

    .line 26
    .local v5, right:F
    move/from16 v0, p2

    int-to-float v2, v0

    mul-float/2addr v2, v8

    div-float v2, v2, v21

    const/high16 v3, 0x3f00

    mul-float v7, v2, v3

    .line 27
    .local v7, bottom:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/opengl/glview/GLCamera;->mProjMatrix:[F

    const/4 v3, 0x0

    neg-float v4, v5

    neg-float v6, v7

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 28
    div-int/lit8 v2, p1, 0x2

    int-to-float v12, v2

    .line 29
    .local v12, centerX:F
    div-int/lit8 v2, p2, 0x2

    int-to-float v13, v2

    .line 30
    .local v13, centerY:F
    move/from16 v0, v21

    neg-float v14, v0

    .line 31
    .local v14, eyeZ:F
    const/16 v17, 0x0

    .line 32
    .local v17, atZ:F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/glview/GLCamera;->mVMatrix:[F

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/high16 v19, -0x4080

    const/16 v20, 0x0

    move v15, v12

    move/from16 v16, v13

    invoke-static/range {v10 .. v20}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/opengl/glview/GLCamera;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GLCamera;->mProjMatrix:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setProjectionMatrix([FI)V

    .line 41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/opengl/glview/GLCamera;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/GLCamera;->mVMatrix:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setViewMatrix([FI)V

    .line 42
    return-void
.end method
