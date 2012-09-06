.class public Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;
.super Landroid/view/View;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;
    }
.end annotation


# instance fields
.field private mActiveTarget:I

.field private mAnimatingTargets:Z

.field private mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private mChevronAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mChevronDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGrabbedState:I

.field private mHandleAnimation:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

.field private mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

.field private mHitRadius:F

.field private mHorizontalOffset:F

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

.field private mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSnapMargin:F

.field private mTapRadius:F

.field private mTargetAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalOffset:F

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 23
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 75
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    .line 87
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 88
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 90
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 96
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 97
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 98
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 121
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_ad

    .line 122
    sget-object v17, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 123
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    .line 124
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    .line 125
    new-instance v17, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$1;-><init>(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 132
    new-instance v17, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$2;-><init>(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 140
    new-instance v17, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$3;-><init>(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 148
    new-instance v17, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$4;-><init>(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 161
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 163
    .local v14, res:Landroid/content/res/Resources;
    sget-object v17, Lcom/google/android/apps/plus/R$styleable;->MultiWaveView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 164
    .local v3, a:Landroid/content/res/TypedArray;
    const/16 v17, 0xe

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    .line 166
    const/16 v17, 0xd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVerticalOffset:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVerticalOffset:F

    .line 167
    const/16 v17, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 168
    const/16 v17, 0xb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 169
    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrationDuration:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrationDuration:I

    .line 171
    const/16 v17, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mFeedbackCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mFeedbackCount:I

    .line 172
    new-instance v17, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTapRadius:F

    .line 176
    const-string v17, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 178
    .local v16, windowManager:Landroid/view/WindowManager;
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    .local v12, metrics:Landroid/util/DisplayMetrics;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mScreenWidth:I

    .line 181
    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mScreenHeight:I

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mScreenWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mScreenHeight:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f666666

    mul-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v18, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_267

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    :goto_1df
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v18, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x4000

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v8, v0

    .line 186
    .local v8, diameter:I
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v8}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 189
    new-instance v17, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 192
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v7, v0, [I

    fill-array-data v7, :array_2f6

    .line 197
    .local v7, chevrons:[I
    move-object v4, v7

    .local v4, arr$:[I
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_23b
    if-ge v10, v11, :cond_271

    aget v5, v4, v10

    .line 198
    .local v5, chevron:I
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 199
    .local v6, chevronDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mFeedbackCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_26e

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v6, :cond_26b

    new-instance v17, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v6}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    :goto_25d
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v9, v9, 0x1

    goto :goto_244

    .line 182
    .end local v4           #arr$:[I
    .end local v5           #chevron:I
    .end local v6           #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #chevrons:[I
    .end local v8           #diameter:I
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_267
    const/16 v17, 0x0

    goto/16 :goto_1df

    .line 200
    .restart local v4       #arr$:[I
    .restart local v5       #chevron:I
    .restart local v6       #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v7       #chevrons:[I
    .restart local v8       #diameter:I
    .restart local v9       #i:I
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    :cond_26b
    const/16 v17, 0x0

    goto :goto_25d

    .line 197
    :cond_26e
    add-int/lit8 v10, v10, 0x1

    goto :goto_23b

    .line 206
    .end local v5           #chevron:I
    .end local v6           #chevronDrawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #i:I
    :cond_271
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 207
    .local v13, outValue:Landroid/util/TypedValue;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v17

    if-eqz v17, :cond_28b

    .line 208
    iget v0, v13, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    .line 210
    :cond_28b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_29f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_2a7

    .line 211
    :cond_29f
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Must specify at least one target drawable"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 215
    :cond_2a7
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v17

    if-eqz v17, :cond_2c2

    .line 216
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    .line 217
    .local v15, resourceId:I
    if-nez v15, :cond_2bd

    .line 218
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Must specify target descriptions"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 220
    :cond_2bd
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 224
    .end local v15           #resourceId:I
    :cond_2c2
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v17

    if-eqz v17, :cond_2dd

    .line 225
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    .line 226
    .restart local v15       #resourceId:I
    if-nez v15, :cond_2d8

    .line 227
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Must specify direction descriptions"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 229
    :cond_2d8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 232
    .end local v15           #resourceId:I
    :cond_2dd
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrationDuration:I

    move/from16 v17, v0

    if-lez v17, :cond_2f2

    const/16 v17, 0x1

    :goto_2ea
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setVibrateEnabled(Z)V

    .line 234
    return-void

    .line 233
    :cond_2f2
    const/16 v17, 0x0

    goto :goto_2ea

    .line 192
    nop

    :array_2f6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;IFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideTargets(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    return p1
.end method

.method private announceTargets()V
    .registers 9

    .prologue
    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 986
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_3f

    .line 987
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 988
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 991
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 992
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .end local v4           #text:Ljava/lang/String;
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3c

    .line 995
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 986
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 998
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_3f
    return-void
.end method

.method private announceText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1002
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->sendAccessibilityEvent(I)V

    .line 1003
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1004
    return-void
.end method

.method private deactivateTargets()V
    .registers 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 396
    .local v1, target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_6

    .line 398
    .end local v1           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_18
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 399
    return-void
.end method

.method private dispatchGrabbedEvent(I)V
    .registers 3
    .parameter "whichHandler"

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->vibrate()V

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    .line 435
    :cond_c
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 3
    .parameter "whichHandle"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->vibrate()V

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_c

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 428
    :cond_c
    return-void
.end method

.method private dist2(FF)F
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 968
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0xb

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    const/4 v4, 0x0

    .line 438
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mActiveTarget:I

    .line 439
    .local v0, activeTarget:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b3

    move v1, v3

    .line 442
    .local v1, targetHit:Z
    :goto_d
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 445
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_b6

    move v2, v5

    :goto_15
    invoke-virtual {v7, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 446
    if-eqz v1, :cond_d4

    .line 447
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    sget-object v7, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v2, v7}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 449
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideUnselected(I)V

    .line 452
    const-string v2, "MultiWaveView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finish with target hit = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mActiveTarget:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->dispatchTriggerEvent(I)V

    .line 454
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_b9

    .line 455
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    const-wide/16 v7, 0x0

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/Object;

    const-string v9, "ease"

    aput-object v9, v5, v4

    sget-object v9, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v9, v5, v3

    const/4 v3, 0x2

    const-string v9, "delay"

    aput-object v9, v5, v3

    const/4 v3, 0x3

    const/16 v9, 0x4b0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    const/4 v3, 0x4

    const-string v9, "alpha"

    aput-object v9, v5, v3

    const/4 v3, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x6

    const-string v6, "x"

    aput-object v6, v5, v3

    const/4 v3, 0x7

    iget v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0x8

    const-string v6, "y"

    aput-object v6, v5, v3

    const/16 v3, 0x9

    iget v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    const/16 v3, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v3, v5, v10

    const/16 v3, 0xc

    const-string v6, "onComplete"

    aput-object v6, v5, v3

    const/16 v3, 0xd

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v6, v5, v3

    invoke-static {v2, v7, v8, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    .line 488
    :goto_af
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 489
    return-void

    .end local v1           #targetHit:Z
    :cond_b3
    move v1, v4

    .line 439
    goto/16 :goto_d

    .restart local v1       #targetHit:Z
    :cond_b6
    move v2, v6

    .line 445
    goto/16 :goto_15

    .line 464
    :cond_b9
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 465
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 466
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 467
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    sget-object v3, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_af

    .line 470
    :cond_d4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_143

    .line 472
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    const-wide/16 v7, 0x12c

    const/16 v2, 0xe

    new-array v9, v2, [Ljava/lang/Object;

    const-string v2, "ease"

    aput-object v2, v9, v4

    sget-object v2, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v2, v9, v3

    const/4 v2, 0x2

    const-string v3, "delay"

    aput-object v3, v9, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x4

    const-string v3, "alpha"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string v3, "x"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0x8

    const-string v3, "y"

    aput-object v3, v9, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/16 v2, 0xa

    const-string v3, "onUpdate"

    aput-object v3, v9, v2

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v2, v9, v10

    const/16 v2, 0xc

    const-string v3, "onComplete"

    aput-object v3, v9, v2

    const/16 v3, 0xd

    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDragging:Z

    if-eqz v2, :cond_140

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    :goto_136
    aput-object v2, v9, v3

    invoke-static {v5, v7, v8, v9}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    goto/16 :goto_af

    :cond_140
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    goto :goto_136

    .line 481
    :cond_143
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 482
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 483
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v6}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 484
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    sget-object v3, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    goto/16 :goto_af
.end method

.method private dump()V
    .registers 4

    .prologue
    .line 237
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HitRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTapRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HorizontalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, "MultiWaveView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerticalOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVerticalOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1022
    :cond_c
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1023
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 1025
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be euqal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v0, 0x0

    .line 1031
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private getScaledTapRadiusSquared()F
    .registers 5

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 975
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 976
    const v2, 0x3fa66666

    iget v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTapRadius:F

    mul-float v1, v2, v3

    .line 980
    .local v1, scaledTapRadius:F
    :goto_19
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->square(F)F

    move-result v2

    return v2

    .line 978
    .end local v1           #scaledTapRadius:F
    :cond_1e
    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTapRadius:F

    .restart local v1       #scaledTapRadius:F
    goto :goto_19
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1008
    :cond_c
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1009
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 1011
    const-string v0, "MultiWaveView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v0, 0x0

    .line 1017
    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDragging:Z

    .line 742
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 743
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->ping()V

    .line 745
    :cond_f
    return-void
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .registers 33
    .parameter "event"

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDragging:Z

    move/from16 v29, v0

    if-nez v29, :cond_c

    .line 754
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z

    .line 828
    :goto_b
    return-void

    .line 758
    :cond_c
    const/4 v5, -0x1

    .line 759
    .local v5, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    .line 760
    .local v11, historySize:I
    const/4 v14, 0x0

    .local v14, k:I
    :goto_12
    add-int/lit8 v29, v11, 0x1

    move/from16 v0, v29

    if-ge v14, v0, :cond_1b5

    .line 761
    if-ge v14, v11, :cond_f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v27

    .line 762
    .local v27, x:F
    :goto_20
    if-ge v14, v11, :cond_ff

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v28

    .line 763
    .local v28, y:F
    :goto_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v29, v0

    sub-float v25, v27, v29

    .line 764
    .local v25, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v29, v0

    sub-float v26, v28, v29

    .line 765
    .local v26, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v29

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v24, v0

    .line 766
    .local v24, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v29, v0

    cmpl-float v29, v24, v29

    if-lez v29, :cond_105

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v29, v0

    div-float v19, v29, v24

    .line 767
    .local v19, scale:F
    :goto_62
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    move/from16 v29, v0

    mul-float v30, v25, v19

    add-float v15, v29, v30

    .line 768
    .local v15, limitX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    move/from16 v29, v0

    mul-float v30, v26, v19

    add-float v16, v29, v30

    .line 770
    .local v16, limitY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_109

    const/16 v20, 0x1

    .line 771
    .local v20, singleTarget:Z
    :goto_8a
    if-eqz v20, :cond_10d

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mSnapMargin:F

    move/from16 v30, v0

    sub-float v21, v29, v30

    .line 774
    .local v21, snapRadius:F
    cmpl-float v29, v24, v21

    if-lez v29, :cond_a3

    .line 775
    const/4 v5, 0x0

    .line 776
    move/from16 v27, v15

    .line 777
    move/from16 v28, v16

    .line 798
    .end local v21           #snapRadius:F
    :cond_a3
    :goto_a3
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v5, v0, :cond_18e

    .line 799
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 800
    if-eqz v20, :cond_166

    move/from16 v17, v15

    .line 801
    .local v17, newX:F
    :goto_ba
    if-eqz v20, :cond_17a

    move/from16 v18, v16

    .line 802
    .local v18, newY:F
    :goto_be
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 804
    .local v7, currentTarget:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    sget-object v29, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v29

    if-eqz v29, :cond_f5

    .line 805
    sget-object v29, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 760
    .end local v7           #currentTarget:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    .end local v17           #newX:F
    .end local v18           #newY:F
    :cond_f5
    :goto_f5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_12

    .line 761
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v19           #scale:F
    .end local v20           #singleTarget:Z
    .end local v24           #touchRadius:F
    .end local v25           #tx:F
    .end local v26           #ty:F
    .end local v27           #x:F
    .end local v28           #y:F
    :cond_f9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    goto/16 :goto_20

    .line 762
    .restart local v27       #x:F
    :cond_ff
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    goto/16 :goto_28

    .line 766
    .restart local v24       #touchRadius:F
    .restart local v25       #tx:F
    .restart local v26       #ty:F
    .restart local v28       #y:F
    :cond_105
    const/high16 v19, 0x3f80

    goto/16 :goto_62

    .line 770
    .restart local v15       #limitX:F
    .restart local v16       #limitY:F
    .restart local v19       #scale:F
    :cond_109
    const/16 v20, 0x0

    goto/16 :goto_8a

    .line 782
    .restart local v20       #singleTarget:Z
    :cond_10d
    const v6, 0x7f7fffff

    .line 783
    .local v6, best:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    move/from16 v30, v0

    mul-float v12, v29, v30

    .line 784
    .local v12, hitRadius2:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v13, v0, :cond_160

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 787
    .local v22, target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getX()F

    move-result v29

    sub-float v9, v15, v29

    .line 788
    .local v9, dx:F
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getY()F

    move-result v29

    sub-float v10, v16, v29

    .line 789
    .local v10, dy:F
    mul-float v29, v9, v9

    mul-float v30, v10, v10

    add-float v8, v29, v30

    .line 790
    .local v8, dist2:F
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->isValid()Z

    move-result v29

    if-eqz v29, :cond_15d

    cmpg-float v29, v8, v12

    if-gez v29, :cond_15d

    cmpg-float v29, v8, v6

    if-gez v29, :cond_15d

    .line 791
    move v5, v13

    .line 792
    move v6, v8

    .line 784
    :cond_15d
    add-int/lit8 v13, v13, 0x1

    goto :goto_11f

    .line 795
    .end local v8           #dist2:F
    .end local v9           #dx:F
    .end local v10           #dy:F
    .end local v22           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_160
    move/from16 v27, v15

    .line 796
    move/from16 v28, v16

    goto/16 :goto_a3

    .line 800
    .end local v6           #best:F
    .end local v12           #hitRadius2:F
    .end local v13           #i:I
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getX()F

    move-result v17

    goto/16 :goto_ba

    .line 801
    .restart local v17       #newX:F
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getY()F

    move-result v18

    goto/16 :goto_be

    .line 809
    .end local v17           #newX:F
    :cond_18e
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 810
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    move-object/from16 v29, v0

    const/high16 v30, 0x3f80

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto/16 :goto_f5

    .line 816
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v19           #scale:F
    .end local v20           #singleTarget:Z
    .end local v24           #touchRadius:F
    .end local v25           #tx:F
    .end local v26           #ty:F
    .end local v27           #x:F
    .end local v28           #y:F
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;)V

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mActiveTarget:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v5, :cond_1f6

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v5, v0, :cond_1f6

    .line 819
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->dispatchGrabbedEvent(I)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, "accessibility"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 822
    .local v4, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v29

    if-eqz v29, :cond_1f6

    .line 823
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v23

    .line 824
    .local v23, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->announceText(Ljava/lang/String;)V

    .line 827
    .end local v4           #accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .end local v23           #targetContentDescription:Ljava/lang/String;
    :cond_1f6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mActiveTarget:I

    goto/16 :goto_b
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDragging:Z

    if-eqz v0, :cond_b

    const-string v0, "MultiWaveView"

    const-string v1, "** Handle RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 750
    return-void
.end method

.method private hideChevrons()V
    .registers 4

    .prologue
    .line 936
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 937
    .local v0, chevron:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    if-eqz v0, :cond_6

    .line 938
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_6

    .line 941
    .end local v0           #chevron:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_19
    return-void
.end method

.method private hideTargets(Z)V
    .registers 16
    .parameter "animate"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 501
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 502
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 506
    :cond_14
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 507
    if-eqz p1, :cond_a4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_a4

    .line 508
    if-eqz p1, :cond_67

    const/16 v0, 0x4b0

    .line 509
    .local v0, duration:I
    :goto_22
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 510
    .local v2, target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    sget-object v4, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 511
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    int-to-long v5, v0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "alpha"

    aput-object v8, v7, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    const-string v8, "delay"

    aput-object v8, v7, v12

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x4

    const-string v9, "onUpdate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v7, v8

    invoke-static {v2, v5, v6, v7}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .end local v0           #duration:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_67
    move v0, v3

    .line 508
    goto :goto_22

    .line 516
    .restart local v0       #duration:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_69
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    int-to-long v6, v0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "alpha"

    aput-object v9, v8, v3

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v11

    const-string v3, "delay"

    aput-object v3, v8, v12

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v13

    const/4 v3, 0x4

    const-string v9, "onUpdate"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v9, v8, v3

    const/4 v3, 0x6

    const-string v9, "onComplete"

    aput-object v9, v8, v3

    const/4 v3, 0x7

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v9, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v0           #duration:I
    :goto_a3
    return-void

    .line 522
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_a4
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 523
    .restart local v2       #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 524
    invoke-virtual {v2, v10}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_aa

    .line 526
    .end local v2           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_bf
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_a3
.end method

.method private hideUnselected(I)V
    .registers 5
    .parameter "active"

    .prologue
    const/4 v2, 0x0

    .line 492
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 493
    if-eq v0, p1, :cond_17

    .line 494
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 492
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 497
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 498
    return-void
.end method

.method private internalSetTargetResources(I)V
    .registers 12
    .parameter "resourceId"

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 574
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 575
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 576
    .local v1, count:I
    const/4 v5, 0x0

    .line 577
    .local v5, maxWidth:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .local v7, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_17
    if-ge v4, v1, :cond_34

    .line 579
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 580
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-direct {v8, v6, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-le v8, v5, :cond_31

    .line 582
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 578
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 585
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f666666

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    iput v8, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 586
    iget v8, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    float-to-int v8, v8

    mul-int/lit8 v2, v8, 0x2

    .line 587
    .local v2, diameter:I
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v8, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 588
    new-instance v8, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8, v6, v9}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 590
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 591
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetResourceId:I

    .line 592
    iput-object v7, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 593
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 594
    return-void
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .registers 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1036
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1037
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1038
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1039
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1042
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1043
    return-object v4
.end method

.method private moveHandleTo(FFZ)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 736
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 737
    return-void
.end method

.method private performInitialLayout(FF)V
    .registers 8
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 885
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_17

    .line 886
    const/high16 v0, 0x3f00

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 888
    :cond_17
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2f

    .line 890
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHitRadius:F

    .line 892
    :cond_2f
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4a

    .line 893
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mSnapMargin:F

    .line 896
    :cond_4a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 897
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 898
    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 899
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 267
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 276
    move v0, v1

    .line 278
    :goto_d
    return v0

    .line 269
    :sswitch_e
    move v0, p2

    .line 270
    goto :goto_d

    .line 272
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 273
    goto :goto_d

    .line 267
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 858
    iget v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_16

    .line 859
    if-eqz p1, :cond_9

    .line 860
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->vibrate()V

    .line 862
    :cond_9
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mGrabbedState:I

    .line 863
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

    if-eqz v0, :cond_16

    .line 864
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 867
    :cond_16
    return-void
.end method

.method private showTargets(Z)V
    .registers 15
    .parameter "animate"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 531
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 532
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 534
    :cond_15
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    .line 535
    if-eqz p1, :cond_9d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_9d

    .line 536
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 537
    .local v1, target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 538
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "alpha"

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "delay"

    aput-object v6, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x4

    const-string v7, "onUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 543
    .end local v1           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_63
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "alpha"

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "delay"

    aput-object v7, v6, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x4

    const-string v8, "onUpdate"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "onComplete"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :goto_9c
    return-void

    .line 549
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_9d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 550
    .restart local v1       #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    sget-object v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 551
    invoke-virtual {v1, v8}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_a3

    .line 553
    .end local v1           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_b8
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, v8}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_9c
.end method

.method private square(F)F
    .registers 3
    .parameter "d"

    .prologue
    .line 964
    mul-float v0, p1, p1

    return v0
.end method

.method private startChevronAnimation()V
    .registers 21

    .prologue
    .line 335
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-ge v11, v12, :cond_7

    .line 372
    :cond_6
    return-void

    .line 338
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd

    mul-float v8, v11, v12

    .line 339
    .local v8, r:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    const v12, 0x3f666666

    mul-float v1, v11, v12

    .line 340
    .local v1, chevronAnimationDistance:F
    const/4 v11, 0x4

    new-array v6, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v8

    aput v14, v12, v13

    aput-object v12, v6, v11

    .line 345
    .local v6, from:[[F
    const/4 v11, 0x4

    new-array v10, v11, [[F

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    aput v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    add-float/2addr v14, v1

    aput v14, v12, v13

    aput-object v12, v10, v11

    .line 351
    .local v10, to:[[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 352
    const/high16 v9, 0x3f00

    .line 353
    .local v9, startScale:F
    const/high16 v5, 0x4000

    .line 354
    .local v5, endScale:F
    const/4 v4, 0x0

    .local v4, direction:I
    :goto_d8
    const/4 v11, 0x4

    if-ge v4, v11, :cond_6

    .line 355
    const/4 v2, 0x0

    .local v2, count:I
    :goto_dc
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mFeedbackCount:I

    if-ge v2, v11, :cond_1bd

    .line 356
    mul-int/lit16 v3, v2, 0xa0

    .line 357
    .local v3, delay:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mFeedbackCount:I

    mul-int/2addr v12, v4

    add-int/2addr v12, v2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 358
    .local v7, icon:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    if-nez v7, :cond_f9

    .line 355
    :goto_f6
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 361
    :cond_f9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    const-wide/16 v12, 0x352

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronAnimationInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "x"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x0

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "y"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v18, v6, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    aget-object v18, v10, v4

    const/16 v19, 0x1

    aget v18, v18, v19

    aput v18, v16, v17

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1c2

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1ca

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1d2

    aput-object v16, v14, v15

    const/16 v15, 0xe

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v7, v12, v13, v14}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f6

    .line 354
    .end local v3           #delay:I
    .end local v7           #icon:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_1bd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d8

    .line 361
    nop

    :array_1c2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ca
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_1d2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private stopChevronAnimation()V
    .registers 5

    .prologue
    .line 375
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_7

    .line 382
    :goto_6
    return-void

    .line 378
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    .line 379
    .local v0, anim:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_d

    .line 381
    .end local v0           #anim:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_6
.end method

.method private stopHandleAnimation()V
    .registers 3

    .prologue
    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_7

    .line 392
    :cond_6
    :goto_6
    return-void

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    if-eqz v0, :cond_6

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleAnimation:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    goto :goto_6
.end method

.method private stopTargetAnimation()V
    .registers 5

    .prologue
    .line 558
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_23

    .line 559
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;

    .line 560
    .local v0, anim:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;
    iget-object v2, v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_c

    .line 562
    .end local v0           #anim:Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;
    :cond_1e
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 564
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method private switchToState(IFF)V
    .registers 7
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_3e

    .line 327
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 300
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 301
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    sget-object v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    goto :goto_3

    .line 305
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 306
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->deactivateTargets()V

    .line 307
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->showTargets(Z)V

    .line 308
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    sget-object v2, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 309
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setGrabbedState(I)V

    .line 310
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 312
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->announceTargets()V

    goto :goto_3

    .line 324
    .end local v0           #accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    :pswitch_3a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->doFinish()V

    goto :goto_3

    .line 298
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_3a
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 871
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 872
    .local v3, y:F
    iget v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    sub-float v0, v2, v6

    .line 873
    .local v0, dx:F
    iget v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    sub-float v1, v3, v6

    .line 874
    .local v1, dy:F
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->dist2(FF)F

    move-result v6

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getScaledTapRadiusSquared()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2e

    .line 875
    const-string v6, "MultiWaveView"

    const-string v7, "** Handle HIT"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->switchToState(IFF)V

    .line 877
    invoke-direct {p0, v2, v3, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->moveHandleTo(FFZ)V

    .line 878
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDragging:Z

    .line 881
    :goto_2d
    return v4

    :cond_2e
    move v4, v5

    goto :goto_2d
.end method

.method private updateTargetPositions()V
    .registers 11

    .prologue
    .line 925
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_42

    .line 926
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 927
    .local v3, targetIcon:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v2

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 928
    .local v0, angle:D
    iget v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    iget v7, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 929
    .local v4, xPosition:F
    iget v6, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    iget v7, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 930
    .local v5, yPosition:F
    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 931
    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 933
    .end local v0           #angle:D
    .end local v3           #targetIcon:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    .end local v4           #xPosition:F
    .end local v5           #yPosition:F
    :cond_42
    return-void
.end method

.method private vibrate()V
    .registers 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 570
    :cond_c
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method invalidateGlobalRegion(Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;)V
    .registers 11
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 402
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 403
    .local v3, width:I
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    .line 404
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 405
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 406
    move-object v2, p0

    .line 407
    .local v2, view:Landroid/view/View;
    :goto_24
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_69

    .line 408
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 409
    .restart local v2       #view:Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_45

    .line 410
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 412
    :cond_45
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_24

    .line 417
    :cond_69
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 945
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 946
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 947
    .local v1, target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_b

    .line 948
    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 951
    .end local v1           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mChevronDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 952
    .restart local v1       #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    if-eqz v1, :cond_23

    .line 953
    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_23

    .line 956
    .end local v1           #target:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;
    :cond_35
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 957
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 834
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 835
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 836
    .local v1, action:I
    packed-switch v1, :pswitch_data_34

    .line 847
    :goto_19
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 848
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 850
    .end local v1           #action:I
    :cond_1f
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 838
    .restart local v1       #action:I
    :pswitch_24
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_19

    .line 841
    :pswitch_29
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_19

    .line 844
    :pswitch_2e
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_19

    .line 836
    nop

    :pswitch_data_34
    .packed-switch 0x7
        :pswitch_29
        :pswitch_19
        :pswitch_24
        :pswitch_2e
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 903
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 904
    sub-int v3, p4, p2

    .line 905
    .local v3, width:I
    sub-int v0, p5, p3

    .line 906
    .local v0, height:I
    iget v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHorizontalOffset:F

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 907
    .local v1, newWaveCenterX:F
    iget v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVerticalOffset:F

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 908
    .local v2, newWaveCenterY:F
    iget v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_36

    iget v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_5a

    .line 909
    :cond_36
    iget v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_45

    iget v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_45

    .line 910
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->performInitialLayout(FF)V

    .line 912
    :cond_45
    iput v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    .line 913
    iput v2, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    .line 915
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 916
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 918
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->updateTargetPositions()V

    .line 920
    :cond_5a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->dump()V

    .line 921
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 283
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 284
    .local v2, minimumWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 285
    .local v1, minimumHeight:I
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v4

    .line 286
    .local v4, viewWidth:I
    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->resolveMeasured(II)I

    move-result v3

    .line 287
    .local v3, viewHeight:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getPaddingLeft()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getPaddingTop()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f666666

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    iput v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    .line 289
    iget v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRadius:F

    mul-float/2addr v5, v8

    float-to-int v0, v5

    .line 290
    .local v0, diameter:I
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 291
    new-instance v5, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRingDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    .line 292
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 293
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOuterRing:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 294
    invoke-virtual {p0, v4, v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setMeasuredDimension(II)V

    .line 295
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 707
    .local v0, action:I
    const/4 v1, 0x0

    .line 708
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_2c

    .line 730
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->invalidate()V

    .line 731
    if-eqz v1, :cond_26

    const/4 v2, 0x1

    :goto_e
    return v2

    .line 710
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->handleDown(Landroid/view/MotionEvent;)V

    .line 711
    const/4 v1, 0x1

    .line 712
    goto :goto_8

    .line 715
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 716
    const/4 v1, 0x1

    .line 717
    goto :goto_8

    .line 720
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 721
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->handleUp(Landroid/view/MotionEvent;)V

    .line 722
    const/4 v1, 0x1

    .line 723
    goto :goto_8

    .line 726
    :pswitch_21
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->handleMove(Landroid/view/MotionEvent;)V

    .line 727
    const/4 v1, 0x1

    goto :goto_8

    .line 731
    :cond_26
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_e

    .line 708
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_19
        :pswitch_14
        :pswitch_21
    .end packed-switch
.end method

.method public ping()V
    .registers 1

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 679
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->startChevronAnimation()V

    .line 680
    return-void
.end method

.method public reset(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopChevronAnimation()V

    .line 690
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopHandleAnimation()V

    .line 691
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->stopTargetAnimation()V

    .line 692
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideChevrons()V

    .line 693
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->hideTargets(Z)V

    .line 694
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setX(F)V

    .line 695
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setY(F)V

    .line 696
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 697
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_34

    .line 699
    invoke-static {}, Lcom/google/android/apps/plus/hangout/multiwaveview/Tweener;->reset()V

    .line 701
    :cond_34
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 641
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptionsResourceId:I

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 645
    :cond_b
    return-void
.end method

.method public setOnTriggerListener(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 960
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mOnTriggerListener:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 961
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 620
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptionsResourceId:I

    .line 621
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 624
    :cond_b
    return-void
.end method

.method public setTargetResources(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mAnimatingTargets:Z

    if-eqz v0, :cond_7

    .line 604
    iput p1, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mNewTargetResources:I

    .line 608
    :goto_6
    return-void

    .line 606
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V

    goto :goto_6
.end method

.method public setVibrateEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 662
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_15

    .line 664
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_19

    .line 670
    :goto_14
    return-void

    .line 668
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_14

    .line 665
    :catch_19
    move-exception v0

    goto :goto_14
.end method
