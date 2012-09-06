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

.field private mAreSecondLimitsSet:Z

.field private mFade0:F

.field private mFade1:F

.field private mFadeb0:F

.field private mFadeb1:F

.field private mIsHorizontalRezzing:Z

.field private mIsRezzing:Z

.field private mMix0:F

.field private mMix1:F

.field private mMixb0:F

.field private mMixb1:F

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
    .registers 5
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAreSecondLimitsSet:Z

    .line 83
    invoke-virtual {p0, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;->internalSetExtent(FF)V

    .line 84
    return-void
.end method

.method private static lerp(FFF)F
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "u"

    .prologue
    .line 437
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private needAnimation()Z
    .registers 3

    .prologue
    .line 476
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

    .line 155
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsRezzing:Z

    if-nez v7, :cond_8

    .line 168
    :goto_7
    return v6

    .line 159
    :cond_8
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    if-eqz v7, :cond_27

    .line 160
    iget v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    iget v8, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 161
    .local v2, maxX:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->x()F

    move-result v8

    sub-float/2addr v7, v8

    sub-float v1, v7, v2

    .line 162
    .local v1, leftX:F
    cmpg-float v7, v1, v9

    if-gez v7, :cond_25

    .local v4, quadIsRezzinInX:Z
    :goto_23
    move v6, v4

    .line 163
    goto :goto_7

    .end local v4           #quadIsRezzinInX:Z
    :cond_25
    move v4, v6

    .line 162
    goto :goto_23

    .line 165
    .end local v1           #leftX:F
    .end local v2           #maxX:F
    :cond_27
    iget v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    iget v8, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 166
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

    .line 167
    .local v0, BottomY:F
    cmpg-float v7, v0, v9

    if-gez v7, :cond_46

    move v5, v4

    .local v5, quadIsRezzinInY:Z
    :goto_44
    move v6, v5

    .line 168
    goto :goto_7

    .end local v5           #quadIsRezzinInY:Z
    :cond_46
    move v5, v6

    .line 167
    goto :goto_44
.end method

.method private quadNeedsSecondRezzing(Lcom/google/android/opengl/glview/GLCanvas;)Z
    .registers 12
    .parameter "glCanvas"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 174
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsRezzing:Z

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAreSecondLimitsSet:Z

    if-nez v7, :cond_d

    :cond_b
    move v4, v6

    .line 187
    :goto_c
    return v4

    .line 178
    :cond_d
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    if-eqz v7, :cond_30

    .line 179
    iget v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMixb0:F

    iget v8, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFadeb0:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 180
    .local v3, minX:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->x()F

    move-result v8

    sub-float/2addr v7, v8

    sub-float v1, v7, v3

    .line 181
    .local v1, leftX:F
    cmpl-float v7, v1, v9

    if-lez v7, :cond_2e

    .line 182
    .local v4, quadIsRezzinInX:Z
    :goto_2d
    goto :goto_c

    .end local v4           #quadIsRezzinInX:Z
    :cond_2e
    move v4, v6

    .line 181
    goto :goto_2d

    .line 184
    .end local v1           #leftX:F
    .end local v3           #minX:F
    :cond_30
    iget v7, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMixb0:F

    iget v8, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFadeb0:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 185
    .local v2, maxY:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->y()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v8

    sub-float/2addr v8, v2

    sub-float v0, v7, v8

    .line 186
    .local v0, BottomY:F
    cmpl-float v7, v0, v9

    if-lez v7, :cond_54

    move v5, v4

    .local v5, quadIsRezzinInY:Z
    :goto_52
    move v4, v5

    .line 187
    goto :goto_c

    .end local v5           #quadIsRezzinInY:Z
    :cond_54
    move v5, v6

    .line 186
    goto :goto_52
.end method

.method private setRezzingHelper(Lcom/google/android/opengl/glview/GLCanvas;IIFFFFF)Z
    .registers 12
    .parameter "glCanvas"
    .parameter "loadingId"
    .parameter "textureId"
    .parameter "alpha"
    .parameter "mix0"
    .parameter "mix1"
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, drawQuad:Z
    if-nez p2, :cond_18

    .line 224
    if-eqz p3, :cond_13

    .line 225
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    if-eqz v2, :cond_14

    .line 226
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setHorizontalTexturedRezzingProgram()V

    .line 230
    :goto_c
    invoke-virtual {p1, p7, p8}, Lcom/google/android/opengl/glview/GLCanvas;->setFade(FF)V

    .line 231
    invoke-virtual {p1, p3}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 232
    const/4 v0, 0x1

    .line 258
    :cond_13
    :goto_13
    return v0

    .line 228
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setVerticalTexturedRezzingProgram()V

    goto :goto_c

    .line 235
    :cond_18
    if-eqz p3, :cond_3b

    .line 236
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v1

    .line 237
    .local v1, mix:F
    invoke-static {p4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 238
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    if-eqz v2, :cond_37

    .line 239
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setHorizontalMultiTextureRezzingProgram()V

    .line 243
    :goto_29
    invoke-virtual {p1, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 244
    invoke-virtual {p1, p5, p6, p7, p8}, Lcom/google/android/opengl/glview/GLCanvas;->setMixAndFade(FFFF)V

    .line 245
    invoke-virtual {p1, p2}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 246
    invoke-virtual {p1, p3}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 256
    .end local v1           #mix:F
    :goto_35
    const/4 v0, 0x1

    goto :goto_13

    .line 241
    .restart local v1       #mix:F
    :cond_37
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setVerticalMultiTextureRezzingProgram()V

    goto :goto_29

    .line 248
    .end local v1           #mix:F
    :cond_3b
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    if-eqz v2, :cond_49

    .line 249
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setHorizontalTexturedRezzingProgram()V

    .line 253
    :goto_42
    invoke-virtual {p1, p7, p8}, Lcom/google/android/opengl/glview/GLCanvas;->setFade(FF)V

    .line 254
    invoke-virtual {p1, p2}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_35

    .line 251
    :cond_49
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setVerticalTexturedRezzingProgram()V

    goto :goto_42
.end method


# virtual methods
.method public contains(FF)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    add-float v2, v4, v5

    .line 89
    .local v2, lX:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    add-float v3, v4, v5

    .line 90
    .local v3, lY:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v1

    .line 91
    .local v1, lW:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v0

    .line 92
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
    .line 115
    const/16 v2, 0x18

    new-array v1, v2, [F

    fill-array-data v1, :array_24

    .line 121
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

    .line 123
    .local v0, buffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    return-object v0

    .line 115
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

.method public disableSecondMixAndFadeLimits()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAreSecondLimitsSet:Z

    .line 218
    return-void
.end method

.method protected drawBehind(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 4
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method protected drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z
    .registers 4
    .parameter "glCanvas"
    .parameter "textureChannel"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method protected drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 5
    .parameter "glCanvas"

    .prologue
    .line 394
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 398
    return-void
.end method

.method protected ensureVertexData()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_a

    .line 110
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->createVertexData()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 112
    :cond_a
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .registers 6
    .parameter "bounds"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v2

    iget v3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    add-float v0, v2, v3

    .line 98
    .local v0, x:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v2

    iget v3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    add-float v1, v2, v3

    .line 99
    .local v1, y:F
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 100
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 101
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v2

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 102
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 103
    return-void
.end method

.method protected getLoadingTextureId()I
    .registers 2

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method protected getTextureFadeInFactor()F
    .registers 2

    .prologue
    .line 425
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
    .line 489
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;->internalLayout(ZFF)V

    .line 490
    return-void
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 29
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 263
    const/16 v18, 0x0

    .line 264
    .local v18, animating:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->ensureVertexData()V

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->pushMatrix()V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getFrameTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    sub-long v19, v3, v8

    .line 270
    .local v19, animationDelayInMs:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_34

    move-wide/from16 v0, v19

    long-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    const/high16 v8, 0x447a

    mul-float/2addr v4, v8

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_34

    .line 272
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 273
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    .line 275
    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_195

    .line 276
    const/16 v18, 0x1

    .line 277
    move-wide/from16 v0, v19

    long-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    const/high16 v8, 0x447a

    mul-float/2addr v4, v8

    div-float v21, v3, v4

    .line 278
    .local v21, animationU:F
    new-instance v24, Lcom/google/android/opengl/glview/Spline;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/opengl/glview/Spline;-><init>()V

    .line 279
    .local v24, s:Lcom/google/android/opengl/glview/Spline;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/opengl/glview/Spline;->setEaseOut()V

    .line 280
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Spline;->approximatedInterpolatedValue(F)F

    move-result v21

    .line 281
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    add-float/2addr v4, v8

    move/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v15

    .line 282
    .local v15, animX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    add-float/2addr v4, v8

    move/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v16

    .line 283
    .local v16, animY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    add-float/2addr v4, v8

    move/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v17

    .line 284
    .local v17, animZ:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    move/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v12

    .line 285
    .local v12, animRotX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    move/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v13

    .line 286
    .local v13, animRotY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v0, v21

    invoke-static {v3, v4, v0}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v14

    .line 287
    .local v14, animRotZ:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 288
    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-nez v3, :cond_e5

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-nez v3, :cond_e5

    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_139

    .line 289
    :cond_e5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v4

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 290
    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-eqz v3, :cond_107

    .line 291
    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 293
    :cond_107
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-eqz v3, :cond_115

    .line 294
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 296
    :cond_115
    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_123

    .line 297
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 299
    :cond_123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v4

    neg-float v4, v4

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 319
    .end local v12           #animRotX:F
    .end local v13           #animRotY:F
    .end local v14           #animRotZ:F
    .end local v15           #animX:F
    .end local v16           #animY:F
    .end local v17           #animZ:F
    .end local v21           #animationU:F
    .end local v24           #s:Lcom/google/android/opengl/glview/Spline;
    :cond_139
    :goto_139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 321
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 323
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/opengl/glview/TexturedQuad;->drawBehind(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v3

    or-int v18, v18, v3

    .line 325
    const/16 v22, 0x0

    .line 326
    .local v22, drawQuad:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getLoadingTextureId()I

    move-result v5

    .line 327
    .local v5, loadingId:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureId()I

    move-result v6

    .line 328
    .local v6, textureId:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getAlpha()F

    move-result v7

    .line 330
    .local v7, alpha:F
    if-eqz v5, :cond_240

    if-eqz v6, :cond_240

    const/16 v25, 0x1

    .line 332
    .local v25, textureChannel:I
    :goto_162
    invoke-direct/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->quadNeedsRezzing(Lcom/google/android/opengl/glview/GLCanvas;)Z

    move-result v3

    if-eqz v3, :cond_244

    .line 333
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix1:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade1:F

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/opengl/glview/TexturedQuad;->setRezzingHelper(Lcom/google/android/opengl/glview/GLCanvas;IIFFFFF)Z

    move-result v22

    .line 379
    :cond_180
    :goto_180
    if-eqz v22, :cond_185

    .line 380
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 383
    :cond_185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TexturedQuad;->drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z

    move-result v3

    or-int v18, v18, v3

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->popMatrix()V

    .line 386
    return v18

    .line 302
    .end local v5           #loadingId:I
    .end local v6           #textureId:I
    .end local v7           #alpha:F
    .end local v22           #drawQuad:Z
    .end local v25           #textureChannel:I
    :cond_195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 303
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1c1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1c1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_22d

    .line 304
    :cond_1c1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v4

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 305
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1eb

    .line 306
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    const/high16 v4, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 308
    :cond_1eb
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_201

    .line 309
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    const/4 v4, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 311
    :cond_201
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_217

    .line 312
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 314
    :cond_217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v4

    neg-float v4, v4

    const/high16 v8, 0x4000

    div-float/2addr v4, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 316
    :cond_22d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    goto/16 :goto_139

    .line 330
    .restart local v5       #loadingId:I
    .restart local v6       #textureId:I
    .restart local v7       #alpha:F
    .restart local v22       #drawQuad:Z
    :cond_240
    const/16 v25, 0x0

    goto/16 :goto_162

    .line 336
    .restart local v25       #textureChannel:I
    :cond_244
    invoke-direct/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->quadNeedsSecondRezzing(Lcom/google/android/opengl/glview/GLCanvas;)Z

    move-result v3

    if-eqz v3, :cond_264

    .line 337
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mMixb0:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mMixb1:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFadeb0:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mFadeb1:F

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/opengl/glview/TexturedQuad;->setRezzingHelper(Lcom/google/android/opengl/glview/GLCanvas;IIFFFFF)Z

    move-result v22

    goto/16 :goto_180

    .line 341
    :cond_264
    if-nez v5, :cond_29d

    .line 342
    if-eqz v6, :cond_180

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v4

    mul-float v23, v3, v4

    .line 344
    .local v23, mix:F
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-lez v3, :cond_180

    .line 345
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-gez v3, :cond_299

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setFadeTexturedProgram()V

    .line 348
    const/high16 v3, 0x3f80

    sub-float v3, v3, v23

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 349
    const/16 v18, 0x1

    .line 353
    :goto_290
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 354
    const/16 v22, 0x1

    goto/16 :goto_180

    .line 351
    :cond_299
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    goto :goto_290

    .line 358
    .end local v23           #mix:F
    :cond_29d
    if-eqz v6, :cond_2d4

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v23

    .line 360
    .restart local v23       #mix:F
    move/from16 v0, v23

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 361
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-gez v3, :cond_2c9

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setMultiTextureProgram()V

    .line 363
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 364
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 365
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 366
    const/16 v18, 0x1

    .line 376
    .end local v23           #mix:F
    :goto_2c5
    const/16 v22, 0x1

    goto/16 :goto_180

    .line 368
    .restart local v23       #mix:F
    :cond_2c9
    const/16 v25, 0x0

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 370
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_2c5

    .line 373
    .end local v23           #mix:F
    :cond_2d4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 374
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_2c5
.end method

.method public savePose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V
    .registers 5
    .parameter "state"
    .parameter "frameTime"

    .prologue
    .line 443
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotX:F

    .line 444
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotY:F

    .line 445
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotZ:F

    .line 446
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mX:F

    .line 447
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mY:F

    .line 448
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mZ:F

    .line 449
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetX:F

    .line 450
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetY:F

    .line 451
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetZ:F

    .line 452
    iput-wide p2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    .line 453
    return-void
.end method

.method public setIsRezzing(Z)V
    .registers 2
    .parameter "isRezzing"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsRezzing:Z

    .line 151
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
    .line 193
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix0:F

    .line 194
    iput p2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMix1:F

    .line 195
    iput p3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade0:F

    .line 196
    iput p4, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFade1:F

    .line 197
    iput-boolean p5, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mIsHorizontalRezzing:Z

    .line 198
    return-void
.end method

.method public setOffset(FFF)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 140
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    .line 141
    iput p2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    .line 142
    iput p3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    .line 143
    return-void
.end method

.method public setOldPose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V
    .registers 8
    .parameter "state"
    .parameter "frameTime"

    .prologue
    .line 456
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotX:F

    .line 457
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotY:F

    .line 458
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    .line 459
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    .line 460
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    .line 461
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    .line 462
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    .line 463
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    .line 464
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    .line 465
    iget-wide v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    sub-long v0, p2, v2

    .line 466
    .local v0, timeElapsedAfterSaveInMs:J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_3d

    invoke-direct {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->needAnimation()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 467
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 468
    iget-wide v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    iput-wide v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    .line 473
    :goto_3c
    return-void

    .line 470
    :cond_3d
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 471
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    goto :goto_3c
.end method

.method protected setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 5
    .parameter "glCanvas"

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setQuadScale(FFFF)V

    .line 391
    return-void
.end method

.method public setRotationX(F)V
    .registers 2
    .parameter "rotX"

    .prologue
    .line 128
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotX:F

    .line 129
    return-void
.end method

.method public setRotationY(F)V
    .registers 2
    .parameter "rotY"

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotY:F

    .line 133
    return-void
.end method

.method public setRotationZ(F)V
    .registers 2
    .parameter "rotZ"

    .prologue
    .line 136
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    .line 137
    return-void
.end method

.method public setSecondMixAndFadeLimits(FFFF)V
    .registers 6
    .parameter "mix0"
    .parameter "mix1"
    .parameter "fade0"
    .parameter "fade1"

    .prologue
    .line 209
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMixb0:F

    .line 210
    iput p2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mMixb1:F

    .line 211
    iput p3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFadeb0:F

    .line 212
    iput p4, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mFadeb1:F

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAreSecondLimitsSet:Z

    .line 214
    return-void
.end method
