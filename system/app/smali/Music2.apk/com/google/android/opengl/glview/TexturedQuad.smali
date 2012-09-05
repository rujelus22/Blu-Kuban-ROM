.class public abstract Lcom/google/android/opengl/glview/TexturedQuad;
.super Lcom/google/android/opengl/glview/GLView;
.source "TexturedQuad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    }
.end annotation


# instance fields
.field private mAnimationDurationInSec:F

.field private mAnimationTriggeredAtInMs:J

.field private mFade0:F

.field private mFade1:F

.field private mIsHorizontalRezzing:Z

.field private mIsRezzing:Z

.field private mMix0:F

.field private mMix1:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOffsetZ:F

.field private mOldOffsetX:F

.field private mOldOffsetY:F

.field private mOldOffsetZ:F

.field private mOldRotX:F

.field private mOldRotY:F

.field private mOldRotZ:F

.field private mOldX:F

.field private mOldY:F

.field private mOldZ:F

.field private mRotX:F

.field private mRotY:F

.field private mRotZ:F

.field private mTriangleVertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(IFF)V
    .registers 4
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 77
    invoke-virtual {p0, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;->internalSetExtent(FF)V

    .line 78
    return-void
.end method

.method private static lerp(FFF)F
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "u"

    .prologue
    .line 381
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private needAnimation()Z
    .registers 3

    .prologue
    .line 420
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotX:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotY:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_50

    :cond_4e
    const/4 v0, 0x1

    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method private quadNeedsRezzing(Lcom/google/android/opengl/glview/GLCanvas;)Z
    .registers 12
    .parameter "glCanvas"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 149
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsRezzing:Z

    if-nez v7, :cond_8

    .line 162
    :goto_7
    return v6

    .line 153
    :cond_8
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    if-eqz v7, :cond_27

    .line 154
    iget v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    iget v8, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 155
    .local v2, maxX:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->x()F

    move-result v8

    sub-float/2addr v7, v8

    sub-float v1, v7, v2

    .line 156
    .local v1, leftX:F
    cmpg-float v7, v1, v9

    if-gez v7, :cond_25

    .local v4, quadIsRezzinInX:Z
    :goto_23
    move v6, v4

    .line 157
    goto :goto_7

    .end local v4           #quadIsRezzinInX:Z
    :cond_25
    move v4, v6

    .line 156
    goto :goto_23

    .line 159
    .end local v1           #leftX:F
    .end local v2           #maxX:F
    :cond_27
    iget v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    iget v8, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 160
    .local v3, minY:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->y()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v8

    sub-float/2addr v8, v3

    sub-float v0, v7, v8

    .line 161
    .local v0, BottomY:F
    cmpg-float v7, v0, v9

    if-gez v7, :cond_46

    move v5, v4

    .local v5, quadIsRezzinInY:Z
    :goto_44
    move v6, v5

    .line 162
    goto :goto_7

    .end local v5           #quadIsRezzinInY:Z
    :cond_46
    move v5, v6

    .line 161
    goto :goto_44
.end method


# virtual methods
.method public contains(FF)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    add-float v2, v4, v5

    .line 83
    .local v2, lX:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    add-float v3, v4, v5

    .line 84
    .local v3, lY:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v1

    .line 85
    .local v1, lW:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v0

    .line 86
    .local v0, lH:F
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_2e

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_2e

    add-float v4, v2, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2e

    add-float v4, v3, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2e

    const/4 v4, 0x1

    :goto_2d
    return v4

    :cond_2e
    const/4 v4, 0x0

    goto :goto_2d
.end method

.method protected createVertexData()Ljava/nio/FloatBuffer;
    .registers 5

    .prologue
    .line 109
    const/16 v2, 0x18

    new-array v1, v2, [F

    fill-array-data v1, :array_24

    .line 115
    .local v1, triangleVerticesData:[F
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 117
    .local v0, buffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    return-object v0

    .line 109
    nop

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected drawBehind(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 4
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method protected drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z
    .registers 4
    .parameter "glCanvas"
    .parameter "textureChannel"

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method protected drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 5
    .parameter "glCanvas"

    .prologue
    .line 338
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 342
    return-void
.end method

.method protected ensureVertexData()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_a

    .line 104
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->createVertexData()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 106
    :cond_a
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .registers 6
    .parameter "bounds"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v2

    iget v3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    add-float v0, v2, v3

    .line 92
    .local v0, x:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v2

    iget v3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    add-float v1, v2, v3

    .line 93
    .local v1, y:F
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 94
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 95
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v2

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 96
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 97
    return-void
.end method

.method protected getLoadingTextureId()I
    .registers 2

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method protected getTextureFadeInFactor()F
    .registers 2

    .prologue
    .line 369
    const/high16 v0, 0x3f80

    return v0
.end method

.method protected abstract getTextureId()I
.end method

.method public layout(ZFF)V
    .registers 4
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;->internalLayout(ZFF)V

    .line 434
    return-void
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 29
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 177
    const/4 v12, 0x0

    .line 178
    .local v12, animating:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->ensureVertexData()V

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->pushMatrix()V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getFrameTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    move-wide/from16 v24, v0

    sub-long v13, v22, v24

    .line 184
    .local v13, animationDelayInMs:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_40

    long-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v23, v0

    const/high16 v24, 0x447a

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_40

    .line 186
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 187
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    .line 189
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_21d

    .line 190
    const/4 v12, 0x1

    .line 191
    long-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v23, v0

    const/high16 v24, 0x447a

    mul-float v23, v23, v24

    div-float v15, v22, v23

    .line 192
    .local v15, animationU:F
    new-instance v19, Lcom/google/android/opengl/glview/Spline;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/opengl/glview/Spline;-><init>()V

    .line 193
    .local v19, s:Lcom/google/android/opengl/glview/Spline;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/glview/Spline;->setEaseOut()V

    .line 194
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/google/android/opengl/glview/Spline;->approximatedInterpolatedValue(F)F

    move-result v15

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v9

    .line 196
    .local v9, animX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v10

    .line 197
    .local v10, animY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v11

    .line 198
    .local v11, animZ:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v6

    .line 199
    .local v6, animRotX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v7

    .line 200
    .local v7, animRotY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v15}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v8

    .line 201
    .local v8, animRotZ:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 202
    const/16 v22, 0x0

    cmpl-float v22, v6, v22

    if-nez v22, :cond_123

    const/16 v22, 0x0

    cmpl-float v22, v7, v22

    if-nez v22, :cond_123

    const/16 v22, 0x0

    cmpl-float v22, v8, v22

    if-eqz v22, :cond_1ac

    .line 203
    :cond_123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v22

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 204
    const/16 v22, 0x0

    cmpl-float v22, v6, v22

    if-eqz v22, :cond_157

    .line 205
    const/high16 v22, 0x3f80

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 207
    :cond_157
    const/16 v22, 0x0

    cmpl-float v22, v7, v22

    if-eqz v22, :cond_16e

    .line 208
    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 210
    :cond_16e
    const/16 v22, 0x0

    cmpl-float v22, v8, v22

    if-eqz v22, :cond_185

    .line 211
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 213
    :cond_185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 233
    .end local v6           #animRotX:F
    .end local v7           #animRotY:F
    .end local v8           #animRotZ:F
    .end local v9           #animX:F
    .end local v10           #animY:F
    .end local v11           #animZ:F
    .end local v15           #animationU:F
    .end local v19           #s:Lcom/google/android/opengl/glview/Spline;
    :cond_1ac
    :goto_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 235
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 237
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/opengl/glview/TexturedQuad;->drawBehind(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v22

    or-int v12, v12, v22

    .line 239
    const/16 v16, 0x0

    .line 240
    .local v16, drawQuad:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getLoadingTextureId()I

    move-result v17

    .line 241
    .local v17, loadingId:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureId()I

    move-result v21

    .line 242
    .local v21, textureId:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getAlpha()F

    move-result v5

    .line 244
    .local v5, alpha:F
    const/16 v20, 0x0

    .line 246
    .local v20, textureChannel:I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->quadNeedsRezzing(Lcom/google/android/opengl/glview/GLCanvas;)Z

    move-result v22

    if-eqz v22, :cond_3b6

    .line 247
    if-nez v17, :cond_32f

    .line 248
    if-eqz v21, :cond_208

    .line 249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_32a

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setHorizontalTexturedRezzingProgram()V

    .line 254
    :goto_1ea
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade1:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setFade(FF)V

    .line 255
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 256
    const/16 v16, 0x1

    .line 323
    :cond_208
    :goto_208
    if-eqz v16, :cond_20d

    .line 324
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 327
    :cond_20d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TexturedQuad;->drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z

    move-result v22

    or-int v12, v12, v22

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->popMatrix()V

    .line 330
    return v12

    .line 216
    .end local v5           #alpha:F
    .end local v16           #drawQuad:Z
    .end local v17           #loadingId:I
    .end local v20           #textureChannel:I
    .end local v21           #textureId:I
    :cond_21d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_258

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_258

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_30b

    .line 218
    :cond_258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v22

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_29a

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    move/from16 v22, v0

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 222
    :cond_29a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_2bf

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    move/from16 v22, v0

    const/16 v23, 0x0

    const/high16 v24, 0x3f80

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 225
    :cond_2bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_2e4

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 228
    :cond_2e4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 230
    :cond_30b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    goto/16 :goto_1ac

    .line 252
    .restart local v5       #alpha:F
    .restart local v16       #drawQuad:Z
    .restart local v17       #loadingId:I
    .restart local v20       #textureChannel:I
    .restart local v21       #textureId:I
    :cond_32a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setVerticalTexturedRezzingProgram()V

    goto/16 :goto_1ea

    .line 259
    :cond_32f
    if-eqz v21, :cond_38a

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v18

    .line 261
    .local v18, mix:F
    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 262
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_386

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setHorizontalMultiTextureRezzingProgram()V

    .line 267
    :goto_346
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix1:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade1:F

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setMixAndFade(FFFF)V

    .line 269
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 270
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 271
    const/16 v20, 0x1

    .line 281
    .end local v18           #mix:F
    :goto_382
    const/16 v16, 0x1

    goto/16 :goto_208

    .line 265
    .restart local v18       #mix:F
    :cond_386
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setVerticalMultiTextureRezzingProgram()V

    goto :goto_346

    .line 273
    .end local v18           #mix:F
    :cond_38a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3b2

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setHorizontalTexturedRezzingProgram()V

    .line 278
    :goto_395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade1:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setFade(FF)V

    .line 279
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_382

    .line 276
    :cond_3b2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setVerticalTexturedRezzingProgram()V

    goto :goto_395

    .line 285
    :cond_3b6
    if-nez v17, :cond_3f4

    .line 286
    if-eqz v21, :cond_208

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v23

    mul-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v23

    mul-float v18, v22, v23

    .line 288
    .restart local v18       #mix:F
    const/16 v22, 0x0

    cmpl-float v22, v18, v22

    if-lez v22, :cond_208

    .line 289
    const/high16 v22, 0x3f80

    cmpg-float v22, v18, v22

    if-gez v22, :cond_3f0

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setFadeTexturedProgram()V

    .line 292
    const/high16 v22, 0x3f80

    sub-float v22, v22, v18

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 293
    const/4 v12, 0x1

    .line 297
    :goto_3e5
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 298
    const/16 v16, 0x1

    goto/16 :goto_208

    .line 295
    :cond_3f0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    goto :goto_3e5

    .line 302
    .end local v18           #mix:F
    :cond_3f4
    if-eqz v21, :cond_430

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v18

    .line 304
    .restart local v18       #mix:F
    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 305
    const/high16 v22, 0x3f80

    cmpg-float v22, v18, v22

    if-gez v22, :cond_425

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setMultiTextureProgram()V

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 308
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 309
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 310
    const/16 v20, 0x1

    .line 311
    const/4 v12, 0x1

    .line 320
    .end local v18           #mix:F
    :goto_421
    const/16 v16, 0x1

    goto/16 :goto_208

    .line 313
    .restart local v18       #mix:F
    :cond_425
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 314
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_421

    .line 317
    .end local v18           #mix:F
    :cond_430
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 318
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_421
.end method

.method public savePose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V
    .registers 5
    .parameter "state"
    .parameter "frameTime"

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotX:F

    .line 388
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotY:F

    .line 389
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotZ:F

    .line 390
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mX:F

    .line 391
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mY:F

    .line 392
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mZ:F

    .line 393
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetX:F

    .line 394
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetY:F

    .line 395
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetZ:F

    .line 396
    iput-wide p2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    .line 397
    return-void
.end method

.method public setIsRezzing(Z)V
    .registers 2
    .parameter "isRezzing"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsRezzing:Z

    .line 145
    return-void
.end method

.method public setMixAndFadeLimits(FFFFZ)V
    .registers 6
    .parameter "mix0"
    .parameter "mix1"
    .parameter "fade0"
    .parameter "fade1"
    .parameter "isHorizontalRezzing"

    .prologue
    .line 168
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    .line 169
    iput p2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix1:F

    .line 170
    iput p3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    .line 171
    iput p4, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade1:F

    .line 172
    iput-boolean p5, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    .line 173
    return-void
.end method

.method public setOffset(FFF)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 134
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    .line 135
    iput p2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    .line 136
    iput p3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    .line 137
    return-void
.end method

.method public setOldPose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V
    .registers 8
    .parameter "state"
    .parameter "frameTime"

    .prologue
    .line 400
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotX:F

    .line 401
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotY:F

    .line 402
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    .line 403
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    .line 404
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    .line 405
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    .line 406
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    .line 407
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    .line 408
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    .line 409
    iget-wide v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    sub-long v0, p2, v2

    .line 410
    .local v0, timeElapsedAfterSaveInMs:J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_3d

    invoke-direct {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->needAnimation()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 411
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 412
    iget-wide v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    iput-wide v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    .line 417
    :goto_3c
    return-void

    .line 414
    :cond_3d
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 415
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    goto :goto_3c
.end method

.method protected setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 5
    .parameter "glCanvas"

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setQuadScale(FFFF)V

    .line 335
    return-void
.end method

.method public setRotationX(F)V
    .registers 2
    .parameter "rotX"

    .prologue
    .line 122
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    .line 123
    return-void
.end method

.method public setRotationY(F)V
    .registers 2
    .parameter "rotY"

    .prologue
    .line 126
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    .line 127
    return-void
.end method

.method public setRotationZ(F)V
    .registers 2
    .parameter "rotZ"

    .prologue
    .line 130
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    .line 131
    return-void
.end method
