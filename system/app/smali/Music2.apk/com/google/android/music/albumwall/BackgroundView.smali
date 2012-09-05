.class public Lcom/google/android/music/albumwall/BackgroundView;
.super Lcom/google/android/opengl/glview/GLView;
.source "BackgroundView.java"


# instance fields
.field private mA:F

.field private mAnimationState:I

.field private mAnimationTime:F

.field private mB:F

.field private mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mDefaultBackground:Landroid/graphics/Bitmap;

.field private mG:F

.field private mModel:Lcom/google/android/music/albumwall/Model;

.field private mNextItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mPreviousItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mQuadHeight:F

.field private mQuadWidth:F

.field private mR:F

.field private mTextureId:[I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private mUseAlbumArt:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/Model;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "model"
    .parameter "defaultBackground"

    .prologue
    const/4 v1, 0x1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    .line 62
    iput-object p1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 63
    iput-object p2, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/Bitmap;

    .line 64
    iput-boolean v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mUseAlbumArt:Z

    .line 65
    return-void
.end method

.method private clearTextureIds()V
    .registers 4

    .prologue
    .line 252
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 253
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_e
    return-void
.end method

.method private getDefaultBackgroundTextureId()I
    .registers 6

    .prologue
    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    aget v0, v1, v3

    .line 225
    .local v0, textureId:I
    if-nez v0, :cond_22

    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_22

    .line 226
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 227
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    aget v0, v1, v3

    .line 228
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 229
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 230
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 232
    :cond_22
    return v0
.end method


# virtual methods
.method protected ensureVertexData()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/BackgroundView;->width()F

    move-result v2

    .line 72
    .local v2, width:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/BackgroundView;->height()F

    move-result v0

    .line 73
    .local v0, height:F
    iget-object v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_1d

    iget v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadWidth:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_1d

    iget v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadHeight:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1d

    .line 87
    :goto_1c
    return-void

    .line 76
    :cond_1d
    iput v2, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadWidth:F

    .line 77
    iput v0, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadHeight:F

    .line 78
    const/16 v3, 0x18

    new-array v1, v3, [F

    aput v4, v1, v6

    const/4 v3, 0x1

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v4, v1, v3

    const/4 v3, 0x5

    aput v4, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v4, v1, v3

    const/16 v3, 0x8

    aput v4, v1, v3

    const/16 v3, 0x9

    aput v4, v1, v3

    const/16 v3, 0xa

    aput v5, v1, v3

    const/16 v3, 0xb

    aput v4, v1, v3

    const/16 v3, 0xc

    aput v4, v1, v3

    const/16 v3, 0xd

    aput v0, v1, v3

    const/16 v3, 0xe

    aput v4, v1, v3

    const/16 v3, 0xf

    aput v4, v1, v3

    const/16 v3, 0x10

    aput v4, v1, v3

    const/16 v3, 0x11

    aput v5, v1, v3

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v3, 0x13

    aput v0, v1, v3

    const/16 v3, 0x14

    aput v4, v1, v3

    const/16 v3, 0x15

    aput v4, v1, v3

    const/16 v3, 0x16

    aput v5, v1, v3

    const/16 v3, 0x17

    aput v5, v1, v3

    .line 84
    .local v1, triangleVerticesData:[F
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 86
    iget-object v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c
.end method

.method public freeOpenGlResources()V
    .registers 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 248
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->clearTextureIds()V

    .line 249
    return-void
.end method

.method public layout(ZFF)V
    .registers 4
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 237
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/BackgroundView;->internalLayout(ZFF)V

    .line 238
    return-void
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 14
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    const/16 v10, 0xbe2

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, animating:Z
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/BackgroundView;->ensureVertexData()V

    .line 122
    iget-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 123
    invoke-virtual {p1, v8, v8, v7, v7}, Lcom/google/android/opengl/glview/GLCanvas;->setQuadScale(FFFF)V

    .line 124
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, textureId0:I
    const/4 v4, 0x0

    .line 129
    .local v4, textureId1:I
    iget v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2d

    iget v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_2d

    .line 130
    iput v9, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    .line 131
    iget-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mPreviousItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 132
    iget-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mNextItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 135
    :cond_2d
    iget v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    if-ne v6, v9, :cond_54

    const/4 v1, 0x1

    .line 137
    .local v1, crossFadeAnimation:Z
    :goto_32
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->getDefaultBackgroundTextureId()I

    move-result v3

    .line 168
    if-eqz v1, :cond_56

    .line 169
    iget v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    sub-float v2, v6, v8

    .line 170
    .local v2, mix:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setMultiTextureProgram()V

    .line 171
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 172
    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 173
    invoke-virtual {p1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 182
    .end local v2           #mix:F
    :goto_48
    invoke-static {v10}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 184
    const/4 v6, 0x5

    const/4 v7, 0x4

    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 186
    invoke-static {v10}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 198
    return v0

    .end local v1           #crossFadeAnimation:Z
    :cond_54
    move v1, v5

    .line 135
    goto :goto_32

    .line 174
    .restart local v1       #crossFadeAnimation:Z
    :cond_56
    if-eqz v3, :cond_5f

    .line 175
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 176
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_48

    .line 178
    :cond_5f
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setFlatProgram()V

    .line 179
    iget v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mR:F

    iget v7, p0, Lcom/google/android/music/albumwall/BackgroundView;->mG:F

    iget v8, p0, Lcom/google/android/music/albumwall/BackgroundView;->mB:F

    iget v9, p0, Lcom/google/android/music/albumwall/BackgroundView;->mA:F

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/google/android/opengl/glview/GLCanvas;->setFlatColor(FFFF)V

    goto :goto_48
.end method

.method public onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 2
    .parameter "glCanvas"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->clearTextureIds()V

    .line 243
    return-void
.end method

.method public setBackgroundFromAlbumId(J)V
    .registers 3
    .parameter "albumId"

    .prologue
    .line 111
    return-void
.end method

.method public setColor(FFFF)V
    .registers 5
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 94
    iput p1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mR:F

    .line 95
    iput p2, p0, Lcom/google/android/music/albumwall/BackgroundView;->mG:F

    .line 96
    iput p3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mB:F

    .line 97
    iput p4, p0, Lcom/google/android/music/albumwall/BackgroundView;->mA:F

    .line 98
    return-void
.end method

.method public setUseAlbumArt(Z)V
    .registers 2
    .parameter "useAlbumArt"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mUseAlbumArt:Z

    .line 91
    return-void
.end method
