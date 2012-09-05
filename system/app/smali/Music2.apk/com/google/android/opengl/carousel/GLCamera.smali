.class Lcom/google/android/opengl/carousel/GLCamera;
.super Ljava/lang/Object;
.source "GLCamera.java"


# instance fields
.field private mDefaultEye:[F

.field private mDefaultLookAt:[F

.field mEye:[F

.field mFovy:F

.field mLookat:[F

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field mUp:[F

.field private mVMatrix:[F

.field private mWorldMatrix:[F

.field private moveStep:F

.field private rotStep:F


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V
    .registers 5
    .parameter "renderer"

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, v1, [F

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mDefaultEye:[F

    .line 16
    new-array v0, v1, [F

    fill-array-data v0, :array_48

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mDefaultLookAt:[F

    .line 21
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mVMatrix:[F

    .line 23
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_52

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mUp:[F

    .line 32
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    .line 33
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->rotStep:F

    .line 36
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    .line 42
    iput-object p1, p0, Lcom/google/android/opengl/carousel/GLCamera;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->reset()V

    .line 44
    return-void

    .line 15
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data

    .line 16
    :array_48
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_52
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method backward()V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 91
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 92
    return-void
.end method

.method down()V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 112
    return-void
.end method

.method forward()V
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 86
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 87
    return-void
.end method

.method left()V
    .registers 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 96
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 97
    return-void
.end method

.method lookBackward()V
    .registers 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 141
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 142
    return-void
.end method

.method lookDown()V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 132
    return-void
.end method

.method lookForward()V
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 136
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 137
    return-void
.end method

.method lookLeft()V
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 116
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 117
    return-void
.end method

.method lookRight()V
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 121
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 122
    return-void
.end method

.method lookUp()V
    .registers 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 127
    return-void
.end method

.method printParameters()Ljava/lang/String;
    .registers 8

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v3, "==== Current Camera Parameters ====\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Eye: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    invoke-static {v4}, Lcom/google/android/opengl/carousel/GL2Helper;->getStringForFloatArray([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Lookat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    invoke-static {v4}, Lcom/google/android/opengl/carousel/GL2Helper;->getStringForFloatArray([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/GLCamera;->mUp:[F

    invoke-static {v4}, Lcom/google/android/opengl/carousel/GL2Helper;->getStringForFloatArray([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    .line 161
    .local v2, startAngle:F
    const/high16 v3, 0x4000

    div-float v3, v2, v3

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 162
    .local v0, r:F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Start Angle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " * 2 * PI\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method reset()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mDefaultEye:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    .line 70
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mDefaultLookAt:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    .line 71
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 73
    return-void
.end method

.method right()V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 101
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 102
    return-void
.end method

.method setCamera()V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mVMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    aget v5, v5, v1

    iget-object v6, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    aget v6, v6, v7

    iget-object v7, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    aget v7, v7, v9

    const/high16 v9, 0x3f80

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 62
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    iget-object v4, p0, Lcom/google/android/opengl/carousel/GLCamera;->mVMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 63
    return-void
.end method

.method setDefaultEyeLookAt([F[F)Z
    .registers 5
    .parameter "eye"
    .parameter "lookAt"

    .prologue
    const/4 v1, 0x3

    .line 76
    if-eqz p1, :cond_b

    array-length v0, p1

    if-ne v0, v1, :cond_b

    if-eqz p2, :cond_b

    array-length v0, p2

    if-eq v0, v1, :cond_d

    .line 77
    :cond_b
    const/4 v0, 0x0

    .line 81
    :goto_c
    return v0

    .line 79
    :cond_d
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mDefaultEye:[F

    .line 80
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mDefaultLookAt:[F

    .line 81
    const/4 v0, 0x1

    goto :goto_c
.end method

.method setLookat(Lcom/google/android/opengl/carousel/CarouselSetting;)V
    .registers 3
    .parameter "setting"

    .prologue
    .line 48
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    .line 49
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mLookat:[F

    .line 50
    iget-object v0, p1, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mUp:[F

    .line 51
    return-void
.end method

.method up()V
    .registers 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mEye:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/GLCamera;->moveStep:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 106
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 107
    return-void
.end method

.method worldRotateLeft()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->rotStep:F

    neg-float v2, v2

    const/high16 v4, 0x3f80

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 147
    return-void
.end method

.method worldRotateRight()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/opengl/carousel/GLCamera;->mWorldMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/opengl/carousel/GLCamera;->rotStep:F

    const/high16 v4, 0x3f80

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 152
    return-void
.end method
