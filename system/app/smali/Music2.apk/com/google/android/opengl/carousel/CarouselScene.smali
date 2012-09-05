.class Lcom/google/android/opengl/carousel/CarouselScene;
.super Ljava/lang/Object;
.source "CarouselScene.java"


# static fields
.field private static final SELECTED_SCALE_FACTOR:Lcom/google/android/opengl/common/Float3;

.field private static sProjection:[F

.field private static sRotationTemp:[F


# instance fields
.field mAnimatedSelection:I

.field private mAnimating:Z

.field private mAutoscrollDuration:D

.field private mAutoscrollInterpolationMode:I

.field private mAutoscrollStartAngle:F

.field private mAutoscrollStartTime:D

.field private mAutoscrollStopAngle:F

.field public mBackground:Lcom/google/android/opengl/carousel/Background;

.field private mBias:F

.field public mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

.field mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/carousel/Card;",
            ">;"
        }
    .end annotation
.end field

.field mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

.field mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

.field public mCarouselRotationAngle:F

.field mDetailFadeRate:F

.field mEnableSelection:Z

.field mEndAngle:F

.field private mFocusedItem:I

.field private mHitAngle:F

.field private mHoverCard:I

.field private mHoverDetail:I

.field mInScaleAnimation:Z

.field private mIsAutoScrolling:Z

.field private mIsDragging:Z

.field private mLastAngle:F

.field private mLastPosition:Landroid/graphics/PointF;

.field private mLastStopTime:J

.field private mLastTime:J

.field private mMass:F

.field private mOverscroll:Z

.field private mOverscrollBias:F

.field private mReleaseTime:J

.field public mRenderMode:I

.field public mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field public mRotationAngle:F

.field mSelectedDetail:I

.field private mSelectionRadius:F

.field private mSelectionVelocityThreshold:F

.field public mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field private mStopTimeThreshold:J

.field mTexCoord:Ljava/nio/FloatBuffer;

.field private mTexCoordData:[F

.field private mTiltAngle:F

.field private mTouchBias:F

.field private mTouchPosition:Landroid/graphics/PointF;

.field private mTouchTime:J

.field private mVelocity:F

.field private mVelocityHistory:[F

.field private mVelocityHistoryCount:I

.field private mVelocityThreshold:F

.field private mVertices:Ljava/nio/FloatBuffer;

.field mVerticesData:[F

.field mWedgeAngle:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const v1, 0x3e4ccccd

    .line 46
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/opengl/common/Float3;-><init>(FFF)V

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->SELECTED_SCALE_FACTOR:Lcom/google/android/opengl/common/Float3;

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sProjection:[F

    .line 144
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sRotationTemp:[F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;Lcom/google/android/opengl/carousel/CarouselSetting;)V
    .registers 12
    .parameter "renderer"
    .parameter "setting"

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    .line 68
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderMode:I

    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_ee

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_10a

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoordData:[F

    .line 87
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    .line 88
    iput-wide v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 89
    iput-wide v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    .line 91
    const-wide/16 v0, 0x4b

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mStopTimeThreshold:J

    .line 92
    iput-wide v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    .line 93
    iput-wide v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mReleaseTime:J

    .line 95
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    .line 96
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchBias:F

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    .line 100
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionRadius:F

    .line 102
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 103
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    .line 104
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectedDetail:I

    .line 107
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mFocusedItem:I

    .line 109
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 110
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 112
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistory:[F

    .line 114
    const v0, 0x3ae4c389

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityThreshold:F

    .line 116
    const v0, 0x3db2b8c3

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionVelocityThreshold:F

    .line 121
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    .line 125
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mDetailFadeRate:F

    .line 127
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    .line 129
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselRotationAngle:F

    .line 130
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 131
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsAutoScrolling:Z

    .line 137
    new-instance v0, Lcom/google/android/opengl/carousel/Plane;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Plane;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    .line 139
    new-instance v0, Lcom/google/android/opengl/carousel/Cylinder;

    const/high16 v1, 0x41a0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Cylinder;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    .line 140
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 146
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    .line 150
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    .line 151
    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    .line 1468
    iput-wide v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1469
    iput-wide v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    .line 1470
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    .line 1472
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    .line 1473
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    .line 154
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 155
    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 157
    new-instance v0, Lcom/google/android/opengl/carousel/Background;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/Background;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    .line 159
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultCardMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 161
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    .line 163
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoordData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    .line 167
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoordData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    return-void

    .line 80
    :array_ee
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_10a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private carouselRotationAngleToRadians(F)F
    .registers 4
    .parameter "carouselRotationAngle"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private computeAverageVelocityFromHistory()F
    .registers 6

    .prologue
    .line 916
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    if-lez v3, :cond_1c

    .line 917
    const/16 v3, 0xa

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 918
    .local v0, count:I
    const/4 v2, 0x0

    .line 919
    .local v2, vsum:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_18

    .line 920
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistory:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 922
    :cond_18
    int-to-float v3, v0

    div-float v3, v2, v3

    .line 924
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #vsum:F
    :goto_1b
    return v3

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private cullCards()I
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 364
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mPrefetchCardCount:I

    div-int/lit8 v5, v10, 0x2

    .line 365
    .local v5, prefetchCardCountPerSide:I
    const/4 v4, 0x0

    .line 366
    .local v4, portraitCullOffset:F
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v10, :cond_13

    .line 367
    const v10, 0x3e99999a

    add-float/2addr v4, v10

    .line 371
    :cond_13
    const v10, -0x4019999a

    sub-float/2addr v10, v4

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v8

    .line 372
    .local v8, thetaFirst:F
    neg-int v10, v5

    int-to-float v10, v10

    sub-float/2addr v10, v4

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v6

    .line 373
    .local v6, textureFirst:F
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v9

    .line 374
    .local v9, thetaLast:F
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v10, v5

    int-to-float v10, v10

    invoke-direct {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v7

    .line 376
    .local v7, textureLast:F
    const/4 v1, 0x0

    .line 378
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3c
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_8b

    .line 380
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 381
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v10, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    if-lez v10, :cond_86

    .line 384
    int-to-float v10, v2

    invoke-virtual {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v3

    .line 385
    .local v3, p:F
    cmpl-float v10, v3, v8

    if-ltz v10, :cond_5f

    cmpg-float v10, v3, v9

    if-ltz v10, :cond_67

    :cond_5f
    cmpg-float v10, v3, v8

    if-gtz v10, :cond_80

    cmpl-float v10, v3, v9

    if-lez v10, :cond_80

    .line 386
    :cond_67
    iput-boolean v12, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    .line 387
    add-int/lit8 v1, v1, 0x1

    .line 391
    :goto_6b
    cmpl-float v10, v3, v6

    if-ltz v10, :cond_73

    cmpg-float v10, v3, v7

    if-ltz v10, :cond_7b

    :cond_73
    cmpg-float v10, v3, v6

    if-gtz v10, :cond_83

    cmpl-float v10, v3, v7

    if-lez v10, :cond_83

    .line 392
    :cond_7b
    iput-boolean v12, v0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    .line 378
    .end local v3           #p:F
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 389
    .restart local v3       #p:F
    :cond_80
    iput-boolean v13, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    goto :goto_6b

    .line 394
    :cond_83
    iput-boolean v13, v0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    goto :goto_7d

    .line 398
    .end local v3           #p:F
    :cond_86
    iput-boolean v12, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 403
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_8b
    return v1
.end method

.method private deltaTimeInSeconds(J)F
    .registers 7
    .parameter

    .prologue
    .line 985
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 986
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 988
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private describeShuffle(Ljava/lang/String;[I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1395
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1396
    const/4 v0, 0x0

    :goto_b
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 1397
    if-lez v0, :cond_15

    .line 1398
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    :cond_15
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1402
    :cond_1d
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1403
    const-string v0, "CarouselScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-void
.end method

.method private doAutoscroll(F)Z
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const/high16 v1, 0x3f80

    .line 1531
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_e

    move v0, v2

    .line 1561
    :goto_d
    return v0

    .line 1535
    :cond_e
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_17

    .line 1536
    float-to-double v4, p1

    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1539
    :cond_17
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    add-double/2addr v4, v6

    .line 1541
    float-to-double v6, p1

    iget-wide v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1542
    cmpl-float v6, v0, v1

    if-lez v6, :cond_29

    move v0, v1

    .line 1547
    :cond_29
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    if-ne v6, v3, :cond_4f

    .line 1548
    sub-float v6, v1, v0

    sub-float v0, v1, v0

    mul-float/2addr v0, v6

    sub-float v0, v1, v0

    .line 1554
    :cond_34
    :goto_34
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    mul-float/2addr v1, v0

    float-to-double v6, v1

    const-wide/high16 v8, 0x3ff0

    float-to-double v0, v0

    sub-double v0, v8, v0

    iget v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    float-to-double v8, v8

    mul-double/2addr v0, v8

    add-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 1556
    float-to-double v0, p1

    cmpl-double v0, v0, v4

    if-lez v0, :cond_5f

    .line 1557
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->stopAutoscroll()V

    move v0, v2

    .line 1558
    goto :goto_d

    .line 1550
    :cond_4f
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_34

    .line 1551
    mul-float v1, v0, v0

    const/high16 v6, 0x4040

    const/high16 v7, 0x4000

    mul-float/2addr v0, v7

    sub-float v0, v6, v0

    mul-float/2addr v0, v1

    goto :goto_34

    :cond_5f
    move v0, v3

    .line 1561
    goto :goto_d
.end method

.method private doPhysics(F)Z
    .registers 10
    .parameter

    .prologue
    .line 1059
    const v0, 0x3c23d70a

    .line 1060
    cmpl-float v1, p1, v0

    if-lez v1, :cond_64

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1062
    :goto_f
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1063
    int-to-float v0, v2

    div-float v3, p1, v0

    .line 1065
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 1066
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    if-ge v1, v2, :cond_66

    .line 1068
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    neg-float v0, v0

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float/2addr v5, v0

    .line 1071
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    add-float/2addr v0, v6

    .line 1072
    const v6, 0x40c90fdb

    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1073
    div-float/2addr v0, v6

    .line 1076
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v0, v6

    .line 1078
    const/high16 v6, 0x3f00

    cmpl-float v6, v0, v6

    if-lez v6, :cond_48

    .line 1079
    const/high16 v6, 0x3f80

    sub-float v0, v6, v0

    neg-float v0, v0

    .line 1083
    :cond_48
    const/high16 v6, -0x8000

    mul-float/2addr v0, v6

    .line 1086
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    iget v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float/2addr v6, v7

    add-float/2addr v0, v5

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    .line 1087
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 1089
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 1066
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 1060
    :cond_64
    const/4 v0, 0x1

    goto :goto_f

    .line 1092
    :cond_66
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1104
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityThreshold:F

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->isInMotion(F)Z

    move-result v0

    return v0
.end method

.method private doSelection(FF)I
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 640
    new-instance v0, Lcom/google/android/opengl/carousel/Ray;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-direct {v0, v2}, Lcom/google/android/opengl/carousel/Ray;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    .line 641
    .local v0, ray:Lcom/google/android/opengl/carousel/Ray;
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/opengl/carousel/Ray;->makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 642
    const v2, 0x7cf0bdc2

    iput v2, v0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 643
    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectGeometry(Lcom/google/android/opengl/carousel/Ray;)I

    move-result v1

    .line 647
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method private dragFunction(FF)F
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide v5, 0x401921fb54442d18L

    .line 993
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->hitAngle(FF)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 994
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    sub-float/2addr v0, v1

    .line 996
    float-to-double v1, v0

    const-wide v3, -0x3ff6de04abbbd2e8L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_22

    .line 997
    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-float v0, v0

    .line 1001
    :cond_1d
    :goto_1d
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 1017
    :goto_21
    return v0

    .line 998
    :cond_22
    float-to-double v1, v0

    const-wide v3, 0x400921fb54442d18L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1d

    .line 999
    float-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_1d

    .line 1004
    :cond_30
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 1005
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_45

    .line 1006
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->projectedDelta(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1015
    :goto_40
    const v1, 0x40490fdb

    mul-float/2addr v0, v1

    goto :goto_21

    .line 1008
    :cond_45
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v1, :cond_5b

    .line 1009
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_40

    .line 1011
    :cond_5b
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_40
.end method

.method private drawCards(J)Z
    .registers 16
    .parameter "currentTime"

    .prologue
    .line 525
    const-wide v0, 0x401921fb54442d18L

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    .line 526
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEndAngle:F

    .line 527
    const/4 v12, 0x0

    .line 529
    .local v12, stillAnimating:Z
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 531
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->setCardPosition()V

    .line 532
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    if-eqz v0, :cond_39

    .line 533
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/ICardRenderer;->beforeDrawAllCards()V

    .line 536
    :cond_39
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, i:I
    :goto_41
    if-ltz v10, :cond_c5

    .line 537
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/opengl/carousel/Card;

    .line 538
    .local v7, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v0, v7, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-nez v0, :cond_52

    .line 536
    :cond_4f
    :goto_4f
    add-int/lit8 v10, v10, -0x1

    goto :goto_41

    .line 541
    :cond_52
    iget-object v0, v7, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/Card$RequestableTexture;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->getChangeTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedAlpha(JJ)F

    move-result v6

    .line 543
    .local v6, animatedAlpha:F
    const/high16 v0, 0x3f80

    cmpg-float v0, v6, v0

    if-gez v0, :cond_66

    .line 544
    const/4 v12, 0x1

    .line 549
    :cond_66
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b8

    .line 550
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEndAngle:F

    int-to-float v1, v10

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    div-float v11, v0, v1

    .line 551
    .local v11, positionAlpha:F
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    div-float v1, v11, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 557
    :goto_87
    const/high16 v0, 0x3f80

    mul-float v1, v6, v11

    invoke-virtual {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->getFadeOutLeftAlpha(I)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 560
    .local v8, fadeAmount:F
    iget-object v0, v7, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    iget v1, v7, Lcom/google/android/opengl/carousel/Card;->mId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getMatrixForCard([FIZZ)Z

    move-result v0

    or-int/2addr v12, v0

    .line 561
    invoke-virtual {v7, v8}, Lcom/google/android/opengl/carousel/Card;->draw(F)V

    .line 564
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    if-ne v10, v0, :cond_bb

    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    if-nez v0, :cond_bb

    .line 565
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedGlowingForSelected()F

    move-result v9

    .line 566
    .local v9, glowAlpha:F
    invoke-virtual {v7, v9}, Lcom/google/android/opengl/carousel/Card;->drawGlowing(F)V

    goto :goto_4f

    .line 553
    .end local v8           #fadeAmount:F
    .end local v9           #glowAlpha:F
    .end local v11           #positionAlpha:F
    :cond_b8
    const/high16 v11, 0x3f80

    .restart local v11       #positionAlpha:F
    goto :goto_87

    .line 567
    .restart local v8       #fadeAmount:F
    :cond_bb
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mFocusedItem:I

    if-ne v10, v0, :cond_4f

    .line 568
    const/high16 v0, 0x3f80

    invoke-virtual {v7, v0}, Lcom/google/android/opengl/carousel/Card;->drawGlowing(F)V

    goto :goto_4f

    .line 572
    .end local v6           #animatedAlpha:F
    .end local v7           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v8           #fadeAmount:F
    .end local v11           #positionAlpha:F
    :cond_c5
    const-string v0, "drawCards"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 573
    return v12
.end method

.method private drawDetails(J)Z
    .registers 14
    .parameter "currentTime"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mShowDetails:Z

    if-nez v0, :cond_8

    .line 584
    const/4 v10, 0x0

    .line 609
    :goto_7
    return v10

    .line 586
    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 588
    const/4 v10, 0x0

    .line 591
    .local v10, stillAnimating:Z
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sProjection:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x41a0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 594
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 595
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 596
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 598
    const/4 v8, 0x0

    .line 599
    .local v8, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, i:I
    :goto_4c
    if-ltz v9, :cond_6d

    .line 600
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-nez v0, :cond_5d

    .line 599
    :goto_5a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4c

    .line 603
    :cond_5d
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #card:Lcom/google/android/opengl/carousel/Card;
    check-cast v8, Lcom/google/android/opengl/carousel/Card;

    .line 604
    .restart local v8       #card:Lcom/google/android/opengl/carousel/Card;
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sProjection:[F

    invoke-virtual {v8, p1, p2, v0}, Lcom/google/android/opengl/carousel/Card;->drawDetails(J[F)Z

    move-result v0

    or-int/2addr v10, v0

    goto :goto_5a

    .line 607
    :cond_6d
    const-string v0, "drawDetails"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private getAnimatedGlowingForSelected()F
    .registers 5

    .prologue
    .line 963
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long/2addr v0, v2

    .line 965
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 966
    long-to-float v0, v0

    const/high16 v1, 0x4348

    div-float/2addr v0, v1

    .line 970
    :goto_11
    return v0

    .line 968
    :cond_12
    const/high16 v0, 0x3f80

    goto :goto_11
.end method

.method private getAnimatedScaleForSelected(Lcom/google/android/opengl/common/Float3;)Z
    .registers 12
    .parameter

    .prologue
    const/high16 v9, 0x4348

    const/high16 v8, 0x3f80

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 930
    invoke-static {}, Lcom/google/android/opengl/common/Float3;->getUnit()Lcom/google/android/opengl/common/Float3;

    move-result-object v3

    .line 934
    iget-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    if-eqz v4, :cond_45

    .line 936
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d

    sub-long/2addr v4, v6

    .line 937
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_23

    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-nez v6, :cond_27

    :cond_23
    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    if-eqz v6, :cond_2f

    .line 938
    :cond_27
    long-to-float v6, v4

    div-float/2addr v6, v9

    .line 939
    invoke-static {v6, v2, v8}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v2

    .line 940
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    .line 942
    :cond_2f
    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_43

    :goto_35
    move v1, v2

    .line 955
    :goto_36
    sget-object v2, Lcom/google/android/opengl/carousel/CarouselScene;->SELECTED_SCALE_FACTOR:Lcom/google/android/opengl/common/Float3;

    invoke-static {v2, v1}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 956
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/common/Float3;->set(Lcom/google/android/opengl/common/Float3;)V

    .line 958
    return v0

    :cond_43
    move v0, v1

    .line 942
    goto :goto_35

    .line 943
    :cond_45
    iget-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    if-eqz v4, :cond_61

    .line 945
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mReleaseTime:J

    sub-long/2addr v4, v6

    .line 946
    const-wide/16 v6, 0xc8

    cmp-long v6, v4, v6

    if-gez v6, :cond_5f

    .line 947
    long-to-float v1, v4

    div-float/2addr v1, v9

    sub-float v1, v8, v1

    .line 948
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_36

    .line 952
    :cond_5f
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    :cond_61
    move v0, v1

    move v1, v2

    goto :goto_36
.end method

.method private getCardTiltAngle(I)F
    .registers 7
    .parameter "i"

    .prologue
    const/4 v4, 0x0

    .line 1252
    const/high16 v2, 0x40a0

    .line 1253
    .local v2, tiltCardNumber:F
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    div-float v0, v3, v2

    .line 1254
    .local v0, deltaTilt:F
    const/4 v1, 0x0

    .line 1255
    .local v1, tiltAngle:F
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_19

    int-to-float v3, p1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_19

    .line 1257
    int-to-float v3, p1

    sub-float v3, v2, v3

    mul-float v1, v0, v3

    .line 1261
    :cond_18
    :goto_18
    return v1

    .line 1258
    :cond_19
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_18

    int-to-float v3, p1

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18

    .line 1259
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    mul-float v1, v0, v3

    goto :goto_18
.end method

.method private getSwayAngleForVelocity(FZ)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1575
    const/4 v0, 0x0

    .line 1577
    if-eqz p2, :cond_14

    .line 1579
    const v0, 0x40060a92

    .line 1580
    neg-float v1, p1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mSwaySensitivity:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->logistic(F)F

    move-result v1

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 1583
    :cond_14
    return v0
.end method

.method private getVerticalOffsetForCard(I)F
    .registers 10
    .parameter "i"

    .prologue
    const/4 v7, 0x1

    .line 1269
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 1270
    .local v1, rowCount:I
    if-ne v1, v7, :cond_9

    .line 1272
    const/4 v5, 0x0

    .line 1286
    :goto_8
    return v5

    .line 1274
    :cond_9
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowSpacing:F

    .line 1275
    .local v3, rowSpacing:F
    sget-object v5, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    sget-object v6, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    aget v6, v6, v7

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v6, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultCardMatrix:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float v0, v5, v6

    .line 1277
    .local v0, cardHeight:F
    int-to-float v5, v1

    add-float v6, v0, v3

    mul-float/2addr v5, v6

    sub-float v4, v5, v3

    .line 1278
    .local v4, totalHeight:F
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mFirstCardTop:Z

    if-eqz v5, :cond_3f

    .line 1279
    rem-int v5, p1, v1

    sub-int v5, v1, v5

    add-int/lit8 p1, v5, -0x1

    .line 1284
    :goto_33
    int-to-float v5, p1

    add-float v6, v0, v3

    mul-float v2, v5, v6

    .line 1286
    .local v2, rowOffset:F
    sub-float v5, v0, v4

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    goto :goto_8

    .line 1281
    .end local v2           #rowOffset:F
    :cond_3f
    rem-int/2addr p1, v1

    goto :goto_33
.end method

.method private hitAngle(FF)Z
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 1312
    new-instance v2, Lcom/google/android/opengl/carousel/Ray;

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-direct {v2, v4}, Lcom/google/android/opengl/carousel/Ray;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    .line 1313
    .local v2, ray:Lcom/google/android/opengl/carousel/Ray;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v2, v4, p1, p2}, Lcom/google/android/opengl/carousel/Ray;->makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z

    .line 1315
    const v4, 0x7cf0bdc2

    iput v4, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 1316
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    if-ne v4, v3, :cond_4e

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    invoke-virtual {v2, v4}, Lcom/google/android/opengl/carousel/Ray;->rayPlaneIntersect(Lcom/google/android/opengl/carousel/Plane;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1318
    new-instance v1, Lcom/google/android/opengl/common/Float3;

    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    invoke-direct {v1, v4}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1319
    .local v1, point:Lcom/google/android/opengl/common/Float3;
    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v5, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    invoke-static {v4, v5}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 1321
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1322
    .local v0, direction:Lcom/google/android/opengl/common/Float3;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/Plane;->mPoint:Lcom/google/android/opengl/common/Float3;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 1324
    iget v4, v0, Lcom/google/android/opengl/common/Float3;->x:F

    float-to-double v4, v4

    iget v6, v0, Lcom/google/android/opengl/common/Float3;->z:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    .line 1338
    .end local v0           #direction:Lcom/google/android/opengl/common/Float3;
    .end local v1           #point:Lcom/google/android/opengl/common/Float3;
    :goto_4d
    return v3

    .line 1326
    :cond_4e
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5c

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_90

    :cond_5c
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    invoke-virtual {v2, v4}, Lcom/google/android/opengl/carousel/Ray;->rayCylinderIntersect(Lcom/google/android/opengl/carousel/Cylinder;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1329
    new-instance v1, Lcom/google/android/opengl/common/Float3;

    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    invoke-direct {v1, v4}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1330
    .restart local v1       #point:Lcom/google/android/opengl/common/Float3;
    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v5, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    invoke-static {v4, v5}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 1332
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1333
    .restart local v0       #direction:Lcom/google/android/opengl/common/Float3;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/Cylinder;->mCenter:Lcom/google/android/opengl/common/Float3;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 1335
    iget v4, v0, Lcom/google/android/opengl/common/Float3;->x:F

    float-to-double v4, v4

    iget v6, v0, Lcom/google/android/opengl/common/Float3;->z:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    goto :goto_4d

    .line 1338
    .end local v0           #direction:Lcom/google/android/opengl/common/Float3;
    .end local v1           #point:Lcom/google/android/opengl/common/Float3;
    :cond_90
    const/4 v3, 0x0

    goto :goto_4d
.end method

.method private intersectDetailTexture(FFLcom/google/android/opengl/common/Float2;)I
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "tapCoordinates"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 662
    const/4 v1, 0x0

    .local v1, id:I
    :goto_3
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4a

    .line 663
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 664
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    if-nez v6, :cond_1a

    .line 662
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 667
    :cond_1a
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v7

    iget v2, v6, Lcom/google/android/opengl/common/Float2;->x:F

    .line 668
    .local v2, x0:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v7

    iget v4, v6, Lcom/google/android/opengl/common/Float2;->y:F

    .line 669
    .local v4, y0:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v8

    iget v3, v6, Lcom/google/android/opengl/common/Float2;->x:F

    .line 670
    .local v3, x1:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v8

    iget v5, v6, Lcom/google/android/opengl/common/Float2;->y:F

    .line 671
    .local v5, y1:F
    cmpl-float v6, p1, v2

    if-ltz v6, :cond_17

    cmpg-float v6, p1, v3

    if-gtz v6, :cond_17

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_17

    cmpg-float v6, p2, v5

    if-gtz v6, :cond_17

    .line 672
    sub-float v6, p1, v2

    sub-float v7, p2, v4

    invoke-virtual {p3, v6, v7}, Lcom/google/android/opengl/common/Float2;->set(FF)V

    .line 676
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v1           #id:I
    .end local v2           #x0:F
    .end local v3           #x1:F
    .end local v4           #y0:F
    .end local v5           #y1:F
    :goto_49
    return v1

    .restart local v1       #id:I
    :cond_4a
    const/4 v1, -0x1

    goto :goto_49
.end method

.method private intersectGeometry(Lcom/google/android/opengl/carousel/Ray;)I
    .registers 15
    .parameter "ray"

    .prologue
    .line 680
    const/4 v7, -0x1

    .line 682
    .local v7, hit:I
    const/4 v8, 0x0

    .local v8, id:I
    :goto_2
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_9d

    .line 683
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-eqz v1, :cond_99

    .line 684
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/opengl/carousel/Card;

    .line 685
    .local v6, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v2, v6, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    .line 686
    .local v2, matrix:[F
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/opengl/common/Float3;->getArray(I)[Lcom/google/android/opengl/common/Float3;

    move-result-object v11

    .line 689
    .local v11, p:[Lcom/google/android/opengl/common/Float3;
    const/4 v12, 0x0

    .local v12, vertex:I
    :goto_26
    const/4 v1, 0x4

    if-ge v12, v1, :cond_7a

    .line 690
    invoke-virtual {v6, v12}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v4

    .line 691
    .local v4, cardVertices:[F
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 692
    .local v0, tmp:[F
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 694
    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_61

    .line 695
    aget-object v1, v11, v12

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/common/Float3;->x:F

    .line 696
    aget-object v1, v11, v12

    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/common/Float3;->y:F

    .line 697
    aget-object v1, v11, v12

    const/4 v3, 0x2

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/common/Float3;->z:F

    .line 698
    aget-object v1, v11, v12

    const/high16 v3, 0x3f80

    const/4 v5, 0x3

    aget v5, v0, v5

    div-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/google/android/opengl/common/Float3;->times(F)V

    .line 689
    :goto_5e
    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    .line 700
    :cond_61
    const-string v1, "CarouselScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad w coord: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 705
    .end local v0           #tmp:[F
    .end local v4           #cardVertices:[F
    :cond_7a
    const/4 v1, 0x0

    aget-object v1, v11, v1

    const/4 v3, 0x1

    aget-object v3, v11, v3

    const/4 v5, 0x2

    aget-object v5, v11, v5

    invoke-virtual {p1, v1, v3, v5}, Lcom/google/android/opengl/carousel/Ray;->rayTriangleIntersect(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)Z

    move-result v9

    .line 706
    .local v9, is1:Z
    const/4 v1, 0x2

    aget-object v1, v11, v1

    const/4 v3, 0x3

    aget-object v3, v11, v3

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {p1, v1, v3, v5}, Lcom/google/android/opengl/carousel/Ray;->rayTriangleIntersect(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)Z

    move-result v10

    .line 707
    .local v10, is2:Z
    if-nez v9, :cond_98

    if-eqz v10, :cond_99

    .line 708
    :cond_98
    move v7, v8

    .line 682
    .end local v2           #matrix:[F
    .end local v6           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v9           #is1:Z
    .end local v10           #is2:Z
    .end local v11           #p:[Lcom/google/android/opengl/common/Float3;
    .end local v12           #vertex:I
    :cond_99
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 713
    :cond_9d
    return v7
.end method

.method private isInMotion(F)Z
    .registers 3
    .parameter "threshold"

    .prologue
    .line 1109
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private logistic(F)F
    .registers 6
    .parameter "t"

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 1571
    neg-float v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    div-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method

.method private maximumBias()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    div-int v0, v1, v2

    .line 1124
    .local v0, totalSlots:I
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    if-lez v1, :cond_1d

    invoke-direct {p0, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    :goto_1c
    return v1

    :cond_1d
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1c
.end method

.method private minimumBias()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    div-int v0, v1, v2

    .line 1116
    .local v0, totalSlots:I
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    if-lez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v1, v1

    :goto_28
    return v1

    :cond_29
    invoke-direct {p0, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v1

    goto :goto_28
.end method

.method private projectedDelta(FF)F
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4040

    .line 1027
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    float-to-double v0, v0

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1028
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    invoke-static {v1, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    .line 1029
    float-to-double v1, v1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    double-to-float v0, v0

    .line 1030
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    div-float/2addr v0, v1

    .line 1031
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v1, :cond_47

    .line 1033
    div-float/2addr v0, v5

    .line 1036
    :cond_47
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    if-eqz v1, :cond_5f

    .line 1038
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    add-int/lit8 v1, v1, -0x78

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5f

    const/high16 v1, 0x4396

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5f

    .line 1039
    mul-float/2addr v0, v5

    .line 1043
    :cond_5f
    return v0
.end method

.method private radiansToCarouselRotationAngle(F)F
    .registers 7
    .parameter "angle"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    int-to-float v0, v0

    neg-float v1, p1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private rotateM([FIFFFF)V
    .registers 16
    .parameter "m"
    .parameter "mOffset"
    .parameter "a"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x10

    .line 1302
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sRotationTemp:[F

    .local v0, temp:[F
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1303
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    move-object v2, v0

    move v3, v8

    move-object v4, p1

    move v5, p2

    move-object v6, v0

    move v7, v1

    .line 1304
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1305
    invoke-static {v0, v8, p1, p2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1306
    return-void
.end method

.method private setCardPosition()V
    .registers 9

    .prologue
    const v3, 0x8892

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 340
    const/4 v6, 0x0

    .line 341
    .local v6, USE_VBO:Z
    if-nez v6, :cond_13

    .line 342
    const/4 v1, 0x3

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 353
    :goto_12
    return-void

    .line 347
    :cond_13
    new-array v7, v1, [I

    .line 348
    .local v7, vboIds:[I
    invoke-static {v1, v7, v0}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 349
    aget v0, v7, v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 350
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVertices:Ljava/nio/FloatBuffer;

    const v2, 0x88e4

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_12
.end method

.method private slotAngle(F)F
    .registers 6
    .parameter "p"

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1190
    .local v0, angle:F
    return v0
.end method

.method private stopAutoscroll()V
    .registers 3

    .prologue
    .line 1521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsAutoScrolling:Z

    .line 1522
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1523
    return-void
.end method

.method private tiltOverscroll()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 895
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_b

    .line 897
    const/4 v0, 0x0

    .line 911
    :goto_a
    return v0

    .line 901
    :cond_b
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v1, v2

    .line 903
    const v2, 0x3ec90fdb

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mTiltMaximumAngle:F

    mul-float/2addr v1, v2

    .line 905
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    if-ne v2, v0, :cond_22

    .line 906
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    goto :goto_a

    .line 908
    :cond_22
    neg-float v1, v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    goto :goto_a
.end method

.method private updateCardResources(J)V
    .registers 8
    .parameter "currentTime"

    .prologue
    .line 415
    const/4 v2, 0x1

    .line 416
    .local v2, requestLargeTexture:Z
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    if-nez v3, :cond_14

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mTextureVelocityThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    .line 418
    const/4 v2, 0x0

    .line 423
    :cond_14
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_33

    .line 424
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 425
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v3, v0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    if-eqz v3, :cond_2f

    .line 426
    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/Card;->requestTexture(Z)V

    .line 423
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 428
    :cond_2f
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/Card;->initCardTexture()V

    goto :goto_2c

    .line 431
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_33
    return-void
.end method

.method private updateNextPosition(J)Z
    .registers 11
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1133
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->deltaTimeInSeconds(J)F

    move-result v2

    .line 1134
    cmpg-float v3, v2, v7

    if-gtz v3, :cond_c

    .line 1175
    :goto_b
    return v1

    .line 1137
    :cond_c
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v3

    .line 1138
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v4

    .line 1143
    iget-boolean v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    if-eqz v5, :cond_50

    .line 1144
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    const v6, 0x3c23d70a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_34

    .line 1145
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mTiltMaximumAngle:F

    mul-float/2addr v2, v5

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    .line 1168
    :goto_2b
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-static {v0, v4, v3}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v0

    .line 1170
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    goto :goto_b

    .line 1147
    :cond_34
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    const v6, -0x43dc28f6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_48

    .line 1148
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mTiltMaximumAngle:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    goto :goto_2b

    .line 1151
    :cond_48
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 1152
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    .line 1153
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    move v1, v0

    goto :goto_2b

    .line 1155
    :cond_50
    iget-boolean v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsAutoScrolling:Z

    if-eqz v5, :cond_5a

    .line 1156
    long-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->doAutoscroll(F)Z

    move-result v1

    goto :goto_2b

    .line 1158
    :cond_5a
    invoke-direct {p0, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doPhysics(F)Z

    move-result v2

    .line 1159
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_65

    move v0, v1

    :cond_65
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 1160
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    if-eqz v0, :cond_6e

    .line 1161
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    goto :goto_2b

    :cond_6e
    move v1, v2

    goto :goto_2b
.end method

.method private updateTexture(Lcom/google/android/opengl/carousel/Card$RequestableTexture;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "texture"
    .parameter "bitmap"

    .prologue
    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 456
    if-nez p2, :cond_6

    .line 469
    :goto_5
    return-void

    .line 459
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->getTextureId()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 460
    invoke-virtual {p1}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->deleteTextureId()V

    .line 464
    :goto_f
    invoke-virtual {p1}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->genTextureId()V

    .line 465
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->setExtent(II)V

    .line 466
    invoke-virtual {p1}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->getTextureId()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 467
    invoke-static {}, Lcom/google/android/opengl/carousel/GL2Helper;->setDefaultNPOTTextureState()V

    .line 468
    invoke-static {v3, v2, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_5

    .line 462
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->setTextureLoadTime(J)V

    goto :goto_f
.end method

.method private wedgeAngle(F)F
    .registers 6
    .parameter "cards"

    .prologue
    .line 1048
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method cancelHover()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 783
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    .line 784
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    .line 785
    return-void
.end method

.method cardAngle(F)F
    .registers 5
    .parameter "p"

    .prologue
    .line 1182
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    int-to-float v2, v2

    div-float v2, p1, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->slotAngle(F)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    add-float v0, v1, v2

    .line 1183
    .local v0, angle:F
    return v0
.end method

.method doHover(FF)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v0

    .line 759
    .local v0, hoverCard:I
    new-instance v3, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v3}, Lcom/google/android/opengl/common/Float2;-><init>()V

    .line 760
    .local v3, point:Lcom/google/android/opengl/common/Float2;
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectDetailTexture(FFLcom/google/android/opengl/common/Float2;)I

    move-result v1

    .line 761
    .local v1, hoverDetail:I
    const/4 v2, 0x0

    .line 762
    .local v2, hoverOccur:Z
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    if-eq v0, v4, :cond_1a

    .line 763
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    .line 764
    if-eq v0, v5, :cond_1a

    .line 765
    const/4 v2, 0x1

    .line 766
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    .line 769
    :cond_1a
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    if-eq v1, v4, :cond_25

    .line 770
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    .line 771
    if-eq v1, v5, :cond_25

    .line 772
    const/4 v2, 0x1

    .line 773
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    .line 776
    :cond_25
    return v2
.end method

.method doLongPress()Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 829
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v6, :cond_8

    move v6, v7

    .line 850
    :goto_7
    return v6

    .line 831
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 834
    .local v0, currentTime:J
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v6, v9}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v4

    .line 835
    .local v4, selection:I
    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v6, :cond_64

    const/4 v6, -0x1

    if-eq v4, v6, :cond_64

    .line 837
    const/4 v6, 0x2

    new-array v5, v6, [I

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    aput v6, v5, v7

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    aput v6, v5, v8

    .line 838
    .local v5, touchPosition:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 839
    .local v2, detailCoordinates:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/opengl/carousel/Card;

    iget-object v3, v6, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    .line 840
    .local v3, pos:[Lcom/google/android/opengl/common/Float2;
    aget-object v6, v3, v7

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->x:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 841
    aget-object v6, v3, v7

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->y:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 842
    aget-object v6, v3, v8

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->x:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 843
    aget-object v6, v3, v8

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->y:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 844
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v6, v4, v5, v2}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardLongPress(I[ILandroid/graphics/Rect;)V

    .line 845
    iput-boolean v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    move v6, v8

    .line 846
    goto :goto_7

    .line 848
    .end local v2           #detailCoordinates:Landroid/graphics/Rect;
    .end local v3           #pos:[Lcom/google/android/opengl/common/Float2;
    .end local v5           #touchPosition:[I
    :cond_64
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    move v6, v7

    .line 850
    goto :goto_7
.end method

.method public doMotion(FF)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x3ec90fdb

    .line 854
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v2

    .line 855
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v3

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->dragFunction(FF)F

    move-result v1

    .line 860
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAntiJitter:Z

    if-eqz v0, :cond_c1

    .line 861
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-nez v0, :cond_c1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v6, 0x3951b717

    cmpl-float v0, v0, v6

    if-lez v0, :cond_c1

    .line 862
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    neg-float v0, v0

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    invoke-static {v1, v0, v6}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v0

    .line 866
    :goto_35
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    .line 867
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    sub-float v6, v3, v7

    add-float/2addr v7, v2

    invoke-static {v0, v6, v7}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    .line 869
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    invoke-static {v0, v3, v2}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 870
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->tiltOverscroll()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 872
    new-instance v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 873
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 874
    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionRadius:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_bf

    const/4 v0, 0x1

    .line 875
    :goto_7c
    iget-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 876
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 878
    invoke-direct {p0, v4, v5}, Lcom/google/android/opengl/carousel/CarouselScene;->deltaTimeInSeconds(J)F

    move-result v0

    .line 879
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_b6

    .line 880
    div-float v0, v1, v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    mul-float/2addr v0, v1

    .line 881
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    invoke-static {v0, v1, v2}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v0

    .line 882
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistory:[F

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    rem-int/lit8 v2, v2, 0xa

    aput v0, v1, v2

    .line 883
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    .line 886
    :cond_b6
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->computeAverageVelocityFromHistory()F

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 887
    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 892
    return-void

    .line 874
    :cond_bf
    const/4 v0, 0x0

    goto :goto_7c

    :cond_c1
    move v0, v1

    goto/16 :goto_35
.end method

.method public doStart(FF)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 717
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 718
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 720
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->hitAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 721
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 727
    :goto_19
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionVelocityThreshold:F

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->isInMotion(F)Z

    move-result v1

    if-nez v1, :cond_5e

    move v1, v2

    :goto_22
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 729
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 730
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistory:[F

    aput v6, v1, v3

    .line 731
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    .line 734
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mReleaseTime:J

    .line 735
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    .line 736
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchBias:F

    .line 738
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    .line 740
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    .line 741
    new-instance v0, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float2;-><init>()V

    .line 742
    .local v0, point:Lcom/google/android/opengl/common/Float2;
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectDetailTexture(FFLcom/google/android/opengl/common/Float2;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectedDetail:I

    .line 744
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 745
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    .line 746
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    .line 747
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 748
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->stopAutoscroll()V

    .line 749
    return-void

    .line 723
    .end local v0           #point:Lcom/google/android/opengl/common/Float2;
    :cond_5b
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    goto :goto_19

    :cond_5e
    move v1, v3

    .line 727
    goto :goto_22
.end method

.method public doStop(FF)V
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 789
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v4, :cond_8

    .line 822
    :goto_7
    return-void

    .line 791
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 793
    .local v0, currentTime:J
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mReleaseTime:J

    .line 794
    iput-boolean v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 795
    iget-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v4, :cond_43

    .line 796
    const/4 v3, -0x1

    .line 797
    .local v3, selection:I
    new-instance v2, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v2}, Lcom/google/android/opengl/common/Float2;-><init>()V

    .line 798
    .local v2, point:Lcom/google/android/opengl/common/Float2;
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectDetailTexture(FFLcom/google/android/opengl/common/Float2;)I

    move-result v3

    if-eq v3, v5, :cond_34

    .line 800
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v5, v2, Lcom/google/android/opengl/common/Float2;->x:F

    float-to-int v5, v5

    iget v6, v2, Lcom/google/android/opengl/common/Float2;->y:F

    float-to-int v6, v6

    invoke-interface {v4, v3, v5, v6}, Lcom/google/android/opengl/carousel/CarouselCallback;->onDetailSelected(III)V

    .line 807
    :cond_2b
    :goto_2b
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 818
    .end local v2           #point:Lcom/google/android/opengl/common/Float2;
    .end local v3           #selection:I
    :cond_2d
    :goto_2d
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 819
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 820
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    goto :goto_7

    .line 801
    .restart local v2       #point:Lcom/google/android/opengl/common/Float2;
    .restart local v3       #selection:I
    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v3

    if-eq v3, v5, :cond_2b

    .line 804
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->sendAnimationFinished()V

    .line 805
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v4, v3}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardSelected(I)V

    goto :goto_2b

    .line 809
    .end local v2           #point:Lcom/google/android/opengl/common/Float2;
    .end local v3           #selection:I
    :cond_43
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_57

    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastStopTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mStopTimeThreshold:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_57

    .line 810
    iput v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    .line 812
    :cond_57
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->computeAverageVelocityFromHistory()F

    move-result v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 813
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    neg-float v5, v5

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    invoke-static {v4, v5, v6}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 814
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2d

    .line 815
    iput-boolean v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    goto :goto_2d
.end method

.method public draw()Z
    .registers 10

    .prologue
    const/16 v8, 0xbe2

    const/4 v3, 0x0

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 231
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_22

    const/4 v2, 0x1

    .line 233
    .local v2, stillAnimating:Z
    :goto_12
    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 234
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/opengl/carousel/Background;->draw(J)Z

    .line 236
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 238
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v4, :cond_24

    .line 271
    :cond_21
    :goto_21
    return v3

    .end local v2           #stillAnimating:Z
    :cond_22
    move v2, v3

    .line 231
    goto :goto_12

    .line 240
    .restart local v2       #stillAnimating:Z
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v4

    if-lez v4, :cond_21

    .line 243
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAutoRotation:Z

    if-eqz v3, :cond_3c

    .line 244
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    float-to-double v3, v3

    const-wide v5, 0x3f60624dd2f1a9fcL

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRotationAngle:F

    .line 247
    :cond_3c
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    if-nez v3, :cond_44

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->updateNextPosition(J)Z

    move-result v2

    .line 251
    :cond_44
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 253
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->cullCards()I

    .line 254
    invoke-direct {p0, v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->updateCardResources(J)V

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->drawCards(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->drawDetails(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 259
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    if-eq v2, v3, :cond_61

    .line 260
    if-eqz v2, :cond_69

    .line 262
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->sendAnimationStarted()V

    .line 267
    :goto_5f
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 270
    :cond_61
    const-string v3, "CarouselScene.draw"

    invoke-static {v3}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 271
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    goto :goto_21

    .line 265
    :cond_69
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->sendAnimationFinished()V

    goto :goto_5f
.end method

.method getAnimatedAlpha(JJ)F
    .registers 11
    .parameter "startTime"
    .parameter "currentTime"

    .prologue
    .line 619
    sub-long v4, p3, p1

    long-to-double v2, v4

    .line 620
    .local v2, timeElapsed:D
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-wide v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    long-to-double v4, v4

    div-double v0, v2, v4

    .line 621
    .local v0, alpha:D
    const/high16 v4, 0x3f80

    double-to-float v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method getCardCount()I
    .registers 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCarouselRotationPosition()I
    .registers 3

    .prologue
    .line 324
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->radiansToCarouselRotationAngle(F)F

    move-result v0

    .line 325
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method getFadeOutLeftAlpha(I)F
    .registers 7
    .parameter "i"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    .line 628
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v0

    .line 629
    .local v0, angle:F
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeOutLeftAngle:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_34

    .line 630
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/opengl/carousel/Card;->mFadeWithEmptyTexture:Z

    .line 631
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    sub-float v1, v0, v1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeOutLeftAngle:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 634
    :goto_33
    return v1

    .line 633
    :cond_34
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/opengl/carousel/Card;->mFadeWithEmptyTexture:Z

    move v1, v2

    .line 634
    goto :goto_33
.end method

.method public getFocusedItem()I
    .registers 2

    .prologue
    .line 1408
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mFocusedItem:I

    return v0
.end method

.method public getHoverCard()I
    .registers 2

    .prologue
    .line 1416
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    return v0
.end method

.method public getHoverDetail()I
    .registers 2

    .prologue
    .line 1420
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    return v0
.end method

.method getMatrixForCard([FIZZ)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1209
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v7

    .line 1210
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-direct {p0, v0, p3}, Lcom/google/android/opengl/carousel/CarouselScene;->getSwayAngleForVelocity(FZ)F

    move-result v8

    .line 1211
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1212
    const/4 v2, 0x0

    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/opengl/carousel/CarouselScene;->rotateM([FIFFFF)V

    .line 1213
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    invoke-direct {p0, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getVerticalOffsetForCard(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1215
    invoke-direct {p0, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardTiltAngle(I)F

    move-result v0

    .line 1216
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardRotation:F

    add-float/2addr v1, v8

    add-float/2addr v0, v1

    .line 1217
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    if-nez v1, :cond_3d

    .line 1218
    sub-float/2addr v0, v7

    .line 1221
    :cond_3d
    const/4 v2, 0x0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/opengl/carousel/CarouselScene;->rotateM([FIFFFF)V

    .line 1222
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSpecialRotationInPortrait:Z

    if-eqz v0, :cond_6f

    .line 1225
    const/4 v1, 0x0

    const/high16 v2, -0x3eb0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1226
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1229
    :cond_6f
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/common/Float2;

    iget v1, v1, Lcom/google/android/opengl/common/Float2;->x:F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/common/Float2;

    iget v2, v2, Lcom/google/android/opengl/common/Float2;->y:F

    const/high16 v3, 0x3f80

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1230
    const/4 v0, 0x0

    .line 1231
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    if-ne p2, v1, :cond_b4

    .line 1232
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    if-eqz v1, :cond_b4

    .line 1233
    invoke-static {}, Lcom/google/android/opengl/common/Float3;->getUnit()Lcom/google/android/opengl/common/Float3;

    move-result-object v1

    .line 1234
    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedScaleForSelected(Lcom/google/android/opengl/common/Float3;)Z

    move-result v0

    .line 1235
    const/4 v2, 0x0

    iget v3, v1, Lcom/google/android/opengl/common/Float3;->x:F

    iget v4, v1, Lcom/google/android/opengl/common/Float3;->y:F

    iget v1, v1, Lcom/google/android/opengl/common/Float3;->z:F

    invoke-static {p1, v2, v3, v4, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move v6, v0

    .line 1239
    :goto_9f
    if-eqz p4, :cond_b3

    .line 1240
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mClientMatrix:[F

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1243
    :cond_b3
    return v6

    :cond_b4
    move v6, v0

    goto :goto_9f
.end method

.method public getRealtimeCarouselRotationAngle()F
    .registers 2

    .prologue
    .line 316
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->radiansToCarouselRotationAngle(F)F

    move-result v0

    return v0
.end method

.method invalidateDetailTexture(IZ)V
    .registers 5
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 1454
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 1457
    :cond_8
    :goto_8
    return-void

    .line 1456
    :cond_9
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->invalidateTexture(I)V

    goto :goto_8
.end method

.method public invalidateDetailTextures(Z)V
    .registers 5
    .parameter "eraseCurrent"

    .prologue
    .line 1460
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 1461
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/Card;->invalidateTexture(I)V

    goto :goto_6

    .line 1463
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_17
    return-void
.end method

.method public sendAnimationFinished()V
    .registers 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v1, :cond_5

    .line 307
    :goto_4
    return-void

    .line 303
    :cond_5
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->radiansToCarouselRotationAngle(F)F

    move-result v0

    .line 306
    .local v0, angle:F
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v1, v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onAnimationFinished(F)V

    goto :goto_4
.end method

.method sendAnimationStarted()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v0, :cond_9

    .line 289
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onAnimationStarted()V

    .line 291
    :cond_9
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .registers 4
    .parameter "angle"

    .prologue
    .line 1435
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselRotationAngle:F

    .line 1436
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->updateCarouselRotationAngle()V

    .line 1437
    return-void
.end method

.method setCarouselRotationAngle(FIIF)V
    .registers 11
    .parameter "endAngle"
    .parameter "milliseconds"
    .parameter "interpolationMode"
    .parameter "maxAnimatedArc"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1484
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->radiansToCarouselRotationAngle(F)F

    move-result v0

    .line 1486
    .local v0, actualStart:F
    cmpl-float v3, p4, v5

    if-lez v3, :cond_18

    .line 1488
    cmpg-float v3, v0, p1

    if-gtz v3, :cond_4f

    .line 1489
    sub-float v3, p1, p4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_18

    .line 1490
    sub-float v0, p1, p4

    .line 1500
    :cond_18
    :goto_18
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 1501
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsAutoScrolling:Z

    .line 1502
    int-to-double v3, p2

    iput-wide v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    .line 1503
    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    .line 1504
    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->carouselRotationAngleToRadians(F)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    .line 1505
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->carouselRotationAngleToRadians(F)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    .line 1508
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v1

    .line 1509
    .local v1, highBias:F
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v2

    .line 1510
    .local v2, lowBias:F
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    invoke-static {v3, v2, v1}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    .line 1511
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    invoke-static {v3, v2, v1}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    .line 1514
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1515
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 1516
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 1517
    return-void

    .line 1494
    .end local v1           #highBias:F
    .end local v2           #lowBias:F
    :cond_4f
    add-float v3, p1, p4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_18

    .line 1495
    add-float v0, p1, p4

    goto :goto_18
.end method

.method setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V
    .registers 11
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x2

    .line 477
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v1

    if-le p1, v1, :cond_11

    .line 478
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index out of bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_11
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 482
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    if-nez p6, :cond_1f

    .line 483
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    .line 494
    :goto_1e
    return-void

    .line 487
    :cond_1f
    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/Card$RequestableTexture;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, p6}, Lcom/google/android/opengl/carousel/CarouselScene;->updateTexture(Lcom/google/android/opengl/carousel/Card$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 488
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-virtual {v1, v3, p6}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 489
    iput v3, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    .line 490
    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/common/Float2;

    iput p2, v1, Lcom/google/android/opengl/common/Float2;->x:F

    .line 491
    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/common/Float2;

    iput p3, v1, Lcom/google/android/opengl/common/Float2;->y:F

    .line 492
    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iput p4, v1, Lcom/google/android/opengl/common/Float2;->x:F

    .line 493
    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iput p5, v1, Lcom/google/android/opengl/common/Float2;->y:F

    goto :goto_1e
.end method

.method public setFocusedItem(I)V
    .registers 2
    .parameter "focusedItem"

    .prologue
    .line 1412
    iput p1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mFocusedItem:I

    .line 1413
    return-void
.end method

.method public setGeometry(ILcom/google/android/opengl/carousel/Mesh;)V
    .registers 3
    .parameter "n"
    .parameter "geometry"

    .prologue
    .line 503
    return-void
.end method

.method public setMatrixForItem(I[F)V
    .registers 7
    .parameter "n"
    .parameter "matrix"

    .prologue
    const/4 v3, 0x0

    .line 512
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v0

    if-lt p1, v0, :cond_35

    .line 513
    :cond_9
    const-string v0, "CarouselScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The index n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be in range [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_35
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mClientMatrix:[F

    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    return-void
.end method

.method public setTexture(ILandroid/graphics/Bitmap;)V
    .registers 6
    .parameter "n"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 440
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v1

    if-le p1, v1, :cond_11

    .line 441
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index out of bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_11
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 445
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    if-nez p2, :cond_1e

    .line 446
    iput v2, v0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 453
    :goto_1d
    return-void

    .line 450
    :cond_1e
    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/Card$RequestableTexture;

    aget-object v1, v1, v2

    invoke-direct {p0, v1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->updateTexture(Lcom/google/android/opengl/carousel/Card$RequestableTexture;Landroid/graphics/Bitmap;)V

    .line 451
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/google/android/opengl/carousel/CarouselSetting;->recycleIfRequired(ILandroid/graphics/Bitmap;)Z

    .line 452
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    goto :goto_1d
.end method

.method shuffle([I)V
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1350
    array-length v4, p1

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v5

    .line 1355
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    move v2, v3

    .line 1359
    :goto_11
    if-ge v2, v4, :cond_5e

    .line 1360
    aget v0, p1, v2

    .line 1362
    if-ge v0, v5, :cond_19

    if-ge v0, v1, :cond_41

    .line 1365
    :cond_19
    const-string v7, "CarouselScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In shuffle, card index maybe wrong, oldIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " oldCount: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string v0, "comeFrom:+ "

    invoke-direct {p0, v0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->describeShuffle(Ljava/lang/String;[I)V

    move v0, v1

    .line 1371
    :cond_41
    if-ne v0, v1, :cond_4f

    .line 1372
    new-instance v0, Lcom/google/android/opengl/carousel/Card;

    invoke-direct {v0, p0, v2}, Lcom/google/android/opengl/carousel/Card;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V

    .line 1379
    :goto_48
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 1374
    :cond_4f
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 1375
    iget v7, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    iput v7, v0, Lcom/google/android/opengl/carousel/Card;->mOldId:I

    .line 1376
    iput v2, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    goto :goto_48

    .line 1383
    :cond_5e
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 1384
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 1385
    invoke-virtual {v0, v3}, Lcom/google/android/opengl/carousel/Card;->initCardTexture(Z)V

    goto :goto_64

    .line 1388
    :cond_7a
    iput-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    .line 1389
    return-void
.end method

.method updateCarouselRotationAngle()V
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselRotationAngle:F

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->carouselRotationAngleToRadians(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 282
    return-void
.end method
