.class Lcom/google/android/music/lockscreen/LockBackground;
.super Ljava/lang/Object;
.source "LockBackground.java"


# static fields
.field private static sProjection:[F

.field private static sVertices:[F


# instance fields
.field private mBackgroundId0:I

.field private mBackgroundId1:I

.field private mBackgroundTransitionDuration:J

.field private mBitmap0:Landroid/graphics/Bitmap;

.field private mBitmap1:Landroid/graphics/Bitmap;

.field public mBitmapUploaded:Z

.field private mColor:[F

.field private mContext:Landroid/content/Context;

.field private mCurrentAlbumId:J

.field private mDefaultBackground:Landroid/graphics/Bitmap;

.field private mDefaultBackgroundId:I

.field private mIds:[I

.field private mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

.field mTexCoord:Ljava/nio/FloatBuffer;

.field private mTexCoordData:[F

.field private mTimeStamp:J

.field mVerticesData:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/music/lockscreen/LockBackground;->sProjection:[F

    .line 33
    const/16 v0, 0xc

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/music/lockscreen/LockBackground;->sVertices:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/lockscreen/WaveRenderer;J)V
    .registers 7
    .parameter "context"
    .parameter "renderer"
    .parameter "transitionDuration"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mIds:[I

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mColor:[F

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_58

    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mTexCoordData:[F

    .line 52
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_6c

    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mVerticesData:[F

    .line 62
    iput-object p1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/android/music/lockscreen/LockBackground;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    .line 64
    iput-wide p3, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundTransitionDuration:J

    .line 65
    iget-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mTexCoordData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mTexCoord:Ljava/nio/FloatBuffer;

    .line 67
    iget-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mTexCoord:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mTexCoordData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    return-void

    .line 45
    :array_4c
    .array-data 0x4
        0x8ft 0xc2t 0xf5t 0x3dt
        0x8ft 0xc2t 0xf5t 0x3dt
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 50
    :array_58
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 52
    :array_6c
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/music/lockscreen/LockBackground;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/google/android/music/lockscreen/LockBackground;->resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/lockscreen/LockBackground;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackgroundId:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/music/lockscreen/LockBackground;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/lockscreen/LockBackground;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private genTextureIds()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mIds:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 98
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mIds:[I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackgroundId:I

    .line 99
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mIds:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundId0:I

    .line 100
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mIds:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundId1:I

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    if-ge v0, v3, :cond_2d

    .line 104
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/google/android/music/lockscreen/LockBackground;->mIds:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 105
    invoke-static {}, Lcom/google/android/music/lockscreen/WaveScene;->setDefaultNPOTTextureState()V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 107
    :cond_2d
    return-void
.end method

.method private getAnimatedAlpha(JJ)F
    .registers 11
    .parameter "startTime"
    .parameter "currentTime"

    .prologue
    .line 90
    sub-long v4, p3, p1

    long-to-double v2, v4

    .line 91
    .local v2, timeElapsed:D
    iget-wide v4, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundTransitionDuration:J

    long-to-double v4, v4

    div-double v0, v2, v4

    .line 92
    .local v0, alpha:D
    const-wide/high16 v4, 0x3ff0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 93
    double-to-float v4, v0

    return v4
.end method

.method private getDefaultBackground()V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/LockBackground;->genTextureIds()V

    .line 78
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/lockscreen/LockBackground$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/lockscreen/LockBackground$1;-><init>(Lcom/google/android/music/lockscreen/LockBackground;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method private static final resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "b"
    .parameter "size"

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 241
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 242
    .local v0, height:I
    if-eq v1, v0, :cond_12

    .line 243
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected a square bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_12
    if-ne v1, p1, :cond_15

    .line 249
    .end local p0
    :goto_14
    return-object p0

    .restart local p0
    :cond_15
    const/4 v2, 0x0

    invoke-static {p0, p1, p1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_14
.end method


# virtual methods
.method public declared-synchronized draw(J)Z
    .registers 23
    .parameter "currentTime"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;

    .line 117
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    .line 118
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    .line 120
    :cond_40
    const/16 v18, 0x0

    .line 121
    .local v18, stillAnimating:Z
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mTimeStamp:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/music/lockscreen/LockBackground;->getAnimatedAlpha(JJ)F

    move-result v16

    .line 122
    .local v16, animatedAlpha:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_ed

    const v3, 0x3f7d70a4

    cmpl-float v3, v16, v3

    if-gtz v3, :cond_61

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    if-nez v3, :cond_ed

    .line 123
    :cond_61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v3}, Lcom/google/android/music/lockscreen/WaveRenderer;->useTextureProgram()V

    .line 124
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 125
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundId0:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 126
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmapUploaded:Z

    if-nez v3, :cond_88

    .line 127
    const/16 v3, 0xde1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 158
    :cond_88
    :goto_88
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmapUploaded:Z

    .line 160
    sget-object v3, Lcom/google/android/music/lockscreen/LockBackground;->sProjection:[F

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    const/high16 v7, -0x4080

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/high16 v10, 0x4000

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    sget-object v4, Lcom/google/android/music/lockscreen/LockBackground;->sProjection:[F

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/WaveRenderer;->setMVPUniform([F)V

    .line 163
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/lockscreen/LockBackground;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 167
    const v6, -0x4080068e

    .line 168
    .local v6, z:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/lockscreen/LockBackground;->mVerticesData:[F

    move-object/from16 v19, v0

    .line 170
    .local v19, vData:[F
    sget-object v3, Lcom/google/android/music/lockscreen/LockBackground;->sVertices:[F

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

    .line 175
    sget-object v3, Lcom/google/android/music/lockscreen/LockBackground;->sVertices:[F

    invoke-static {v3}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z
    :try_end_e4
    .catchall {:try_start_1 .. :try_end_e4} :catchall_154

    .line 178
    :try_start_e4
    const-string v3, "drawBackground"

    invoke-static {v3}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_154
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_e9} :catch_1a1

    move/from16 v3, v18

    .line 191
    .end local v6           #z:F
    .end local v19           #vData:[F
    :goto_eb
    monitor-exit p0

    return v3

    .line 129
    :cond_ed
    :try_start_ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_157

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_157

    .line 130
    const/16 v18, 0x1

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v3}, Lcom/google/android/music/lockscreen/WaveRenderer;->requestRender()V

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v3}, Lcom/google/android/music/lockscreen/WaveRenderer;->useMultiTextureProgram()V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/music/lockscreen/WaveRenderer;->setFadeAmount(F)V

    .line 136
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 137
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundId1:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmapUploaded:Z

    if-nez v3, :cond_132

    .line 139
    const/16 v3, 0xde1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 141
    :cond_132
    const v3, 0x84c1

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 142
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundId0:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 143
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmapUploaded:Z

    if-nez v3, :cond_88

    .line 144
    const/16 v3, 0xde1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_152
    .catchall {:try_start_ed .. :try_end_152} :catchall_154

    goto/16 :goto_88

    .line 116
    .end local v16           #animatedAlpha:F
    .end local v18           #stillAnimating:Z
    :catchall_154
    move-exception v3

    monitor-exit p0

    throw v3

    .line 146
    .restart local v16       #animatedAlpha:F
    .restart local v18       #stillAnimating:Z
    :cond_157
    :try_start_157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_175

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v3}, Lcom/google/android/music/lockscreen/WaveRenderer;->useTextureProgram()V

    .line 148
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 149
    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackgroundId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_88

    .line 151
    :cond_175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mColor:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/lockscreen/LockBackground;->mColor:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mColor:[F

    const/4 v7, 0x2

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/lockscreen/LockBackground;->mColor:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-static {v3, v4, v5, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 152
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmapUploaded:Z

    .line 153
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 155
    const/4 v3, 0x0

    goto/16 :goto_eb

    .line 179
    .restart local v6       #z:F
    .restart local v19       #vData:[F
    :catch_1a1
    move-exception v17

    .line 180
    .local v17, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1f6

    .line 181
    const-string v3, "LockBackground"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed while trying to allocate texture id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundId0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "LockBackground"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1f6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_24a

    .line 185
    const-string v3, "LockBackground"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed while trying to allocate texture id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBackgroundId1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "LockBackground"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_24a
    throw v17
    :try_end_24b
    .catchall {:try_start_157 .. :try_end_24b} :catchall_154
.end method

.method public loadTextures()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmapUploaded:Z

    .line 73
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/LockBackground;->getDefaultBackground()V

    .line 74
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/lockscreen/LockBackground;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 218
    return-void
.end method

.method public declared-synchronized setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .parameter "bitmap"
    .parameter "animate"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 226
    if-eqz p2, :cond_18

    .line 228
    iget-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mTimeStamp:J

    .line 235
    :cond_11
    :goto_11
    iput-object p1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap0:Landroid/graphics/Bitmap;

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmapUploaded:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    .line 237
    monitor-exit p0

    return-void

    .line 231
    :cond_18
    const/4 v0, 0x0

    :try_start_19
    iput-object v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mBitmap1:Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_11

    .line 221
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRepresentativeAlbum(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/lockscreen/LockBackground;->mCurrentAlbumId:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 214
    :goto_7
    monitor-exit p0

    return-void

    .line 198
    :cond_9
    :try_start_9
    iput-wide p1, p0, Lcom/google/android/music/lockscreen/LockBackground;->mCurrentAlbumId:J

    .line 200
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/lockscreen/LockBackground$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/lockscreen/LockBackground$2;-><init>(Lcom/google/android/music/lockscreen/LockBackground;J)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_7

    .line 195
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
