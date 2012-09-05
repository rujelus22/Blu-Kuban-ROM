.class public Lcom/quramsoft/xiv/SFUtils;
.super Ljava/lang/Object;
.source "SFUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/xiv/SFUtils$AnimationMode;
    }
.end annotation


# static fields
.field private static volatile singleton:Lcom/quramsoft/xiv/SFUtils;


# instance fields
.field private mAnchorSet:Z

.field private mAnimationCurve:I

.field private mAnimationDuration:F

.field private mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

.field private mDeltaAnchor:F

.field private mInterpolationUnit:F

.field private mIsFollowing:Z

.field private mIsMovingSlot:Z

.field private mMinimumVelocity:F

.field private mMoveCondition:F

.field private mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

.field private mScreenX:F

.field private mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

.field private mSpacingX:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/quramsoft/xiv/SFUtils;->mIsFollowing:Z

    .line 23
    iput-boolean v0, p0, Lcom/quramsoft/xiv/SFUtils;->mIsMovingSlot:Z

    .line 24
    iput-boolean v0, p0, Lcom/quramsoft/xiv/SFUtils;->mAnchorSet:Z

    .line 25
    iput v2, p0, Lcom/quramsoft/xiv/SFUtils;->mDeltaAnchor:F

    .line 26
    iput v0, p0, Lcom/quramsoft/xiv/SFUtils;->mSpacingX:I

    .line 27
    iput v2, p0, Lcom/quramsoft/xiv/SFUtils;->mScreenX:F

    .line 28
    iput-object v1, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    .line 29
    iput-object v1, p0, Lcom/quramsoft/xiv/SFUtils;->mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

    .line 31
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationDuration:F

    .line 33
    const v0, 0x3e99999a

    iput v0, p0, Lcom/quramsoft/xiv/SFUtils;->mMinimumVelocity:F

    .line 35
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/quramsoft/xiv/SFUtils;->mInterpolationUnit:F

    .line 37
    const v0, 0x40066666

    iput v0, p0, Lcom/quramsoft/xiv/SFUtils;->mMoveCondition:F

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationCurve:I

    .line 43
    iput-object v1, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    .line 50
    new-instance v0, Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-direct {v0}, Lcom/quramsoft/xiv/AnimatorSingle;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    .line 51
    new-instance v0, Lcom/quramsoft/xiv/SFRotateEffect;

    invoke-direct {v0}, Lcom/quramsoft/xiv/SFRotateEffect;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

    .line 52
    return-void
.end method

.method public static destroyInstance()V
    .registers 4

    .prologue
    .line 57
    :try_start_0
    const-class v2, Lcom/quramsoft/xiv/SFUtils;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_19

    .line 58
    :try_start_3
    sget-object v1, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    if-eqz v1, :cond_14

    .line 60
    sget-object v1, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    .line 61
    sget-object v1, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V

    .line 62
    const/4 v1, 0x0

    sput-object v1, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    .line 57
    :cond_14
    monitor-exit v2

    .line 69
    .local v0, e:Ljava/lang/Throwable;
    :goto_15
    return-void

    .line 57
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    :try_start_18
    throw v1
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19

    .line 65
    :catch_19
    move-exception v0

    .line 67
    .restart local v0       #e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method public static getInstance()Lcom/quramsoft/xiv/SFUtils;
    .registers 3

    .prologue
    .line 75
    sget-object v0, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    if-nez v0, :cond_1c

    .line 76
    const-class v1, Lcom/quramsoft/xiv/SFUtils;

    monitor-enter v1

    .line 79
    :try_start_7
    sget-object v0, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    if-nez v0, :cond_1b

    .line 81
    new-instance v0, Lcom/quramsoft/xiv/SFUtils;

    invoke-direct {v0}, Lcom/quramsoft/xiv/SFUtils;-><init>()V

    sput-object v0, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    .line 82
    sget-object v0, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    new-instance v2, Lcom/quramsoft/xiv/XIVAnimationTimer;

    invoke-direct {v2}, Lcom/quramsoft/xiv/XIVAnimationTimer;-><init>()V

    iput-object v2, v0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    .line 76
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1f

    .line 86
    :cond_1c
    sget-object v0, Lcom/quramsoft/xiv/SFUtils;->singleton:Lcom/quramsoft/xiv/SFUtils;

    return-object v0

    .line 76
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public getAnimationDuration()F
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationDuration:F

    return v0
.end method

.method public getAnimationMode(Lcom/quramsoft/xiv/SFUtils$AnimationMode;)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, ret:Z
    sget-object v1, Lcom/quramsoft/xiv/SFUtils$AnimationMode;->FLYING:Lcom/quramsoft/xiv/SFUtils$AnimationMode;

    if-ne p1, v1, :cond_8

    .line 290
    iget-boolean v0, p0, Lcom/quramsoft/xiv/SFUtils;->mIsMovingSlot:Z

    .line 298
    :cond_7
    :goto_7
    return v0

    .line 293
    :cond_8
    sget-object v1, Lcom/quramsoft/xiv/SFUtils$AnimationMode;->TRACKING:Lcom/quramsoft/xiv/SFUtils$AnimationMode;

    if-ne p1, v1, :cond_7

    .line 295
    iget-boolean v0, p0, Lcom/quramsoft/xiv/SFUtils;->mIsFollowing:Z

    goto :goto_7
.end method

.method public getCurrentSlot(Lcom/cooliris/media/GridCamera;)I
    .registers 8
    .parameter "camera"

    .prologue
    .line 257
    iget-boolean v2, p0, Lcom/quramsoft/xiv/SFUtils;->mAnchorSet:Z

    if-eqz v2, :cond_21

    .line 259
    invoke-virtual {p1}, Lcom/cooliris/media/GridCamera;->getPosX()F

    move-result v2

    invoke-virtual {p1}, Lcom/cooliris/media/GridCamera;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/quramsoft/xiv/SFUtils;->mDeltaAnchor:F

    add-float v1, v2, v3

    .line 260
    .local v1, x:F
    invoke-virtual {p1}, Lcom/cooliris/media/GridCamera;->getItemWidth()I

    move-result v2

    iget v3, p0, Lcom/quramsoft/xiv/SFUtils;->mSpacingX:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 263
    .end local v1           #x:F
    :goto_20
    return v0

    :cond_21
    const/4 v0, -0x1

    goto :goto_20
.end method

.method public getPosX(FF)F
    .registers 7
    .parameter "posX"
    .parameter "targetPosX"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, retPosX:F
    iget-boolean v1, p0, Lcom/quramsoft/xiv/SFUtils;->mIsFollowing:Z

    if-eqz v1, :cond_10

    .line 124
    sub-float v1, p2, p1

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/quramsoft/xiv/SFUtils;->mInterpolationUnit:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float v0, p1, v1

    .line 137
    :cond_f
    :goto_f
    return v0

    .line 127
    :cond_10
    iget-boolean v1, p0, Lcom/quramsoft/xiv/SFUtils;->mIsMovingSlot:Z

    if-eqz v1, :cond_f

    .line 129
    iget-object v1, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-virtual {v1}, Lcom/quramsoft/xiv/AnimatorSingle;->getX()F

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-virtual {v1}, Lcom/quramsoft/xiv/AnimatorSingle;->isRunning()Z

    move-result v1

    if-nez v1, :cond_f

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/quramsoft/xiv/SFUtils;->mIsMovingSlot:Z

    goto :goto_f
.end method

.method public onDrawFrame(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RootLayer;Ljavax/microedition/khronos/opengles/GL10;Lcom/cooliris/media/RenderView$Lists;II)V
    .registers 14
    .parameter "view"
    .parameter "layer"
    .parameter "gl"
    .parameter "sList"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 335
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isUseRotateAnimation:Z

    if-eqz v0, :cond_f

    .line 336
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/quramsoft/xiv/SFRotateEffect;->onDrawFrame(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RootLayer;Ljavax/microedition/khronos/opengles/GL10;Lcom/cooliris/media/RenderView$Lists;II)V

    .line 337
    :cond_f
    return-void
.end method

.method public onSurfaceChanged()V
    .registers 2

    .prologue
    .line 313
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isUseRotateAnimation:Z

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

    invoke-virtual {v0}, Lcom/quramsoft/xiv/SFRotateEffect;->onSurfaceChanged()V

    .line 315
    :cond_9
    return-void
.end method

.method public saveCurrentRotation()V
    .registers 2

    .prologue
    .line 329
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isUseRotateAnimation:Z

    if-eqz v0, :cond_9

    .line 330
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

    invoke-virtual {v0}, Lcom/quramsoft/xiv/SFRotateEffect;->saveCurrentRotation()V

    .line 331
    :cond_9
    return-void
.end method

.method public setAnchorAndSpacing(FI)V
    .registers 4
    .parameter "delta"
    .parameter "spacing"

    .prologue
    .line 268
    iput p2, p0, Lcom/quramsoft/xiv/SFUtils;->mSpacingX:I

    .line 269
    iput p1, p0, Lcom/quramsoft/xiv/SFUtils;->mDeltaAnchor:F

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/xiv/SFUtils;->mAnchorSet:Z

    .line 271
    return-void
.end method

.method public setAnimationMode(Lcom/quramsoft/xiv/SFUtils$AnimationMode;Z)V
    .registers 4
    .parameter "mode"
    .parameter "val"

    .prologue
    .line 275
    sget-object v0, Lcom/quramsoft/xiv/SFUtils$AnimationMode;->FLYING:Lcom/quramsoft/xiv/SFUtils$AnimationMode;

    if-ne p1, v0, :cond_7

    .line 277
    iput-boolean p2, p0, Lcom/quramsoft/xiv/SFUtils;->mIsMovingSlot:Z

    .line 283
    :cond_6
    :goto_6
    return-void

    .line 279
    :cond_7
    sget-object v0, Lcom/quramsoft/xiv/SFUtils$AnimationMode;->TRACKING:Lcom/quramsoft/xiv/SFUtils$AnimationMode;

    if-ne p1, v0, :cond_6

    .line 281
    iput-boolean p2, p0, Lcom/quramsoft/xiv/SFUtils;->mIsFollowing:Z

    goto :goto_6
.end method

.method public setSelectedItemAspectRatio(IFF)V
    .registers 6
    .parameter "index"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 341
    sget-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isUseRotateAnimation:Z

    if-eqz v1, :cond_d

    .line 343
    if-nez p1, :cond_d

    .line 345
    div-float v0, p2, p3

    .line 346
    .local v0, aspectRatio:F
    iget-object v1, p0, Lcom/quramsoft/xiv/SFUtils;->mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

    invoke-virtual {v1, v0}, Lcom/quramsoft/xiv/SFRotateEffect;->setSelectedItemAspectRatio(F)V

    .line 349
    .end local v0           #aspectRatio:F
    :cond_d
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;)V
    .registers 3
    .parameter "windowManager"

    .prologue
    .line 308
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isUseRotateAnimation:Z

    if-eqz v0, :cond_9

    .line 309
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mRotationAnimator:Lcom/quramsoft/xiv/SFRotateEffect;

    invoke-virtual {v0, p1}, Lcom/quramsoft/xiv/SFRotateEffect;->setWindowManager(Landroid/view/WindowManager;)V

    .line 310
    :cond_9
    return-void
.end method

.method public setup(FFFII)V
    .registers 8
    .parameter "animationDuration"
    .parameter "minimumVelocity"
    .parameter "moveCondition"
    .parameter "animationCurve"
    .parameter "rotationCurve"

    .prologue
    .line 91
    iput p1, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationDuration:F

    .line 92
    iput p2, p0, Lcom/quramsoft/xiv/SFUtils;->mMinimumVelocity:F

    .line 93
    iput p3, p0, Lcom/quramsoft/xiv/SFUtils;->mMoveCondition:F

    .line 94
    iput p4, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationCurve:I

    .line 95
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    iget v1, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationCurve:I

    invoke-virtual {v0, v1}, Lcom/quramsoft/xiv/AnimatorSingle;->setAnimationCurve(I)V

    .line 96
    if-eqz p5, :cond_15

    .line 97
    invoke-static {p5}, Lcom/quramsoft/xiv/SFRotateEffect;->setAnimationCurve(I)V

    .line 100
    :goto_14
    return-void

    .line 99
    :cond_15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isUseRotateAnimation:Z

    goto :goto_14
.end method

.method public setupForTouchBegin(I)V
    .registers 5
    .parameter "posX"

    .prologue
    const/4 v2, 0x0

    .line 143
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_c

    .line 144
    const-string v0, "SFUtils"

    const-string v1, "setupForTouchBegin called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_c
    int-to-float v0, p1

    iput v0, p0, Lcom/quramsoft/xiv/SFUtils;->mScreenX:F

    .line 148
    iput-boolean v2, p0, Lcom/quramsoft/xiv/SFUtils;->mIsFollowing:Z

    .line 149
    iput-boolean v2, p0, Lcom/quramsoft/xiv/SFUtils;->mIsMovingSlot:Z

    .line 150
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    iget v1, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationDuration:F

    invoke-virtual {v0, v1}, Lcom/quramsoft/xiv/AnimatorSingle;->setDuration(F)V

    .line 151
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-virtual {v0}, Lcom/quramsoft/xiv/AnimatorSingle;->reset()V

    .line 153
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/quramsoft/xiv/AnimatorSingle;->queuePos(F)V

    .line 162
    return-void
.end method

.method public setupForTouchMoved(F)V
    .registers 4
    .parameter "deltaX"

    .prologue
    .line 166
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_b

    .line 167
    const-string v0, "SFUtils"

    const-string v1, "setupForTouchMoved called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/xiv/SFUtils;->mIsFollowing:Z

    .line 170
    iget-object v0, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-virtual {v0, p1}, Lcom/quramsoft/xiv/AnimatorSingle;->queueDelta(F)V

    .line 171
    return-void
.end method

.method public startAnimation(Lcom/cooliris/media/GridLayer;Lcom/cooliris/media/GridCamera;II)Z
    .registers 15
    .parameter "layer"
    .parameter "camera"
    .parameter "posX"
    .parameter "moveInPixel"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/high16 v8, 0x3f80

    .line 175
    invoke-virtual {p1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_160

    invoke-virtual {p1}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_160

    .line 177
    sget-boolean v4, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v4, :cond_21

    .line 179
    const-string v4, "SFUtils"

    const-string v5, "readyToAnimation called"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_21
    iget-object v4, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-virtual {v4}, Lcom/quramsoft/xiv/AnimatorSingle;->queueLast()V

    .line 185
    invoke-virtual {p1}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    .line 186
    .local v0, hud:Lcom/cooliris/media/HudLayer;
    const/4 v1, 0x1

    .line 187
    .local v1, isWillBeMoved:Z
    iget-object v4, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-virtual {v4}, Lcom/quramsoft/xiv/AnimatorSingle;->getSpeed()F

    move-result v2

    .line 188
    .local v2, speed:F
    if-lez p4, :cond_113

    .line 190
    iget v4, p0, Lcom/quramsoft/xiv/SFUtils;->mMinimumVelocity:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_e2

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_e2

    .line 191
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    .line 215
    :goto_43
    if-eqz v1, :cond_64

    .line 217
    iget-object v4, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    if-eqz v4, :cond_50

    .line 219
    iget-object v4, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    invoke-virtual {v4}, Lcom/quramsoft/xiv/XIVAnimationTimer;->cancel()V

    .line 220
    iput-object v9, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    .line 223
    :cond_50
    iput-object v9, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    .line 224
    new-instance v4, Lcom/quramsoft/xiv/XIVAnimationTimer;

    invoke-direct {v4}, Lcom/quramsoft/xiv/XIVAnimationTimer;-><init>()V

    iput-object v4, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    .line 225
    iget-object v4, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationTimer:Lcom/quramsoft/xiv/XIVAnimationTimer;

    iget v5, p0, Lcom/quramsoft/xiv/SFUtils;->mAnimationDuration:F

    const/high16 v6, 0x44fa

    mul-float/2addr v5, v6

    float-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/quramsoft/xiv/XIVAnimationTimer;->start(J)V

    .line 228
    :cond_64
    sget-boolean v4, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v4, :cond_d2

    .line 230
    const-string v4, "SFUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readyToAnimation: getSpeed = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v4, "SFUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readyToAnimation: posX = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v4, "SFUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readyToAnimation: mScreenX = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/quramsoft/xiv/SFUtils;->mScreenX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v4, "SFUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readyToAnimation: camera.mWidth = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p2, Lcom/cooliris/media/GridCamera;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v4, "SFUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readyToAnimation: mMoveCondition = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/quramsoft/xiv/SFUtils;->mMoveCondition:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_d2
    iput-boolean v3, p0, Lcom/quramsoft/xiv/SFUtils;->mIsMovingSlot:Z

    .line 239
    iget-object v4, p0, Lcom/quramsoft/xiv/SFUtils;->mSlideAnimator:Lcom/quramsoft/xiv/AnimatorSingle;

    invoke-virtual {p2}, Lcom/cooliris/media/GridCamera;->getPosX()F

    move-result v5

    invoke-virtual {p2}, Lcom/cooliris/media/GridCamera;->getTargetPosX()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/quramsoft/xiv/AnimatorSingle;->start(FF)V

    .line 244
    .end local v0           #hud:Lcom/cooliris/media/HudLayer;
    .end local v1           #isWillBeMoved:Z
    .end local v2           #speed:F
    :goto_e1
    return v3

    .line 192
    .restart local v0       #hud:Lcom/cooliris/media/HudLayer;
    .restart local v1       #isWillBeMoved:Z
    .restart local v2       #speed:F
    :cond_e2
    iget v4, p0, Lcom/quramsoft/xiv/SFUtils;->mMinimumVelocity:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_f3

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_f3

    .line 193
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto/16 :goto_43

    .line 194
    :cond_f3
    int-to-float v4, p3

    iget v5, p0, Lcom/quramsoft/xiv/SFUtils;->mScreenX:F

    sub-float/2addr v4, v5

    neg-int v5, p4

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_102

    .line 195
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto/16 :goto_43

    .line 196
    :cond_102
    int-to-float v4, p3

    iget v5, p0, Lcom/quramsoft/xiv/SFUtils;->mScreenX:F

    sub-float/2addr v4, v5

    int-to-float v5, p4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_110

    .line 197
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    goto/16 :goto_43

    .line 199
    :cond_110
    const/4 v1, 0x0

    goto/16 :goto_43

    .line 203
    :cond_113
    iget v4, p0, Lcom/quramsoft/xiv/SFUtils;->mMinimumVelocity:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_125

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_125

    .line 204
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    goto/16 :goto_43

    .line 205
    :cond_125
    iget v4, p0, Lcom/quramsoft/xiv/SFUtils;->mMinimumVelocity:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_136

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_136

    .line 206
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto/16 :goto_43

    .line 207
    :cond_136
    int-to-float v4, p3

    iget v5, p0, Lcom/quramsoft/xiv/SFUtils;->mScreenX:F

    sub-float/2addr v4, v5

    iget v5, p2, Lcom/cooliris/media/GridCamera;->mWidth:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/quramsoft/xiv/SFUtils;->mMoveCondition:F

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_14a

    .line 208
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto/16 :goto_43

    .line 209
    :cond_14a
    int-to-float v4, p3

    iget v5, p0, Lcom/quramsoft/xiv/SFUtils;->mScreenX:F

    sub-float/2addr v4, v5

    iget v5, p2, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/quramsoft/xiv/SFUtils;->mMoveCondition:F

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_15d

    .line 210
    invoke-virtual {p1, v8}, Lcom/cooliris/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    goto/16 :goto_43

    .line 212
    :cond_15d
    const/4 v1, 0x0

    goto/16 :goto_43

    .line 244
    .end local v0           #hud:Lcom/cooliris/media/HudLayer;
    .end local v1           #isWillBeMoved:Z
    .end local v2           #speed:F
    :cond_160
    const/4 v3, 0x0

    goto :goto_e1
.end method
