.class public Lcom/sec/android/app/twlauncher/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F

.field private final mZoomX:F

.field private final mZoomY:F


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 15
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    .line 92
    iget v4, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mFromDegrees:F

    .line 93
    .local v4, fromDegrees:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v8, v4

    mul-float/2addr v8, p1

    add-float v3, v4, v8

    .line 95
    .local v3, degrees:F
    iget v1, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterX:F

    .line 96
    .local v1, centerX:F
    iget v2, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterY:F

    .line 99
    .local v2, centerY:F
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 101
    .local v0, camera:Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 103
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 104
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mReverse:Z

    if-eqz v8, :cond_48

    .line 105
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v8, p1

    invoke-virtual {v0, v11, v11, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 106
    sub-float v8, v10, p1

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 107
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomX:F

    sub-float/2addr v8, v10

    mul-float/2addr v8, p1

    add-float v6, v10, v8

    .line 108
    .local v6, zoomX:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomY:F

    sub-float/2addr v8, v10

    mul-float/2addr v8, p1

    add-float v7, v10, v8

    .line 117
    .local v7, zoomY:F
    :goto_33
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 119
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 122
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 123
    neg-float v8, v1

    neg-float v9, v2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 124
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 126
    return-void

    .line 111
    .end local v6           #zoomX:F
    .end local v7           #zoomY:F
    :cond_48
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomX:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomX:F

    sub-float v9, v10, v9

    mul-float/2addr v9, p1

    add-float v6, v8, v9

    .line 112
    .restart local v6       #zoomX:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomY:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomY:F

    sub-float v9, v10, v9

    mul-float/2addr v9, p1

    add-float v7, v8, v9

    .line 113
    .restart local v7       #zoomY:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mDepthZ:F

    sub-float v9, v10, p1

    mul-float/2addr v8, v9

    invoke-virtual {v0, v11, v11, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_33
.end method

.method public initialize(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 76
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 77
    return-void
.end method

.method public setRotationCenter(FF)V
    .registers 3
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 86
    iput p1, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterX:F

    .line 87
    iput p2, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterY:F

    .line 88
    return-void
.end method
