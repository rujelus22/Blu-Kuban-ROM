.class public Lcom/google/android/opengl/common/FpsDisplay;
.super Ljava/lang/Object;
.source "FpsDisplay.java"


# static fields
.field private static FPS_FRAMES:I


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mDisplayString:Ljava/lang/String;

.field public mEnableFpsLog:Z

.field public mFPS:F

.field private mFpsBitmap:Landroid/graphics/Bitmap;

.field private mFpsLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCount:I

.field private mFrameStart:J

.field private mInitFinished:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRenderTimeHistory:[J

.field private final mRenderer:Lcom/google/android/opengl/common/IFpsRenderer;

.field private mTextureId:I

.field private mTimeStart:J

.field private mVPMatrix:[F

.field private mVertexData:[F

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private textUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/16 v0, 0x32

    sput v0, Lcom/google/android/opengl/common/FpsDisplay;->FPS_FRAMES:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/opengl/common/IFpsRenderer;)V
    .registers 9
    .parameter "renderer"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->mEnableFpsLog:Z

    .line 36
    const/16 v0, 0x190

    const/16 v1, 0x28

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsBitmap:Landroid/graphics/Bitmap;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mCanvas:Landroid/graphics/Canvas;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mDisplayString:Ljava/lang/String;

    .line 41
    iput-boolean v4, p0, Lcom/google/android/opengl/common/FpsDisplay;->textUpdated:Z

    .line 43
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_7c

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mVertexData:[F

    .line 47
    iput v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTextureId:I

    .line 49
    iput v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->mWindowWidth:I

    .line 50
    iput v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->mWindowHeight:I

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mVPMatrix:[F

    .line 54
    iput-wide v5, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTimeStart:J

    .line 56
    iput-wide v5, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameStart:J

    .line 58
    iput-boolean v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->mInitFinished:Z

    .line 62
    iput v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameCount:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFPS:F

    .line 66
    sget v0, Lcom/google/android/opengl/common/FpsDisplay;->FPS_FRAMES:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mRenderTimeHistory:[J

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsLog:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mRenderer:Lcom/google/android/opengl/common/IFpsRenderer;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTimeStart:J

    .line 74
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    return-void

    .line 43
    nop

    :array_7c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xc8t 0x43t
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xc8t 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private onDrawFrame()V
    .registers 9

    .prologue
    const/16 v7, 0xde1

    const/16 v6, 0xbe2

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0}, Lcom/google/android/opengl/common/FpsDisplay;->updateProjection()V

    .line 89
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mRenderer:Lcom/google/android/opengl/common/IFpsRenderer;

    invoke-interface {v0}, Lcom/google/android/opengl/common/IFpsRenderer;->useTextureProgram()V

    .line 90
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mRenderer:Lcom/google/android/opengl/common/IFpsRenderer;

    iget-object v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mVPMatrix:[F

    invoke-interface {v0, v1}, Lcom/google/android/opengl/common/IFpsRenderer;->setMVPUniform([F)V

    .line 91
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 92
    iget v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTextureId:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 93
    iget-boolean v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->textUpdated:Z

    if-eqz v0, :cond_40

    .line 94
    iput-boolean v5, p0, Lcom/google/android/opengl/common/FpsDisplay;->textUpdated:Z

    .line 95
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 97
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mDisplayString:Ljava/lang/String;

    const/4 v2, 0x0

    const/high16 v3, 0x41a0

    iget-object v4, p0, Lcom/google/android/opengl/common/FpsDisplay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 101
    :cond_40
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mVertexData:[F

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuadTexCoords([F)Z

    .line 103
    invoke-static {v6}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 104
    return-void
.end method

.method private updateFPS()V
    .registers 21

    .prologue
    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 179
    .local v14, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameStart:J

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 180
    .local v10, renderTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameCount:I

    move/from16 v16, v0

    sget v17, Lcom/google/android/opengl/common/FpsDisplay;->FPS_FRAMES:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_37

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mRenderTimeHistory:[J

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameCount:I

    move/from16 v17, v0

    aput-wide v10, v16, v17

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/common/FpsDisplay;->mFrameCount:I

    .line 210
    :goto_36
    return-void

    .line 184
    :cond_37
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mTimeStart:J

    move-wide/from16 v16, v0

    cmp-long v16, v14, v16

    if-nez v16, :cond_69

    .line 185
    const/high16 v16, 0x4270

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/common/FpsDisplay;->mFPS:F

    .line 189
    :goto_49
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/common/FpsDisplay;->mFrameCount:I

    .line 190
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/opengl/common/FpsDisplay;->mTimeStart:J

    .line 192
    const-wide/16 v3, 0x0

    .line 193
    .local v3, avgRenderTime:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/opengl/common/FpsDisplay;->mRenderTimeHistory:[J

    .local v2, arr$:[J
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_5d
    if-ge v7, v8, :cond_8c

    aget-wide v12, v2, v7

    .line 194
    .local v12, t:J
    long-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v3, v3, v16

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 187
    .end local v2           #arr$:[J
    .end local v3           #avgRenderTime:D
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v12           #t:J
    :cond_69
    sget v16, Lcom/google/android/opengl/common/FpsDisplay;->FPS_FRAMES:I

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mTimeStart:J

    move-wide/from16 v17, v0

    sub-long v17, v14, v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/common/FpsDisplay;->mFPS:F

    goto :goto_49

    .line 196
    .restart local v2       #arr$:[J
    .restart local v3       #avgRenderTime:D
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_8c
    sget v16, Lcom/google/android/opengl/common/FpsDisplay;->FPS_FRAMES:I

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v3, v3, v16

    .line 197
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mEnableFpsLog:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e1

    .line 198
    new-instance v5, Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFPS:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;-><init>(DD)V

    .line 199
    .local v5, fpsInfo:Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsLog:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x100

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_d6

    .line 200
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c2
    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v6, v0, :cond_d6

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsLog:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_c2

    .line 204
    .end local v6           #i:I
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFpsLog:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v5           #fpsInfo:Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;
    :cond_e1
    const-string v16, "CPU Time: %.2f ms| FPS:%.1f"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/common/FpsDisplay;->mFPS:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, logStr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/opengl/common/FpsDisplay;->setDisplayString(Ljava/lang/String;)V

    goto/16 :goto_36
.end method

.method private updateProjection()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->mVPMatrix:[F

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->mWindowWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/opengl/common/FpsDisplay;->mWindowHeight:I

    int-to-float v5, v4

    const/high16 v6, 0x4120

    const/high16 v7, -0x3ee0

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 126
    return-void
.end method


# virtual methods
.method public onSurfaceCreated()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 133
    new-array v0, v3, [I

    .line 134
    .local v0, textures:[I
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 135
    aget v1, v0, v1

    iput v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTextureId:I

    .line 136
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 137
    const/16 v1, 0xde1

    iget v2, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTextureId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 138
    invoke-static {}, Lcom/google/android/opengl/carousel/GL2Helper;->setDefaultNPOTTextureState()V

    .line 139
    iput-boolean v3, p0, Lcom/google/android/opengl/common/FpsDisplay;->textUpdated:Z

    .line 140
    return-void
.end method

.method public postDraw()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/opengl/common/FpsDisplay;->updateFPS()V

    .line 161
    invoke-direct {p0}, Lcom/google/android/opengl/common/FpsDisplay;->onDrawFrame()V

    .line 162
    return-void
.end method

.method public preDraw()V
    .registers 7

    .prologue
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameStart:J

    .line 147
    iget-boolean v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mInitFinished:Z

    if-nez v1, :cond_32

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mInitFinished:Z

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialization time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameStart:J

    iget-wide v4, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTimeStart:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, logStr:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/common/FpsDisplay;->setDisplayString(Ljava/lang/String;)V

    .line 151
    iget-wide v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mFrameStart:J

    iput-wide v1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mTimeStart:J

    .line 154
    .end local v0           #logStr:Ljava/lang/String;
    :cond_32
    return-void
.end method

.method public setDisplayString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mDisplayString:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/FpsDisplay;->textUpdated:Z

    .line 109
    return-void
.end method

.method public updateDimension(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    iput p1, p0, Lcom/google/android/opengl/common/FpsDisplay;->mWindowWidth:I

    .line 121
    iput p2, p0, Lcom/google/android/opengl/common/FpsDisplay;->mWindowHeight:I

    .line 122
    return-void
.end method
