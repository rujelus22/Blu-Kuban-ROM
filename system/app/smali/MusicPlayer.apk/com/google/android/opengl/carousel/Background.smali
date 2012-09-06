.class Lcom/google/android/opengl/carousel/Background;
.super Ljava/lang/Object;
.source "Background.java"


# static fields
.field private static sProjection:[F

.field private static sVertices:[F


# instance fields
.field public mBitmap0:Landroid/graphics/Bitmap;

.field public mBitmap1:Landroid/graphics/Bitmap;

.field private mBitmapUploaded:Z

.field public mColor:Lcom/google/android/opengl/common/Float4;

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mScene:Lcom/google/android/opengl/carousel/CarouselScene;

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Background;->sProjection:[F

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Background;->sVertices:[F

    return-void
.end method

.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselScene;)V
    .registers 5
    .parameter "carousel"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/opengl/common/Float4;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/google/android/opengl/common/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    .line 40
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 41
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 42
    return-void
.end method

.method private getAnimatedAlpha(JJ)F
    .registers 11
    .parameter "startTime"
    .parameter "currentTime"

    .prologue
    .line 56
    sub-long v4, p3, p1

    long-to-double v2, v4

    .line 57
    .local v2, timeElapsed:D
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-wide v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mBackgroundTransitionDuration:J

    long-to-double v4, v4

    div-double v0, v2, v4

    .line 58
    .local v0, alpha:D
    const/high16 v4, 0x3f80

    double-to-float v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method


# virtual methods
.method public draw(J)Z
    .registers 23
    .parameter "currentTime"

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    .line 68
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    .line 70
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    if-nez v3, :cond_58

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    iget v3, v3, Lcom/google/android/opengl/common/Float4;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    iget v4, v4, Lcom/google/android/opengl/common/Float4;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    iget v5, v5, Lcom/google/android/opengl/common/Float4;->z:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/common/Float4;

    iget v7, v7, Lcom/google/android/opengl/common/Float4;->w:F

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 73
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 74
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 76
    const/16 v18, 0x0

    .line 143
    :goto_57
    return v18

    .line 79
    :cond_58
    const/16 v18, 0x0

    .line 81
    .local v18, stillAnimating:Z
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/opengl/carousel/Background;->mTimeStamp:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/opengl/carousel/Background;->getAnimatedAlpha(JJ)F

    move-result v16

    .line 82
    .local v16, animatedAlpha:F
    const v3, 0x3f7d70a4

    cmpl-float v3, v16, v3

    if-gtz v3, :cond_73

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1bd

    .line 83
    :cond_73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 84
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 85
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 86
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    if-nez v3, :cond_a4

    .line 87
    const/16 v3, 0xde1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 110
    :cond_a4
    :goto_a4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 112
    sget-object v3, Lcom/google/android/opengl/carousel/Background;->sProjection:[F

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    const/high16 v7, -0x4080

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/high16 v10, 0x4000

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    sget-object v4, Lcom/google/android/opengl/carousel/Background;->sProjection:[F

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 115
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v8, v8, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 119
    const v6, -0x4080068e

    .line 120
    .local v6, z:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v3, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    move-object/from16 v19, v0

    .line 122
    .local v19, vData:[F
    sget-object v3, Lcom/google/android/opengl/carousel/Background;->sVertices:[F

    const/4 v4, 0x0

    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v19, v5

    const/4 v7, 0x3

    aget v7, v19, v7

    const/4 v8, 0x4

    aget v8, v19, v8

    const/4 v9, 0x6

    aget v10, v19, v9

    const/4 v9, 0x7

    aget v11, v19, v9

    const/16 v9, 0x9

    aget v13, v19, v9

    const/16 v9, 0xa

    aget v14, v19, v9

    move v9, v6

    move v12, v6

    move v15, v6

    invoke-static/range {v3 .. v15}, Lcom/google/android/opengl/carousel/GL2Helper;->setVector12f([FFFFFFFFFFFFF)V

    .line 127
    sget-object v3, Lcom/google/android/opengl/carousel/Background;->sVertices:[F

    invoke-static {v3}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z

    .line 130
    :try_start_104
    const-string v3, "drawBackground"

    invoke-static {v3}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_109} :catch_10b

    goto/16 :goto_57

    .line 131
    :catch_10b
    move-exception v17

    .line 132
    .local v17, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_164

    .line 133
    const-string v3, "Background"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed while trying to allocate texture id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v5, v5, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v3, "Background"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1bc

    .line 137
    const-string v3, "Background"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed while trying to allocate texture id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v5, v5, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "Background"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1bc
    throw v17

    .line 90
    .end local v6           #z:F
    .end local v17           #e:Ljava/lang/RuntimeException;
    .end local v19           #vData:[F
    :cond_1bd
    const/16 v18, 0x1

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v3, v4}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setFadeAmount(F)V

    .line 96
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 97
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId1:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 98
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    if-nez v3, :cond_200

    .line 99
    const/16 v3, 0xde1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 103
    :cond_200
    const v3, 0x84c1

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 104
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Background;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 105
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    if-nez v3, :cond_a4

    .line 106
    const/16 v3, 0xde1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto/16 :goto_a4
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/opengl/carousel/Background;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 148
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 6
    .parameter "bitmap"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    .line 152
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 154
    if-eqz p2, :cond_1f

    .line 156
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/Background;->mTimeStamp:J

    .line 163
    :cond_1a
    :goto_1a
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap0:Landroid/graphics/Bitmap;

    .line 164
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 165
    return-void

    .line 159
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmap1:Landroid/graphics/Bitmap;

    goto :goto_1a
.end method

.method uploadBitmap()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/Background;->mBitmapUploaded:Z

    .line 53
    return-void
.end method
