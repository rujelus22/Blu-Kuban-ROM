.class public Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
.super Ljava/lang/Object;
.source "TwEdgeEffect.java"


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field public static MAX_EDGE_SCALE_Y:F = 0.0f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field public static MAX_GLOW_SCALE_Y:F = 0.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private isTouchWiz:Z

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 221
    const/high16 v0, 0x3f80

    sput v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_EDGE_SCALE_Y:F

    .line 224
    const/high16 v0, 0x40c0

    sput v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_GLOW_SCALE_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MIN_WIDTH:I

    .line 119
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 226
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x108043a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 130
    const v1, 0x108043b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4396

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    .line 133
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    return-void
.end method

.method private update()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 379
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 380
    .local v3, time:J
    iget-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 382
    .local v2, t:F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 384
    .local v1, interp:F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    .line 385
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 386
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 387
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 389
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_54

    .line 390
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_c0

    .line 439
    :cond_54
    :goto_54
    return-void

    .line 392
    :pswitch_55
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 393
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 394
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 396
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 397
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 398
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 399
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 402
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 403
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 404
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 405
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    .line 408
    :pswitch_78
    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 409
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 410
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 412
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 413
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 414
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 415
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 418
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 419
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 420
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 421
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    .line 426
    :pswitch_9c
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_b8

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 429
    .local v0, factor:F
    :goto_a9
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 432
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_54

    .line 426
    .end local v0           #factor:F
    :cond_b8
    const v0, 0x7f7fffff

    goto :goto_a9

    .line 435
    :pswitch_bc
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    goto :goto_54

    .line 390
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_55
        :pswitch_bc
        :pswitch_9c
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 14
    .parameter "canvas"

    .prologue
    .line 338
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-nez v8, :cond_7

    .line 339
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->update()V

    .line 341
    :cond_7
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 342
    .local v1, edgeHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 343
    .local v3, edgeWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 344
    .local v5, glowHeight:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 346
    .local v7, glowWidth:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 348
    int-to-float v8, v5

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x4080

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    .line 351
    .local v4, glowBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_a1

    .line 353
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 354
    .local v6, glowLeft:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    .end local v6           #glowLeft:I
    :goto_60
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 364
    int-to-float v8, v1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 365
    .local v0, edgeBottom:I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_ab

    .line 367
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 368
    .local v2, edgeLeft:I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 373
    .end local v2           #edgeLeft:I
    :goto_96
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eqz v8, :cond_b5

    const/4 v8, 0x1

    :goto_a0
    return v8

    .line 357
    .end local v0           #edgeBottom:I
    :cond_a1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_60

    .line 371
    .restart local v0       #edgeBottom:I
    :cond_ab
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdge:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_96

    .line 375
    :cond_b5
    const/4 v8, 0x0

    goto :goto_a0
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 167
    return-void
.end method

.method public isFinished()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    if-eqz v2, :cond_10

    .line 156
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_e

    .line 158
    :cond_d
    :goto_d
    return v0

    :cond_e
    move v0, v1

    .line 156
    goto :goto_d

    .line 158
    :cond_10
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method public onAbsorb(I)V
    .registers 7
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 295
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 297
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 298
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 302
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 303
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 306
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 307
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 311
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 313
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 320
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    .line 322
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 324
    return-void
.end method

.method public onPull(F)V
    .registers 13
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40e0

    const/high16 v6, 0x3f80

    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    .line 180
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, now:J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1e

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1e

    .line 219
    :goto_1d
    return-void

    .line 184
    :cond_1e
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    if-eq v4, v10, :cond_24

    .line 185
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 187
    :cond_24
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 189
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 190
    const/high16 v4, 0x4327

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    .line 192
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 193
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 195
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    .line 196
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 199
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 203
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 204
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_78

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_78

    .line 205
    neg-float v1, v1

    .line 207
    :cond_78
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_80

    .line 208
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 212
    :cond_80
    const/high16 v4, 0x4080

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 215
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 216
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 217
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 218
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_1d
.end method

.method public onPull2(F)V
    .registers 4
    .parameter "factor"

    .prologue
    const/high16 v1, 0x3f80

    .line 238
    cmpl-float v0, p1, v1

    if-lez v0, :cond_8

    .line 239
    const/high16 p1, 0x3f80

    .line 241
    :cond_8
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 243
    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 245
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    .line 246
    sget v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_EDGE_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    .line 247
    sget v0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->MAX_GLOW_SCALE_Y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 248
    return-void
.end method

.method public onRelease()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 262
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 264
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 281
    :goto_d
    return-void

    .line 268
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mState:I

    .line 269
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaStart:F

    .line 270
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYStart:F

    .line 271
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaStart:F

    .line 272
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYStart:F

    .line 274
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeAlphaFinish:F

    .line 275
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleYFinish:F

    .line 276
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlphaFinish:F

    .line 277
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleYFinish:F

    .line 279
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mStartTime:J

    .line 280
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mDuration:F

    goto :goto_d
.end method

.method public onRelease2()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mPullDistance:F

    .line 252
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mGlowScaleY:F

    .line 253
    return-void
.end method

.method public setSize(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 143
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mWidth:I

    .line 144
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->mHeight:I

    .line 145
    return-void
.end method

.method public setTouchWiz(Z)V
    .registers 2
    .parameter "touchwiz"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isTouchWiz:Z

    .line 230
    return-void
.end method