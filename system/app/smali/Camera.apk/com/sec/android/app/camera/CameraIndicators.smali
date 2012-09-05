.class public Lcom/sec/android/app/camera/CameraIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final INDICATOR_WIDTH:I = 0x20

.field private static final LANDSCAPE_POS_X:I = 0x190

.field private static final LANDSCAPE_POS_Y:I = 0x8

.field private static final PORTRAIT_POS_X:I = 0x52

.field private static final PORTRAIT_POS_Y:I = 0xf0

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

.field private mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

.field private mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

.field private mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

.field private mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

.field private mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

.field private mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

.field private mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

.field private mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

.field public mLastOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .registers 16
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 69
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 390
    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 391
    iput v7, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    .line 392
    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 393
    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 394
    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 395
    iput-object v8, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mContext:Landroid/content/Context;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraIndicators;->setTouchHandled(Z)V

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraIndicators;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraIndicators;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraIndicators;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorGPS;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraIndicators;IILandroid/view/View;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraIndicators;->setOrientationListener()V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraIndicators;->initIndicators()V

    .line 81
    return-void
.end method

.method private rotateButton(IILandroid/view/View;)V
    .registers 13
    .parameter "orientation"
    .parameter "lastOrientation"
    .parameter "view"

    .prologue
    const/16 v8, 0xf0

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 398
    if-ne p1, p2, :cond_b

    .line 454
    :goto_a
    return-void

    .line 400
    :cond_b
    if-nez p1, :cond_9c

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_9c

    .line 401
    const/16 p1, 0x168

    .line 406
    :cond_15
    :goto_15
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 407
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 408
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 409
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 413
    .local v7, rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_e0

    .line 439
    :goto_46
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_a

    .line 402
    .end local v7           #rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9c
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_15

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    if-nez v0, :cond_15

    .line 403
    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    goto/16 :goto_15

    .line 415
    .restart local v7       #rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_aa
    const/16 v0, 0x52

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 416
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_46

    .line 420
    :sswitch_b6
    const/16 v0, 0x2ae

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 421
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_46

    .line 425
    :sswitch_c2
    const/16 v0, 0x190

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 426
    const/16 v0, 0x1b8

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_46

    .line 431
    :sswitch_d1
    const/16 v0, 0x190

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 432
    const/16 v0, 0x8

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_46

    .line 413
    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_d1
        0x5a -> :sswitch_aa
        0xb4 -> :sswitch_c2
        0x10e -> :sswitch_b6
        0x168 -> :sswitch_d1
    .end sparse-switch
.end method

.method private roundOrientation(I)I
    .registers 5
    .parameter "orientationInput"

    .prologue
    .line 489
    move v0, p1

    .line 490
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 491
    const/4 v0, 0x0

    .line 493
    :cond_5
    rem-int/lit16 v0, v0, 0x168

    .line 495
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_d

    .line 496
    const/4 v1, 0x0

    .line 506
    .local v1, retVal:I
    :goto_c
    return v1

    .line 497
    .end local v1           #retVal:I
    :cond_d
    const/16 v2, 0x87

    if-ge v0, v2, :cond_14

    .line 498
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_c

    .line 499
    .end local v1           #retVal:I
    :cond_14
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_1b

    .line 500
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_c

    .line 501
    .end local v1           #retVal:I
    :cond_1b
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_22

    .line 502
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_c

    .line 504
    .end local v1           #retVal:I
    :cond_22
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_c
.end method

.method private setOrientationListener()V
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_d

    .line 458
    new-instance v0, Lcom/sec/android/app/camera/CameraIndicators$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CameraIndicators$1;-><init>(Lcom/sec/android/app/camera/CameraIndicators;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 485
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 486
    return-void
.end method


# virtual methods
.method protected ChangeAntiShake(I)V
    .registers 4
    .parameter "modeid"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->clearAnimation()V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setVisibility(I)V

    .line 295
    packed-switch p1, :pswitch_data_1e

    .line 303
    :goto_e
    return-void

    .line 297
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setVisibility(I)V

    goto :goto_e

    .line 300
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setAntiShake(I)V

    goto :goto_e

    .line 295
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method protected ChangeFocusmode(I)V
    .registers 4
    .parameter "modeid"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->clearAnimation()V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    .line 308
    packed-switch p1, :pswitch_data_26

    .line 320
    :goto_e
    return-void

    .line 311
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    goto :goto_e

    .line 314
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_e

    .line 317
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_e

    .line 308
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_17
        :pswitch_1e
    .end packed-switch
.end method

.method protected ChangeGPS(I)V
    .registers 5
    .parameter "modeid"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clearAnimation()V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    .line 338
    packed-switch p1, :pswitch_data_26

    .line 347
    :goto_e
    return-void

    .line 340
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    goto :goto_e

    .line 343
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    .line 344
    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    goto :goto_e

    .line 338
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method protected ChangeISO(I)V
    .registers 5
    .parameter "modeid"

    .prologue
    const/16 v2, 0x8

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->clearAnimation()V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    .line 225
    packed-switch p1, :pswitch_data_4e

    .line 254
    :goto_10
    :pswitch_10
    return-void

    .line 227
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    goto :goto_10

    .line 230
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 233
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 236
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 239
    :pswitch_2c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 242
    :pswitch_33
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 245
    :pswitch_3a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 248
    :pswitch_41
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 251
    :pswitch_48
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_10

    .line 225
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
        :pswitch_33
        :pswitch_3a
        :pswitch_41
        :pswitch_48
    .end packed-switch
.end method

.method protected ChangeMetering(I)V
    .registers 4
    .parameter "modeid"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->clearAnimation()V

    .line 258
    packed-switch p1, :pswitch_data_1e

    .line 271
    :goto_8
    return-void

    .line 260
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_8

    .line 263
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_8

    .line 266
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_8

    .line 258
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method protected ChangeOutdoorVisibility(I)V
    .registers 4
    .parameter "modeid"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->clearAnimation()V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    .line 325
    packed-switch p1, :pswitch_data_1e

    .line 333
    :goto_e
    return-void

    .line 327
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    goto :goto_e

    .line 330
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setOutdoorVisibility(I)V

    goto :goto_e

    .line 325
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method protected ChangeResolution(I)V
    .registers 6
    .parameter "modeid"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v1, 0x2

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->clearAnimation()V

    .line 142
    packed-switch p1, :pswitch_data_8c

    .line 198
    :goto_c
    :pswitch_c
    return-void

    .line 144
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 147
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 150
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 153
    :pswitch_20
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 156
    :pswitch_27
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 159
    :pswitch_2e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 162
    :pswitch_35
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 165
    :pswitch_3b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 168
    :pswitch_41
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 171
    :pswitch_48
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 174
    :pswitch_4f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 177
    :pswitch_57
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 180
    :pswitch_5f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 183
    :pswitch_65
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 186
    :pswitch_6b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 189
    :pswitch_73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 192
    :pswitch_7b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 195
    :pswitch_83
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_c

    .line 142
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_20
        :pswitch_27
        :pswitch_2e
        :pswitch_35
        :pswitch_41
        :pswitch_48
        :pswitch_4f
        :pswitch_57
        :pswitch_5f
        :pswitch_73
        :pswitch_6b
        :pswitch_c
        :pswitch_65
        :pswitch_c
        :pswitch_7b
        :pswitch_83
        :pswitch_c
        :pswitch_1a
        :pswitch_3b
    .end packed-switch
.end method

.method protected ChangeTimer(I)V
    .registers 4
    .parameter "modeid"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->clearAnimation()V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    .line 276
    packed-switch p1, :pswitch_data_2c

    .line 290
    :goto_e
    return-void

    .line 278
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    goto :goto_e

    .line 281
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_e

    .line 284
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_e

    .line 287
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_e

    .line 276
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
        :pswitch_1e
        :pswitch_25
    .end packed-switch
.end method

.method protected ChangeWhiteBalance(I)V
    .registers 4
    .parameter "modeid"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->clearAnimation()V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    .line 203
    packed-switch p1, :pswitch_data_34

    .line 220
    :goto_e
    return-void

    .line 205
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    goto :goto_e

    .line 208
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_e

    .line 211
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_e

    .line 214
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_e

    .line 217
    :pswitch_2c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_e

    .line 203
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clear()V

    .line 86
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_13

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 93
    :cond_13
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 94
    return-void
.end method

.method public disableOrientationListener()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 128
    :cond_9
    return-void
.end method

.method public initIndicators()V
    .registers 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 98
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeGPS(I)V

    .line 99
    return-void
.end method

.method public onBack()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clear()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 104
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .registers 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_8

    .line 138
    :goto_3
    return-void

    .line 133
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeGPS(I)V

    goto :goto_3

    .line 131
    :pswitch_data_8
    .packed-switch 0x14
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 367
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_c

    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-ne p1, v0, :cond_e

    .line 370
    :cond_c
    const/4 v0, 0x1

    .line 373
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 377
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_c

    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-ne p1, v0, :cond_e

    .line 380
    :cond_c
    const/4 v0, 0x1

    .line 383
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->pause()V

    .line 116
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    if-eqz v0, :cond_1b

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    if-eqz v0, :cond_1b

    .line 110
    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    .line 112
    :cond_1b
    return-void
.end method

.method public resumeOrientationListener()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 122
    :cond_9
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clearAnimation()V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    .line 352
    packed-switch p1, :pswitch_data_2c

    .line 363
    :goto_e
    iget v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->rotateButton(IILandroid/view/View;)V

    .line 364
    return-void

    .line 354
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_e

    .line 357
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_e

    .line 360
    :pswitch_24
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_e

    .line 352
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1d
        :pswitch_24
    .end packed-switch
.end method
