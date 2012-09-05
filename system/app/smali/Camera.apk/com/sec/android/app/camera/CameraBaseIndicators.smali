.class public Lcom/sec/android/app/camera/CameraBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final INDICATOR_HEIGHT:I = 0x20

.field private static final INDICATOR_WIDTH:I = 0xa0

.field private static final INT_30:I = 0x1e

.field private static final LANDSCAPE_POS_X:I = 0x21c

.field private static final LANDSCAPE_POS_Y:I = 0x9

.field public static final NORMAL_MODE:I = 0x0

.field private static final PORTRAIT_POS_X:I = 0x14

.field private static final PORTRAIT_POS_Y:I = 0x5a

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320

.field public static final SHOOT_SHARE_MODE:I = 0x1


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mIndicatorGroup:Landroid/widget/LinearLayout;

.field private mIndicatorParentGroup:Landroid/widget/RelativeLayout;

.field private mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

.field private mIndicatorRemainCount:Landroid/widget/TextView;

.field private mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

.field public mIndicatorWifiApSSID:Landroid/widget/ImageView;

.field private mIndicatorWifiGroup:Landroid/widget/LinearLayout;

.field private mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

.field public mLastOrientation:I

.field private mNormalGroup:Landroid/widget/LinearLayout;

.field private mOrientationEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRemainCount:I

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mShootMode:I

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTextMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .registers 15
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    .line 89
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShootMode:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationEnabled:Z

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mContext:Landroid/content/Context;

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTouchHandled(Z)V

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraBaseIndicators;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraBaseIndicators;IILandroid/view/View;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mNormalGroup:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorRemainCount:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiGroup:Landroid/widget/LinearLayout;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mNormalGroup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setOrientationListener()V

    .line 119
    return-void
.end method

.method private rotateButton(IILandroid/view/View;)V
    .registers 12
    .parameter "orientation"
    .parameter "lastOrientation"
    .parameter "view"

    .prologue
    const/16 v5, 0x10e

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 283
    if-ne p1, p2, :cond_b

    .line 370
    :goto_a
    return-void

    .line 285
    :cond_b
    if-nez p1, :cond_a9

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    if-ne v0, v5, :cond_a9

    .line 286
    const/16 p1, 0x168

    .line 291
    :cond_13
    :goto_13
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 292
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 293
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 294
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    rsub-int v2, p1, 0x168

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 298
    .local v7, rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 300
    sparse-switch p1, :sswitch_data_132

    .line 353
    :goto_4e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto/16 :goto_a

    .line 287
    .end local v7           #rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a9
    if-ne p1, v5, :cond_13

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    if-nez v0, :cond_13

    .line 288
    const/16 v0, 0x168

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    goto/16 :goto_13

    .line 302
    .restart local v7       #rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_b5
    const/16 v0, 0x3c

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 303
    const/16 v0, 0x32

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4e

    .line 307
    :sswitch_c3
    const/16 v0, 0x41a

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 308
    const/16 v0, 0x2bc

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    .line 312
    :sswitch_d2
    const/16 v0, 0x78

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 313
    const/16 v0, 0x2ee

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    .line 318
    :sswitch_e1
    const/16 v0, 0x3e8

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 319
    const/16 v0, 0xc

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    .line 326
    :cond_f0
    sparse-switch p1, :sswitch_data_148

    goto/16 :goto_4e

    .line 344
    :sswitch_f5
    const/16 v0, 0x21c

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 345
    const/16 v0, 0x9

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    .line 328
    :sswitch_104
    const/16 v0, 0x14

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 329
    const/16 v0, 0x5a

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    .line 333
    :sswitch_113
    const/16 v0, 0x26c

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 334
    const/16 v0, 0x168

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    .line 338
    :sswitch_122
    const/16 v0, 0x64

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 339
    const/16 v0, 0x1b7

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4e

    .line 300
    nop

    :sswitch_data_132
    .sparse-switch
        0x0 -> :sswitch_e1
        0x5a -> :sswitch_b5
        0xb4 -> :sswitch_d2
        0x10e -> :sswitch_c3
        0x168 -> :sswitch_e1
    .end sparse-switch

    .line 326
    :sswitch_data_148
    .sparse-switch
        0x0 -> :sswitch_f5
        0x5a -> :sswitch_104
        0xb4 -> :sswitch_122
        0x10e -> :sswitch_113
        0x168 -> :sswitch_f5
    .end sparse-switch
.end method

.method private roundOrientation(I)I
    .registers 5
    .parameter "orientationInput"

    .prologue
    .line 404
    move v0, p1

    .line 405
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 406
    const/4 v0, 0x0

    .line 408
    :cond_5
    rem-int/lit16 v0, v0, 0x168

    .line 410
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_d

    .line 411
    const/4 v1, 0x0

    .line 421
    .local v1, retVal:I
    :goto_c
    return v1

    .line 412
    .end local v1           #retVal:I
    :cond_d
    const/16 v2, 0x87

    if-ge v0, v2, :cond_14

    .line 413
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_c

    .line 414
    .end local v1           #retVal:I
    :cond_14
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_1b

    .line 415
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_c

    .line 416
    .end local v1           #retVal:I
    :cond_1b
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_22

    .line 417
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_c

    .line 419
    .end local v1           #retVal:I
    :cond_22
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_c
.end method

.method private setOrientationListener()V
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_d

    .line 374
    new-instance v0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CameraBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/CameraBaseIndicators;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 400
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 401
    return-void
.end method


# virtual methods
.method public changeIndicatorMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 432
    iput p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShootMode:I

    .line 433
    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShootMode:I

    if-nez v0, :cond_1f

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_17

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiParentGroup:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 439
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mNormalGroup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroupNormal:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    .line 456
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2b

    .line 457
    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    .line 458
    :cond_2b
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 125
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    .line 126
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_12

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 130
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 132
    :cond_12
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 135
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 137
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 138
    return-void
.end method

.method public enableOrientation(Z)V
    .registers 5
    .parameter "orientation"

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationEnabled:Z

    .line 426
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationEnabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    .line 427
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    .line 429
    :cond_12
    return-void
.end method

.method public getRemainCount()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    return v0
.end method

.method public hideTextMessage()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    return-void
.end method

.method public onBack()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 146
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .registers 4
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 149
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 158
    :cond_3
    packed-switch p1, :pswitch_data_e

    .line 165
    :goto_6
    return-void

    .line 160
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    goto :goto_6

    .line 158
    nop

    :pswitch_data_e
    .packed-switch 0x16
        :pswitch_7
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 230
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_c

    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-ne p1, v0, :cond_e

    .line 233
    :cond_c
    const/4 v0, 0x1

    .line 236
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
    .line 240
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_c

    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-ne p1, v0, :cond_e

    .line 243
    :cond_c
    const/4 v0, 0x1

    .line 246
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_9

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 263
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAutoRotation()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    if-eqz v0, :cond_1b

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1b

    .line 253
    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLastOrientation:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorGroup:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->rotateButton(IILandroid/view/View;)V

    .line 255
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->updateStorageIndicator()V

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setWifiDirectStatus()V

    .line 257
    return-void
.end method

.method public resumeOrientationListener()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_9

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 269
    :cond_9
    return-void
.end method

.method public setBatteryCharging()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 188
    return-void
.end method

.method public setBatteryLevel(I)V
    .registers 7
    .parameter "level"

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0xe

    const/4 v0, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 191
    if-gt p1, v0, :cond_1a

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 209
    :goto_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 210
    return-void

    .line 194
    :cond_1a
    if-le p1, v0, :cond_2a

    if-gt p1, v3, :cond_2a

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_14

    .line 197
    :cond_2a
    if-le p1, v3, :cond_3a

    if-gt p1, v4, :cond_3a

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_14

    .line 200
    :cond_3a
    if-le p1, v4, :cond_46

    const/16 v0, 0x27

    if-gt p1, v0, :cond_46

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_14

    .line 202
    :cond_46
    const/16 v0, 0x27

    if-le p1, v0, :cond_54

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_54

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_14

    .line 204
    :cond_54
    const/16 v0, 0x3b

    if-le p1, v0, :cond_62

    const/16 v0, 0x4f

    if-gt p1, v0, :cond_62

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_14

    .line 207
    :cond_62
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setVisibility(I)V

    goto :goto_14
.end method

.method public setRemainCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 172
    iput p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorRemainCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorRemainCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 182
    return-void
.end method

.method public setTextMessage(I)V
    .registers 4
    .parameter "resourceId"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    return-void
.end method

.method public setWifiDirectStatus()V
    .registers 4

    .prologue
    .line 461
    const-string v1, "#"

    const-string v2, " setWifiDirectStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    if-nez v1, :cond_c

    .line 470
    :goto_b
    return-void

    .line 464
    :cond_c
    const/4 v0, 0x0

    .line 465
    .local v0, wifidirect:Z
    if-eqz v0, :cond_1d

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    const v2, 0x7f020181

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 469
    :goto_17
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorParentGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_b

    .line 468
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorWifiApSSID:Landroid/widget/ImageView;

    const v2, 0x7f020180

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_17
.end method

.method public showTextMessage()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    return-void
.end method

.method protected update()V
    .registers 1

    .prologue
    .line 142
    return-void
.end method

.method public updateStorageIndicator()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 214
    return-void
.end method
