.class public final Lcom/cooliris/media/GridCamera;
.super Ljava/lang/Object;
.source "GridCamera.java"


# instance fields
.field private mAmountExceeding:F

.field public mAspectRatio:F

.field public mConvergenceSpeed:F

.field public mDefaultAspectRatio:F

.field private mEyeEdgeOffsetX:F

.field private mEyeEdgeOffsetXAnim:F

.field private mEyeOffsetAnimX:F

.field private mEyeOffsetAnimY:F

.field public mEyeOffsetX:F

.field public mEyeOffsetY:F

.field public mEyeX:F

.field public mEyeY:F

.field public mEyeZ:F

.field public mFov:F

.field public mFriction:F

.field public mHeight:I

.field private mHeightBy2:I

.field public mItemHeight:I

.field public mItemWidth:I

.field public mLookAtX:F

.field public mLookAtY:F

.field public mLookAtZ:F

.field private mMaxX:F

.field private mMinX:F

.field public mOneByScale:F

.field private mPosX:F

.field private mPosY:F

.field private mPosZ:F

.field public mScale:F

.field private mTanFovBy2:F

.field private mTargetEyeX:F

.field private mTargetPosX:F

.field private mTargetPosY:F

.field private mTargetPosZ:F

.field public mUpX:F

.field public mUpY:F

.field public mUpZ:F

.field public mWidth:I

.field private mWidthBy2:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/cooliris/media/GridCamera;->reset()V

    .line 126
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/cooliris/media/GridCamera;->viewportChanged(IIFF)V

    .line 127
    const/high16 v0, 0x4110

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 129
    return-void
.end method


# virtual methods
.method public commitMoveInX()V
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    .line 265
    return-void
.end method

.method public commitMoveInY()V
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mPosY:F

    .line 269
    return-void
.end method

.method public commitMoveInZ()V
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    .line 273
    return-void
.end method

.method public computeConstraints(ZZLcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)Z
    .registers 14
    .parameter "applyConstraints"
    .parameter "applyOverflowFeedback"
    .parameter "firstSlotPosition"
    .parameter "lastSlotPosition"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, retVal:Z
    iget v5, p3, Lcom/cooliris/media/Vector3f;->x:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    int-to-float v6, v6

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    .line 283
    iget v5, p4, Lcom/cooliris/media/Vector3f;->x:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    int-to-float v6, v6

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    .line 285
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3b

    .line 286
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v7, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    .line 287
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 288
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    .line 289
    if-eqz p1, :cond_3a

    .line 290
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 291
    iput v8, p0, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 293
    :cond_3a
    const/4 v3, 0x1

    .line 295
    :cond_3b
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5e

    .line 296
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v7, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    .line 297
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 298
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    .line 299
    if-eqz p1, :cond_5d

    .line 300
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 301
    iput v8, p0, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 303
    :cond_5d
    const/4 v3, 0x1

    .line 305
    :cond_5e
    if-nez v3, :cond_76

    .line 306
    const/4 v4, 0x0

    .line 307
    .local v4, scrollingFromEdgeX:F
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_aa

    .line 308
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    sub-float v4, v5, v6

    .line 312
    :goto_6d
    const v5, 0x3dcccccd

    cmpl-float v5, v4, v5

    if-lez v5, :cond_76

    .line 313
    iput v8, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    .line 316
    .end local v4           #scrollingFromEdgeX:F
    :cond_76
    if-eqz p1, :cond_b1

    .line 317
    iput v8, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetX:F

    .line 320
    const v1, 0x3f4ccccd

    .line 321
    .local v1, maxBounceBack:F
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    neg-float v6, v1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_87

    .line 322
    neg-float v5, v1

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    .line 323
    :cond_87
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_8f

    .line 324
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    .line 326
    :cond_8f
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9b

    .line 327
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 328
    :cond_9b
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a7

    .line 329
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 330
    :cond_a7
    iput v8, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    .line 343
    .end local v1           #maxBounceBack:F
    :goto_a9
    return v3

    .line 310
    .restart local v4       #scrollingFromEdgeX:F
    :cond_aa
    iget v5, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    iget v6, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    sub-float v4, v5, v6

    goto :goto_6d

    .line 332
    .end local v4           #scrollingFromEdgeX:F
    :cond_b1
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mAmountExceeding:F

    .line 333
    .local v0, amountExceedingToUse:F
    const v2, 0x3f19999a

    .line 334
    .local v2, maxThreshold:F
    cmpl-float v5, v0, v2

    if-lez v5, :cond_bb

    .line 335
    move v0, v2

    .line 336
    :cond_bb
    neg-float v5, v2

    cmpg-float v5, v0, v5

    if-gez v5, :cond_c1

    .line 337
    neg-float v0, v2

    .line 338
    :cond_c1
    if-eqz p2, :cond_c9

    .line 339
    const/high16 v5, -0x3ee0

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetX:F

    goto :goto_a9

    .line 341
    :cond_c9
    iput v8, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetX:F

    goto :goto_a9
.end method

.method public convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V
    .registers 10
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"
    .parameter "retVal"

    .prologue
    .line 189
    iget v2, p0, Lcom/cooliris/media/GridCamera;->mWidthBy2:I

    int-to-float v2, v2

    sub-float v0, p1, v2

    .line 190
    .local v0, posXx:F
    iget v2, p0, Lcom/cooliris/media/GridCamera;->mHeightBy2:I

    int-to-float v2, v2

    sub-float v1, p2, v2

    .line 191
    .local v1, posYx:F
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 192
    iget v2, p4, Lcom/cooliris/media/Vector3f;->x:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p4, Lcom/cooliris/media/Vector3f;->x:F

    .line 193
    iget v2, p4, Lcom/cooliris/media/Vector3f;->y:F

    iget v3, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    add-float/2addr v2, v3

    iput v2, p4, Lcom/cooliris/media/Vector3f;->y:F

    .line 194
    return-void
.end method

.method public convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V
    .registers 14
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"
    .parameter "retVal"

    .prologue
    .line 198
    if-nez p4, :cond_3

    .line 214
    :goto_2
    return-void

    .line 201
    :cond_3
    move v0, p1

    .line 202
    .local v0, posXx:F
    move v1, p2

    .line 203
    .local v1, posYx:F
    iget v6, p0, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 204
    iget v6, p0, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 205
    move v2, p3

    .line 206
    .local v2, posZx:F
    iget v6, p0, Lcom/cooliris/media/GridCamera;->mTanFovBy2:F

    iget v7, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    const/high16 v8, 0x4100

    add-float/2addr v7, v8

    add-float/2addr v7, v2

    mul-float v5, v6, v7

    .line 207
    .local v5, zDiscriminant:F
    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    .line 208
    move v4, v5

    .line 209
    .local v4, yRange:F
    iget v6, p0, Lcom/cooliris/media/GridCamera;->mAspectRatio:F

    mul-float v3, v5, v6

    .line 210
    .local v3, xRange:F
    mul-float/2addr v0, v3

    .line 211
    mul-float/2addr v1, v4

    .line 212
    iput v0, p4, Lcom/cooliris/media/Vector3f;->x:F

    .line 213
    iput v1, p4, Lcom/cooliris/media/Vector3f;->y:F

    goto :goto_2
.end method

.method getBorder()I
    .registers 4

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, border:I
    iget v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v2, p0, Lcom/cooliris/media/GridCamera;->mMinX:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    .line 441
    const/4 v0, 0x2

    .line 442
    :cond_a
    iget v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v2, p0, Lcom/cooliris/media/GridCamera;->mMaxX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_13

    .line 443
    const/4 v0, 0x4

    .line 445
    :cond_13
    return v0
.end method

.method public getDistanceToFitRect(FF)F
    .registers 8
    .parameter "f"
    .parameter "g"

    .prologue
    .line 217
    div-float v2, p1, p2

    .line 218
    .local v2, thisAspectRatio:F
    move v0, p2

    .line 219
    .local v0, h:F
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mAspectRatio:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_12

    .line 221
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 226
    :cond_12
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 227
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mTanFovBy2:F

    div-float v1, v0, v3

    .line 228
    .local v1, targetZ:F
    const/high16 v3, 0x3f00

    mul-float/2addr v1, v3

    .line 229
    const/high16 v3, 0x4100

    sub-float/2addr v3, v1

    neg-float v3, v3

    return v3
.end method

.method public getItemWidth()I
    .registers 2

    .prologue
    .line 425
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    return v0
.end method

.method public getPosX()F
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 421
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mScale:F

    return v0
.end method

.method public getTargetPosX()F
    .registers 2

    .prologue
    .line 433
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    return v0
.end method

.method public isAnimating()Z
    .registers 3

    .prologue
    .line 365
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    iget v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/cooliris/media/GridCamera;->mPosY:F

    iget v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    iget v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetAnimX:F

    iget v1, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    iget v1, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isZAnimating()Z
    .registers 3

    .prologue
    .line 370
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    iget v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public moveBy(FFF)V
    .registers 7
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"

    .prologue
    .line 254
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    add-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/cooliris/media/GridCamera;->moveTo(FFF)V

    .line 255
    return-void
.end method

.method public moveTo(FFF)V
    .registers 8
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"

    .prologue
    .line 245
    iget v2, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    sub-float v0, p1, v2

    .line 246
    .local v0, delta:F
    iget v2, p0, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    mul-float v1, v2, v3

    .line 247
    .local v1, maxDelta:F
    neg-float v2, v1

    invoke-static {v0, v2, v1}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v0

    .line 248
    iget v2, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 249
    iput p2, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    .line 250
    iput p3, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    .line 251
    return-void
.end method

.method public moveYTo(F)V
    .registers 2
    .parameter "posY"

    .prologue
    .line 237
    iput p1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    .line 238
    return-void
.end method

.method public moveZTo(F)V
    .registers 2
    .parameter "posZ"

    .prologue
    .line 241
    iput p1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    .line 242
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mTargetEyeX:F

    .line 148
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mEyeX:F

    .line 149
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mEyeY:F

    .line 150
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mEyeZ:F

    .line 151
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mLookAtX:F

    .line 152
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mLookAtY:F

    .line 153
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mLookAtZ:F

    .line 154
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mUpX:F

    .line 155
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mUpY:F

    .line 156
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mUpZ:F

    .line 157
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    .line 158
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mPosY:F

    .line 159
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    .line 160
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 161
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    .line 162
    iput v1, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    .line 163
    return-void
.end method

.method public stopMovementInX()V
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    iput v0, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    .line 354
    return-void
.end method

.method public update(F)V
    .registers 10
    .parameter "timeElapsed"

    .prologue
    const/high16 v7, 0x4100

    const/4 v6, 0x0

    .line 374
    iget v1, p0, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 375
    .local v1, factor:F
    mul-float/2addr p1, v1

    .line 376
    iget v2, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    .line 379
    .local v2, oldPosX:F
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_a0

    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v3

    sget-object v4, Lcom/quramsoft/xiv/SFUtils$AnimationMode;->TRACKING:Lcom/quramsoft/xiv/SFUtils$AnimationMode;

    invoke-virtual {v3, v4}, Lcom/quramsoft/xiv/SFUtils;->getAnimationMode(Lcom/quramsoft/xiv/SFUtils$AnimationMode;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v3

    sget-object v4, Lcom/quramsoft/xiv/SFUtils$AnimationMode;->FLYING:Lcom/quramsoft/xiv/SFUtils$AnimationMode;

    invoke-virtual {v3, v4}, Lcom/quramsoft/xiv/SFUtils;->getAnimationMode(Lcom/quramsoft/xiv/SFUtils$AnimationMode;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 382
    :cond_24
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v3

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    iget v5, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    invoke-virtual {v3, v4, v5}, Lcom/quramsoft/xiv/SFUtils;->getPosX(FF)F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    .line 392
    :goto_32
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosY:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mTargetPosY:F

    invoke-static {v3, v4, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mPosY:F

    .line 393
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mTargetPosZ:F

    invoke-static {v3, v4, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    .line 394
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mEyeZ:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_50

    .line 395
    iput v6, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetX:F

    .line 396
    iput v6, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetY:F

    .line 398
    :cond_50
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetAnimX:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetX:F

    invoke-static {v3, v4, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetAnimX:F

    .line 399
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetAnimY:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetY:F

    invoke-static {v3, v4, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetAnimY:F

    .line 400
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetX:F

    invoke-static {v3, v4, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    .line 401
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mTargetEyeX:F

    .line 402
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mEyeZ:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_be

    .line 403
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mTargetEyeX:F

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeX:F

    .line 411
    :goto_7d
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mEyeX:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mEyeOffsetAnimX:F

    iget v5, p0, Lcom/cooliris/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeX:F

    .line 412
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mLookAtX:F

    .line 413
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosY:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeY:F

    .line 414
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosY:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mLookAtY:F

    .line 415
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    add-float/2addr v3, v7

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeZ:F

    .line 416
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosZ:F

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mLookAtZ:F

    .line 417
    return-void

    .line 384
    :cond_a0
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    invoke-static {v3, v4, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    .line 385
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mPosX:F

    sub-float v0, v3, v2

    .line 386
    .local v0, diff:F
    cmpl-float v3, v0, v6

    if-nez v3, :cond_b4

    .line 387
    iput v6, p0, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 388
    :cond_b4
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    iget v4, p0, Lcom/cooliris/media/GridCamera;->mFriction:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mTargetPosX:F

    goto/16 :goto_32

    .line 409
    .end local v0           #diff:F
    :cond_be
    iget v3, p0, Lcom/cooliris/media/GridCamera;->mTargetEyeX:F

    iput v3, p0, Lcom/cooliris/media/GridCamera;->mEyeX:F

    goto :goto_7d
.end method

.method public viewportChanged(IIFF)V
    .registers 14
    .parameter "w"
    .parameter "h"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v3, 0x3f80

    .line 168
    int-to-float v2, p2

    div-float v1, v2, p4

    .line 169
    .local v1, qFactor:F
    div-float v2, v1, v8

    float-to-double v4, v2

    const-wide/high16 v6, 0x4020

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v0, v8, v2

    .line 170
    .local v0, fov:F
    iput p1, p0, Lcom/cooliris/media/GridCamera;->mWidth:I

    .line 171
    iput p2, p0, Lcom/cooliris/media/GridCamera;->mHeight:I

    .line 172
    shr-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/cooliris/media/GridCamera;->mWidthBy2:I

    .line 173
    shr-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/cooliris/media/GridCamera;->mHeightBy2:I

    .line 174
    if-nez p2, :cond_4c

    move v2, v3

    :goto_26
    iput v2, p0, Lcom/cooliris/media/GridCamera;->mAspectRatio:F

    .line 175
    if-le p1, p2, :cond_50

    const/high16 v2, 0x3fc0

    :goto_2c
    iput v2, p0, Lcom/cooliris/media/GridCamera;->mDefaultAspectRatio:F

    .line 176
    const/high16 v2, 0x3f00

    mul-float/2addr v2, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, p0, Lcom/cooliris/media/GridCamera;->mTanFovBy2:F

    .line 177
    float-to-int v2, p4

    iput v2, p0, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    .line 178
    float-to-int v2, p3

    iput v2, p0, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    .line 179
    iput p4, p0, Lcom/cooliris/media/GridCamera;->mScale:F

    .line 180
    div-float v2, v3, p4

    iput v2, p0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    .line 181
    iput v0, p0, Lcom/cooliris/media/GridCamera;->mFov:F

    .line 182
    return-void

    .line 174
    :cond_4c
    int-to-float v2, p1

    int-to-float v4, p2

    div-float/2addr v2, v4

    goto :goto_26

    .line 175
    :cond_50
    const v2, 0x3f2aaaab

    goto :goto_2c
.end method
