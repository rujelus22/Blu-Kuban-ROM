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

    .line 1467
    iput-wide v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1468
    iput-wide v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    .line 1469
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    .line 1471
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    .line 1472
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
    .line 915
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    if-lez v3, :cond_1c

    .line 916
    const/16 v3, 0xa

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 917
    .local v0, count:I
    const/4 v2, 0x0

    .line 918
    .local v2, vsum:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_18

    .line 919
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistory:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 921
    :cond_18
    int-to-float v3, v0

    div-float v3, v2, v3

    .line 923
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
    .line 984
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 985
    iget-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 987
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
    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1395
    const/4 v0, 0x0

    :goto_b
    array-length v2, p2

    if-ge v0, v2, :cond_1d

    .line 1396
    if-lez v0, :cond_15

    .line 1397
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    :cond_15
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1401
    :cond_1d
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1402
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

    .line 1404
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

    .line 1530
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_e

    move v0, v2

    .line 1560
    :goto_d
    return v0

    .line 1534
    :cond_e
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    cmpl-double v0, v4, v6

    if-nez v0, :cond_17

    .line 1535
    float-to-double v4, p1

    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1538
    :cond_17
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    add-double/2addr v4, v6

    .line 1540
    float-to-double v6, p1

    iget-wide v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1541
    cmpl-float v6, v0, v1

    if-lez v6, :cond_29

    move v0, v1

    .line 1546
    :cond_29
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    if-ne v6, v3, :cond_4f

    .line 1547
    sub-float v6, v1, v0

    sub-float v0, v1, v0

    mul-float/2addr v0, v6

    sub-float v0, v1, v0

    .line 1553
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

    .line 1555
    float-to-double v0, p1

    cmpl-double v0, v0, v4

    if-lez v0, :cond_5f

    .line 1556
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->stopAutoscroll()V

    move v0, v2

    .line 1557
    goto :goto_d

    .line 1549
    :cond_4f
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_34

    .line 1550
    mul-float v1, v0, v0

    const/high16 v6, 0x4040

    const/high16 v7, 0x4000

    mul-float/2addr v0, v7

    sub-float v0, v6, v0

    mul-float/2addr v0, v1

    goto :goto_34

    :cond_5f
    move v0, v3

    .line 1560
    goto :goto_d
.end method

.method private doPhysics(F)Z
    .registers 10
    .parameter

    .prologue
    .line 1058
    const v0, 0x3c23d70a

    .line 1059
    cmpl-float v1, p1, v0

    if-lez v1, :cond_64

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1061
    :goto_f
    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1062
    int-to-float v0, v2

    div-float v3, p1, v0

    .line 1064
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 1065
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    if-ge v1, v2, :cond_66

    .line 1067
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    neg-float v0, v0

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float/2addr v5, v0

    .line 1070
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    add-float/2addr v0, v6

    .line 1071
    const v6, 0x40c90fdb

    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1072
    div-float/2addr v0, v6

    .line 1075
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v0, v6

    .line 1077
    const/high16 v6, 0x3f00

    cmpl-float v6, v0, v6

    if-lez v6, :cond_48

    .line 1078
    const/high16 v6, 0x3f80

    sub-float v0, v6, v0

    neg-float v0, v0

    .line 1082
    :cond_48
    const/high16 v6, -0x8000

    mul-float/2addr v0, v6

    .line 1085
    iget v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    iget v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float/2addr v6, v7

    add-float/2addr v0, v5

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    .line 1086
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mMass:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 1088
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 1065
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 1059
    :cond_64
    const/4 v0, 0x1

    goto :goto_f

    .line 1091
    :cond_66
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1103
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
    .line 639
    new-instance v0, Lcom/google/android/opengl/carousel/Ray;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-direct {v0, v2}, Lcom/google/android/opengl/carousel/Ray;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    .line 640
    .local v0, ray:Lcom/google/android/opengl/carousel/Ray;
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/opengl/carousel/Ray;->makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 641
    const v2, 0x7cf0bdc2

    iput v2, v0, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 642
    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectGeometry(Lcom/google/android/opengl/carousel/Ray;)I

    move-result v1

    .line 646
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

    .line 992
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->hitAngle(FF)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 993
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    sub-float/2addr v0, v1

    .line 995
    float-to-double v1, v0

    const-wide v3, -0x3ff6de04abbbd2e8L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_22

    .line 996
    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-float v0, v0

    .line 1000
    :cond_1d
    :goto_1d
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 1016
    :goto_21
    return v0

    .line 997
    :cond_22
    float-to-double v1, v0

    const-wide v3, 0x400921fb54442d18L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1d

    .line 998
    float-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_1d

    .line 1003
    :cond_30
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 1004
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_45

    .line 1005
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->projectedDelta(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1014
    :goto_40
    const v1, 0x40490fdb

    mul-float/2addr v0, v1

    goto :goto_21

    .line 1007
    :cond_45
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v1, :cond_5b

    .line 1008
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

    .line 1010
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
    .line 524
    const-wide v0, 0x401921fb54442d18L

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    .line 525
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEndAngle:F

    .line 526
    const/4 v12, 0x0

    .line 528
    .local v12, stillAnimating:Z
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 530
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->setCardPosition()V

    .line 531
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    if-eqz v0, :cond_39

    .line 532
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/ICardRenderer;->beforeDrawAllCards()V

    .line 535
    :cond_39
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, i:I
    :goto_41
    if-ltz v10, :cond_c5

    .line 536
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/opengl/carousel/Card;

    .line 537
    .local v7, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v0, v7, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-nez v0, :cond_52

    .line 535
    :cond_4f
    :goto_4f
    add-int/lit8 v10, v10, -0x1

    goto :goto_41

    .line 540
    :cond_52
    iget-object v0, v7, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/Card$RequestableTexture;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/Card$RequestableTexture;->getChangeTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedAlpha(JJ)F

    move-result v6

    .line 542
    .local v6, animatedAlpha:F
    const/high16 v0, 0x3f80

    cmpg-float v0, v6, v0

    if-gez v0, :cond_66

    .line 543
    const/4 v12, 0x1

    .line 548
    :cond_66
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b8

    .line 549
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEndAngle:F

    int-to-float v1, v10

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    div-float v11, v0, v1

    .line 550
    .local v11, positionAlpha:F
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    div-float v1, v11, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 556
    :goto_87
    const/high16 v0, 0x3f80

    mul-float v1, v6, v11

    invoke-virtual {p0, v10}, Lcom/google/android/opengl/carousel/CarouselScene;->getFadeOutLeftAlpha(I)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 559
    .local v8, fadeAmount:F
    iget-object v0, v7, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    iget v1, v7, Lcom/google/android/opengl/carousel/Card;->mId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getMatrixForCard([FIZZ)Z

    move-result v0

    or-int/2addr v12, v0

    .line 560
    invoke-virtual {v7, v8}, Lcom/google/android/opengl/carousel/Card;->draw(F)V

    .line 563
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    if-ne v10, v0, :cond_bb

    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    if-nez v0, :cond_bb

    .line 564
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedGlowingForSelected()F

    move-result v9

    .line 565
    .local v9, glowAlpha:F
    invoke-virtual {v7, v9}, Lcom/google/android/opengl/carousel/Card;->drawGlowing(F)V

    goto :goto_4f

    .line 552
    .end local v8           #fadeAmount:F
    .end local v9           #glowAlpha:F
    .end local v11           #positionAlpha:F
    :cond_b8
    const/high16 v11, 0x3f80

    .restart local v11       #positionAlpha:F
    goto :goto_87

    .line 566
    .restart local v8       #fadeAmount:F
    :cond_bb
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mFocusedItem:I

    if-ne v10, v0, :cond_4f

    .line 567
    const/high16 v0, 0x3f80

    invoke-virtual {v7, v0}, Lcom/google/android/opengl/carousel/Card;->drawGlowing(F)V

    goto :goto_4f

    .line 571
    .end local v6           #animatedAlpha:F
    .end local v7           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v8           #fadeAmount:F
    .end local v11           #positionAlpha:F
    :cond_c5
    const-string v0, "drawCards"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 572
    return v12
.end method

.method private drawDetails(J)Z
    .registers 14
    .parameter "currentTime"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mShowDetails:Z

    if-nez v0, :cond_8

    .line 583
    const/4 v10, 0x0

    .line 608
    :goto_7
    return v10

    .line 585
    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTexCoord:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 587
    const/4 v10, 0x0

    .line 590
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

    .line 593
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 594
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 595
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 597
    const/4 v8, 0x0

    .line 598
    .local v8, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, i:I
    :goto_4c
    if-ltz v9, :cond_6d

    .line 599
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-nez v0, :cond_5d

    .line 598
    :goto_5a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4c

    .line 602
    :cond_5d
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #card:Lcom/google/android/opengl/carousel/Card;
    check-cast v8, Lcom/google/android/opengl/carousel/Card;

    .line 603
    .restart local v8       #card:Lcom/google/android/opengl/carousel/Card;
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sProjection:[F

    invoke-virtual {v8, p1, p2, v0}, Lcom/google/android/opengl/carousel/Card;->drawDetails(J[F)Z

    move-result v0

    or-int/2addr v10, v0

    goto :goto_5a

    .line 606
    :cond_6d
    const-string v0, "drawDetails"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private getAnimatedGlowingForSelected()F
    .registers 5

    .prologue
    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long/2addr v0, v2

    .line 964
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 965
    long-to-float v0, v0

    const/high16 v1, 0x4348

    div-float/2addr v0, v1

    .line 969
    :goto_11
    return v0

    .line 967
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

    .line 929
    invoke-static {}, Lcom/google/android/opengl/common/Float3;->getUnit()Lcom/google/android/opengl/common/Float3;

    move-result-object v3

    .line 933
    iget-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    if-eqz v4, :cond_45

    .line 935
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d

    sub-long/2addr v4, v6

    .line 936
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_23

    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-nez v6, :cond_27

    :cond_23
    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    if-eqz v6, :cond_2f

    .line 937
    :cond_27
    long-to-float v6, v4

    div-float/2addr v6, v9

    .line 938
    invoke-static {v6, v2, v8}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v2

    .line 939
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    .line 941
    :cond_2f
    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_43

    :goto_35
    move v1, v2

    .line 954
    :goto_36
    sget-object v2, Lcom/google/android/opengl/carousel/CarouselScene;->SELECTED_SCALE_FACTOR:Lcom/google/android/opengl/common/Float3;

    invoke-static {v2, v1}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 955
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/common/Float3;->set(Lcom/google/android/opengl/common/Float3;)V

    .line 957
    return v0

    :cond_43
    move v0, v1

    .line 941
    goto :goto_35

    .line 942
    :cond_45
    iget-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mInScaleAnimation:Z

    if-eqz v4, :cond_61

    .line 944
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mReleaseTime:J

    sub-long/2addr v4, v6

    .line 945
    const-wide/16 v6, 0xc8

    cmp-long v6, v4, v6

    if-gez v6, :cond_5f

    .line 946
    long-to-float v1, v4

    div-float/2addr v1, v9

    sub-float v1, v8, v1

    .line 947
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_36

    .line 951
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

    .line 1251
    const/high16 v2, 0x40a0

    .line 1252
    .local v2, tiltCardNumber:F
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    div-float v0, v3, v2

    .line 1253
    .local v0, deltaTilt:F
    const/4 v1, 0x0

    .line 1254
    .local v1, tiltAngle:F
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_19

    int-to-float v3, p1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_19

    .line 1256
    int-to-float v3, p1

    sub-float v3, v2, v3

    mul-float v1, v0, v3

    .line 1260
    :cond_18
    :goto_18
    return v1

    .line 1257
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

    .line 1258
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
    .line 1574
    const/4 v0, 0x0

    .line 1576
    if-eqz p2, :cond_14

    .line 1578
    const v0, 0x40060a92

    .line 1579
    neg-float v1, p1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mSwaySensitivity:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->logistic(F)F

    move-result v1

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 1582
    :cond_14
    return v0
.end method

.method private getVerticalOffsetForCard(I)F
    .registers 10
    .parameter "i"

    .prologue
    const/4 v7, 0x1

    .line 1268
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 1269
    .local v1, rowCount:I
    if-ne v1, v7, :cond_9

    .line 1271
    const/4 v5, 0x0

    .line 1285
    :goto_8
    return v5

    .line 1273
    :cond_9
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowSpacing:F

    .line 1274
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

    .line 1276
    .local v0, cardHeight:F
    int-to-float v5, v1

    add-float v6, v0, v3

    mul-float/2addr v5, v6

    sub-float v4, v5, v3

    .line 1277
    .local v4, totalHeight:F
    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mFirstCardTop:Z

    if-eqz v5, :cond_3f

    .line 1278
    rem-int v5, p1, v1

    sub-int v5, v1, v5

    add-int/lit8 p1, v5, -0x1

    .line 1283
    :goto_33
    int-to-float v5, p1

    add-float v6, v0, v3

    mul-float v2, v5, v6

    .line 1285
    .local v2, rowOffset:F
    sub-float v5, v0, v4

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    goto :goto_8

    .line 1280
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

    .line 1311
    new-instance v2, Lcom/google/android/opengl/carousel/Ray;

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-direct {v2, v4}, Lcom/google/android/opengl/carousel/Ray;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    .line 1312
    .local v2, ray:Lcom/google/android/opengl/carousel/Ray;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v2, v4, p1, p2}, Lcom/google/android/opengl/carousel/Ray;->makeRayForPixelAt(Lcom/google/android/opengl/carousel/GLCamera;FF)Z

    .line 1314
    const v4, 0x7cf0bdc2

    iput v4, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    .line 1315
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    if-ne v4, v3, :cond_4e

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    invoke-virtual {v2, v4}, Lcom/google/android/opengl/carousel/Ray;->rayPlaneIntersect(Lcom/google/android/opengl/carousel/Plane;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1317
    new-instance v1, Lcom/google/android/opengl/common/Float3;

    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    invoke-direct {v1, v4}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1318
    .local v1, point:Lcom/google/android/opengl/common/Float3;
    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v5, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    invoke-static {v4, v5}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 1320
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1321
    .local v0, direction:Lcom/google/android/opengl/common/Float3;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselPlane:Lcom/google/android/opengl/carousel/Plane;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/Plane;->mPoint:Lcom/google/android/opengl/common/Float3;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 1323
    iget v4, v0, Lcom/google/android/opengl/common/Float3;->x:F

    float-to-double v4, v4

    iget v6, v0, Lcom/google/android/opengl/common/Float3;->z:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    .line 1337
    .end local v0           #direction:Lcom/google/android/opengl/common/Float3;
    .end local v1           #point:Lcom/google/android/opengl/common/Float3;
    :goto_4d
    return v3

    .line 1325
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

    .line 1328
    new-instance v1, Lcom/google/android/opengl/common/Float3;

    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mPosition:Lcom/google/android/opengl/common/Float3;

    invoke-direct {v1, v4}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1329
    .restart local v1       #point:Lcom/google/android/opengl/common/Float3;
    iget-object v4, v2, Lcom/google/android/opengl/carousel/Ray;->mDirection:Lcom/google/android/opengl/common/Float3;

    iget v5, v2, Lcom/google/android/opengl/carousel/Ray;->mBestTime:F

    invoke-static {v4, v5}, Lcom/google/android/opengl/common/Float3;->mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/opengl/common/Float3;->add(Lcom/google/android/opengl/common/Float3;)V

    .line 1331
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/common/Float3;-><init>(Lcom/google/android/opengl/common/Float3;)V

    .line 1332
    .restart local v0       #direction:Lcom/google/android/opengl/common/Float3;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/Cylinder;->mCenter:Lcom/google/android/opengl/common/Float3;

    invoke-virtual {v0, v4}, Lcom/google/android/opengl/common/Float3;->minus(Lcom/google/android/opengl/common/Float3;)V

    .line 1334
    iget v4, v0, Lcom/google/android/opengl/common/Float3;->x:F

    float-to-double v4, v4

    iget v6, v0, Lcom/google/android/opengl/common/Float3;->z:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    goto :goto_4d

    .line 1337
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

    .line 661
    const/4 v1, 0x0

    .local v1, id:I
    :goto_3
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4a

    .line 662
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 663
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-boolean v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    if-nez v6, :cond_1a

    .line 661
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 666
    :cond_1a
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v7

    iget v2, v6, Lcom/google/android/opengl/common/Float2;->x:F

    .line 667
    .local v2, x0:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v7

    iget v4, v6, Lcom/google/android/opengl/common/Float2;->y:F

    .line 668
    .local v4, y0:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v8

    iget v3, v6, Lcom/google/android/opengl/common/Float2;->x:F

    .line 669
    .local v3, x1:F
    iget-object v6, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    aget-object v6, v6, v8

    iget v5, v6, Lcom/google/android/opengl/common/Float2;->y:F

    .line 670
    .local v5, y1:F
    cmpl-float v6, p1, v2

    if-ltz v6, :cond_17

    cmpg-float v6, p1, v3

    if-gtz v6, :cond_17

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_17

    cmpg-float v6, p2, v5

    if-gtz v6, :cond_17

    .line 671
    sub-float v6, p1, v2

    sub-float v7, p2, v4

    invoke-virtual {p3, v6, v7}, Lcom/google/android/opengl/common/Float2;->set(FF)V

    .line 675
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
    .line 679
    const/4 v7, -0x1

    .line 681
    .local v7, hit:I
    const/4 v8, 0x0

    .local v8, id:I
    :goto_2
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_9d

    .line 682
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    if-eqz v1, :cond_99

    .line 683
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/opengl/carousel/Card;

    .line 684
    .local v6, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v2, v6, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    .line 685
    .local v2, matrix:[F
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/opengl/common/Float3;->getArray(I)[Lcom/google/android/opengl/common/Float3;

    move-result-object v11

    .line 688
    .local v11, p:[Lcom/google/android/opengl/common/Float3;
    const/4 v12, 0x0

    .local v12, vertex:I
    :goto_26
    const/4 v1, 0x4

    if-ge v12, v1, :cond_7a

    .line 689
    invoke-virtual {v6, v12}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v4

    .line 690
    .local v4, cardVertices:[F
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 691
    .local v0, tmp:[F
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 693
    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_61

    .line 694
    aget-object v1, v11, v12

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/common/Float3;->x:F

    .line 695
    aget-object v1, v11, v12

    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/common/Float3;->y:F

    .line 696
    aget-object v1, v11, v12

    const/4 v3, 0x2

    aget v3, v0, v3

    iput v3, v1, Lcom/google/android/opengl/common/Float3;->z:F

    .line 697
    aget-object v1, v11, v12

    const/high16 v3, 0x3f80

    const/4 v5, 0x3

    aget v5, v0, v5

    div-float/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/google/android/opengl/common/Float3;->times(F)V

    .line 688
    :goto_5e
    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    .line 699
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

    .line 704
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

    .line 705
    .local v9, is1:Z
    const/4 v1, 0x2

    aget-object v1, v11, v1

    const/4 v3, 0x3

    aget-object v3, v11, v3

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {p1, v1, v3, v5}, Lcom/google/android/opengl/carousel/Ray;->rayTriangleIntersect(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)Z

    move-result v10

    .line 706
    .local v10, is2:Z
    if-nez v9, :cond_98

    if-eqz v10, :cond_99

    .line 707
    :cond_98
    move v7, v8

    .line 681
    .end local v2           #matrix:[F
    .end local v6           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v9           #is1:Z
    .end local v10           #is2:Z
    .end local v11           #p:[Lcom/google/android/opengl/common/Float3;
    .end local v12           #vertex:I
    :cond_99
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 712
    :cond_9d
    return v7
.end method

.method private isInMotion(F)Z
    .registers 3
    .parameter "threshold"

    .prologue
    .line 1108
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

    .line 1570
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

    .line 1122
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    div-int v0, v1, v2

    .line 1123
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

    .line 1114
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    div-int v0, v1, v2

    .line 1115
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

    .line 1026
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

    .line 1027
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    invoke-static {v1, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    .line 1028
    float-to-double v1, v1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    double-to-float v0, v0

    .line 1029
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    div-float/2addr v0, v1

    .line 1030
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v1, :cond_47

    .line 1032
    div-float/2addr v0, v5

    .line 1035
    :cond_47
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    if-eqz v1, :cond_5f

    .line 1037
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    add-int/lit8 v1, v1, -0x78

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5f

    const/high16 v1, 0x4396

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5f

    .line 1038
    mul-float/2addr v0, v5

    .line 1042
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

    .line 1301
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselScene;->sRotationTemp:[F

    .local v0, temp:[F
    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1302
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    move-object v2, v0

    move v3, v8

    move-object v4, p1

    move v5, p2

    move-object v6, v0

    move v7, v1

    .line 1303
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1304
    invoke-static {v0, v8, p1, p2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1305
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
    .line 1188
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->wedgeAngle(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1189
    .local v0, angle:F
    return v0
.end method

.method private stopAutoscroll()V
    .registers 3

    .prologue
    .line 1520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsAutoScrolling:Z

    .line 1521
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1522
    return-void
.end method

.method private tiltOverscroll()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 894
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_b

    .line 896
    const/4 v2, 0x0

    .line 910
    :goto_a
    return v2

    .line 900
    :cond_b
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    sub-float v0, v3, v4

    .line 902
    .local v0, deltaBias:F
    const v3, 0x3ec90fdb

    div-float v3, v0, v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mTiltMaximumAngle:F

    mul-float v1, v3, v4

    .line 904
    .local v1, tiltAngle:F
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    if-ne v3, v2, :cond_25

    .line 905
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    goto :goto_a

    .line 907
    :cond_25
    neg-float v3, v1

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

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

    .line 1132
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->deltaTimeInSeconds(J)F

    move-result v2

    .line 1133
    cmpg-float v3, v2, v7

    if-gtz v3, :cond_c

    .line 1174
    :goto_b
    return v1

    .line 1136
    :cond_c
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v3

    .line 1137
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v4

    .line 1142
    iget-boolean v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    if-eqz v5, :cond_50

    .line 1143
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    const v6, 0x3c23d70a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_34

    .line 1144
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mTiltMaximumAngle:F

    mul-float/2addr v2, v5

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    .line 1167
    :goto_2b
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-static {v0, v4, v3}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v0

    .line 1169
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    goto :goto_b

    .line 1146
    :cond_34
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    const v6, -0x43dc28f6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_48

    .line 1147
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mTiltMaximumAngle:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    goto :goto_2b

    .line 1150
    :cond_48
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 1151
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    .line 1152
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    move v1, v0

    goto :goto_2b

    .line 1154
    :cond_50
    iget-boolean v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsAutoScrolling:Z

    if-eqz v5, :cond_5a

    .line 1155
    long-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->doAutoscroll(F)Z

    move-result v1

    goto :goto_2b

    .line 1157
    :cond_5a
    invoke-direct {p0, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doPhysics(F)Z

    move-result v2

    .line 1158
    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_65

    move v0, v1

    :cond_65
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 1159
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    if-eqz v0, :cond_6e

    .line 1160
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
    .line 1047
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

    .line 782
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    .line 783
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    .line 784
    return-void
.end method

.method cardAngle(F)F
    .registers 5
    .parameter "p"

    .prologue
    .line 1181
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

    .line 1182
    .local v0, angle:F
    return v0
.end method

.method public createCards(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->createCards(IZ)V

    .line 181
    return-void
.end method

.method public createCards(IZ)V
    .registers 10
    .parameter "n"
    .parameter "cleanExisting"

    .prologue
    .line 190
    if-eqz p2, :cond_17

    .line 191
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_70

    .line 193
    new-instance v0, Lcom/google/android/opengl/carousel/Card;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/carousel/Card;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V

    .line 194
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 199
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v1           #i:I
    :cond_17
    const-string v4, "CarouselScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating cards and preseving old cards: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old cards: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 202
    .local v2, oldCardSize:I
    if-ge v2, p1, :cond_57

    .line 203
    move v1, v2

    .restart local v1       #i:I
    :goto_48
    if-ge v1, p1, :cond_70

    .line 204
    new-instance v0, Lcom/google/android/opengl/carousel/Card;

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/carousel/Card;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V

    .line 205
    .restart local v0       #card:Lcom/google/android/opengl/carousel/Card;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 207
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v1           #i:I
    :cond_57
    if-le v2, p1, :cond_70

    .line 209
    sub-int v3, v2, p1

    .line 210
    .local v3, toRemove:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5c
    if-ge v1, v3, :cond_70

    .line 211
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 212
    .restart local v0       #card:Lcom/google/android/opengl/carousel/Card;
    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/Card;->initCardTexture()V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 215
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v1           #i:I
    .end local v2           #oldCardSize:I
    .end local v3           #toRemove:I
    :cond_70
    return-void
.end method

.method doHover(FF)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 757
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v0

    .line 758
    .local v0, hoverCard:I
    new-instance v3, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v3}, Lcom/google/android/opengl/common/Float2;-><init>()V

    .line 759
    .local v3, point:Lcom/google/android/opengl/common/Float2;
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectDetailTexture(FFLcom/google/android/opengl/common/Float2;)I

    move-result v1

    .line 760
    .local v1, hoverDetail:I
    const/4 v2, 0x0

    .line 761
    .local v2, hoverOccur:Z
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    if-eq v0, v4, :cond_1a

    .line 762
    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    .line 763
    if-eq v0, v5, :cond_1a

    .line 764
    const/4 v2, 0x1

    .line 765
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    .line 768
    :cond_1a
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    if-eq v1, v4, :cond_25

    .line 769
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverDetail:I

    .line 770
    if-eq v1, v5, :cond_25

    .line 771
    const/4 v2, 0x1

    .line 772
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    .line 775
    :cond_25
    return v2
.end method

.method doLongPress()Z
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 828
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v6, :cond_8

    move v6, v7

    .line 849
    :goto_7
    return v6

    .line 830
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 833
    .local v0, currentTime:J
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v6, v9}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v4

    .line 834
    .local v4, selection:I
    iget-boolean v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v6, :cond_64

    const/4 v6, -0x1

    if-eq v4, v6, :cond_64

    .line 836
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

    .line 837
    .local v5, touchPosition:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 838
    .local v2, detailCoordinates:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/opengl/carousel/Card;

    iget-object v3, v6, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    .line 839
    .local v3, pos:[Lcom/google/android/opengl/common/Float2;
    aget-object v6, v3, v7

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->x:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 840
    aget-object v6, v3, v7

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->y:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 841
    aget-object v6, v3, v8

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->x:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 842
    aget-object v6, v3, v8

    iget v6, v6, Lcom/google/android/opengl/common/Float2;->y:F

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 843
    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v6, v4, v5, v2}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardLongPress(I[ILandroid/graphics/Rect;)V

    .line 844
    iput-boolean v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    move v6, v8

    .line 845
    goto :goto_7

    .line 847
    .end local v2           #detailCoordinates:Landroid/graphics/Rect;
    .end local v3           #pos:[Lcom/google/android/opengl/common/Float2;
    .end local v5           #touchPosition:[I
    :cond_64
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    move v6, v7

    .line 849
    goto :goto_7
.end method

.method public doMotion(FF)V
    .registers 19
    .parameter "x"
    .parameter "y"

    .prologue
    .line 853
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v9

    .line 854
    .local v9, highBias:F
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v11

    .line 856
    .local v11, lowBias:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 857
    .local v2, currentTime:J
    invoke-direct/range {p0 .. p2}, Lcom/google/android/opengl/carousel/CarouselScene;->dragFunction(FF)F

    move-result v6

    .line 858
    .local v6, deltaOmega:F
    move v5, v6

    .line 859
    .local v5, deltaBias:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v13, v13, Lcom/google/android/opengl/carousel/CarouselSetting;->mAntiJitter:Z

    if-eqz v13, :cond_3b

    .line 860
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-nez v13, :cond_3b

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3951b717

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3b

    .line 861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v13, v13, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    neg-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v14, v14, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    invoke-static {v6, v13, v14}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v5

    .line 865
    :cond_3b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    add-float/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    .line 866
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    const v14, 0x3ec90fdb

    sub-float v14, v11, v14

    const v15, 0x3ec90fdb

    add-float/2addr v15, v9

    invoke-static {v13, v14, v15}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    .line 868
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    invoke-static {v13, v11, v9}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/carousel/CarouselScene;->tiltOverscroll()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 871
    new-instance v4, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float v13, p1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    sub-float v14, p2, v14

    invoke-direct {v4, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 872
    .local v4, delta:Landroid/graphics/PointF;
    iget v13, v4, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v13, v14

    iget v14, v4, Landroid/graphics/PointF;->y:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v7, v13

    .line 873
    .local v7, distance:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionRadius:F

    cmpg-float v13, v7, v13

    if-gez v13, :cond_100

    const/4 v10, 0x1

    .line 874
    .local v10, inside:Z
    :goto_9c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    and-int/2addr v13, v10

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 877
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->deltaTimeInSeconds(J)F

    move-result v8

    .line 878
    .local v8, dt:F
    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-lez v13, :cond_f3

    .line 879
    div-float v13, v6, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v14, v14, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v14, v14, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    mul-float v12, v13, v14

    .line 880
    .local v12, v:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v13, v13, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    neg-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v14, v14, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    invoke-static {v12, v13, v14}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v12

    .line 881
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistory:[F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    rem-int/lit8 v14, v14, 0xa

    aput v12, v13, v14

    .line 882
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    .line 885
    .end local v12           #v:F
    :cond_f3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/carousel/CarouselScene;->computeAverageVelocityFromHistory()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 886
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 891
    return-void

    .line 873
    .end local v8           #dt:F
    .end local v10           #inside:Z
    :cond_100
    const/4 v10, 0x0

    goto :goto_9c
.end method

.method public doStart(FF)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 716
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 717
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchPosition:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 719
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->hitAngle(FF)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 720
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHitAngle:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    .line 726
    :goto_19
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectionVelocityThreshold:F

    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->isInMotion(F)Z

    move-result v1

    if-nez v1, :cond_5e

    move v1, v2

    :goto_22
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 728
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 729
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistory:[F

    aput v6, v1, v3

    .line 730
    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    .line 733
    iget-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mReleaseTime:J

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchTime:J

    .line 735
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTouchBias:F

    .line 737
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    .line 740
    new-instance v0, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float2;-><init>()V

    .line 741
    .local v0, point:Lcom/google/android/opengl/common/Float2;
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectDetailTexture(FFLcom/google/android/opengl/common/Float2;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectedDetail:I

    .line 743
    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 744
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mTiltAngle:F

    .line 745
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscrollBias:F

    .line 746
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 747
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->stopAutoscroll()V

    .line 748
    return-void

    .line 722
    .end local v0           #point:Lcom/google/android/opengl/common/Float2;
    :cond_5b
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastAngle:F

    goto :goto_19

    :cond_5e
    move v1, v3

    .line 726
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

    .line 788
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v4, :cond_8

    .line 821
    :goto_7
    return-void

    .line 790
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 792
    .local v0, currentTime:J
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mReleaseTime:J

    .line 793
    iput-boolean v9, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 794
    iget-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v4, :cond_43

    .line 795
    const/4 v3, -0x1

    .line 796
    .local v3, selection:I
    new-instance v2, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v2}, Lcom/google/android/opengl/common/Float2;-><init>()V

    .line 797
    .local v2, point:Lcom/google/android/opengl/common/Float2;
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->intersectDetailTexture(FFLcom/google/android/opengl/common/Float2;)I

    move-result v3

    if-eq v3, v5, :cond_34

    .line 799
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v5, v2, Lcom/google/android/opengl/common/Float2;->x:F

    float-to-int v5, v5

    iget v6, v2, Lcom/google/android/opengl/common/Float2;->y:F

    float-to-int v6, v6

    invoke-interface {v4, v3, v5, v6}, Lcom/google/android/opengl/carousel/CarouselCallback;->onDetailSelected(III)V

    .line 806
    :cond_2b
    :goto_2b
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 817
    .end local v2           #point:Lcom/google/android/opengl/common/Float2;
    .end local v3           #selection:I
    :cond_2d
    :goto_2d
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    .line 818
    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mLastTime:J

    .line 819
    iput-boolean v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsDragging:Z

    goto :goto_7

    .line 800
    .restart local v2       #point:Lcom/google/android/opengl/common/Float2;
    .restart local v3       #selection:I
    :cond_34
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->doSelection(FF)I

    move-result v3

    if-eq v3, v5, :cond_2b

    .line 803
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->sendAnimationFinished()V

    .line 804
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v4, v3}, Lcom/google/android/opengl/carousel/CarouselCallback;->onCardSelected(I)V

    goto :goto_2b

    .line 808
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

    .line 809
    iput v8, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityHistoryCount:I

    .line 811
    :cond_57
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->computeAverageVelocityFromHistory()F

    move-result v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 812
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    neg-float v5, v5

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    invoke-static {v4, v5, v6}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v4

    iput v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 813
    iget v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocityThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2d

    .line 814
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
    .line 618
    sub-long v4, p3, p1

    long-to-double v2, v4

    .line 619
    .local v2, timeElapsed:D
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-wide v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    long-to-double v4, v4

    div-double v0, v2, v4

    .line 620
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
    .line 1590
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

    .line 627
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v0

    .line 628
    .local v0, angle:F
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeOutLeftAngle:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_34

    .line 629
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/opengl/carousel/Card;->mFadeWithEmptyTexture:Z

    .line 630
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    sub-float v1, v0, v1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeOutLeftAngle:F

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 633
    :goto_33
    return v1

    .line 632
    :cond_34
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/opengl/carousel/Card;->mFadeWithEmptyTexture:Z

    move v1, v2

    .line 633
    goto :goto_33
.end method

.method public getFocusedItem()I
    .registers 2

    .prologue
    .line 1407
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mFocusedItem:I

    return v0
.end method

.method public getHoverCard()I
    .registers 2

    .prologue
    .line 1415
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mHoverCard:I

    return v0
.end method

.method public getHoverDetail()I
    .registers 2

    .prologue
    .line 1419
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
    .line 1208
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v7

    .line 1209
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    invoke-direct {p0, v0, p3}, Lcom/google/android/opengl/carousel/CarouselScene;->getSwayAngleForVelocity(FZ)F

    move-result v8

    .line 1210
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1211
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

    .line 1212
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    invoke-direct {p0, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getVerticalOffsetForCard(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1214
    invoke-direct {p0, p2}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardTiltAngle(I)F

    move-result v0

    .line 1215
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardRotation:F

    add-float/2addr v1, v8

    add-float/2addr v0, v1

    .line 1216
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    if-nez v1, :cond_3d

    .line 1217
    sub-float/2addr v0, v7

    .line 1220
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

    .line 1221
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSpecialRotationInPortrait:Z

    if-eqz v0, :cond_6f

    .line 1224
    const/4 v1, 0x0

    const/high16 v2, -0x3eb0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1225
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1228
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

    .line 1229
    const/4 v0, 0x0

    .line 1230
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimatedSelection:I

    if-ne p2, v1, :cond_b4

    .line 1231
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    if-eqz v1, :cond_b4

    .line 1232
    invoke-static {}, Lcom/google/android/opengl/common/Float3;->getUnit()Lcom/google/android/opengl/common/Float3;

    move-result-object v1

    .line 1233
    invoke-direct {p0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedScaleForSelected(Lcom/google/android/opengl/common/Float3;)Z

    move-result v0

    .line 1234
    const/4 v2, 0x0

    iget v3, v1, Lcom/google/android/opengl/common/Float3;->x:F

    iget v4, v1, Lcom/google/android/opengl/common/Float3;->y:F

    iget v1, v1, Lcom/google/android/opengl/common/Float3;->z:F

    invoke-static {p1, v2, v3, v4, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move v6, v0

    .line 1238
    :goto_9f
    if-eqz p4, :cond_b3

    .line 1239
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

    .line 1242
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
    .line 1453
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 1456
    :cond_8
    :goto_8
    return-void

    .line 1455
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
    .line 1459
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

    .line 1460
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/Card;->invalidateTexture(I)V

    goto :goto_6

    .line 1462
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    :cond_17
    return-void
.end method

.method invalidateTexture(IZ)V
    .registers 5
    .parameter "n"
    .parameter "eraseCurrent"

    .prologue
    .line 1440
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 1443
    :cond_8
    :goto_8
    return-void

    .line 1442
    :cond_9
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->invalidateTexture(I)V

    goto :goto_8
.end method

.method public invalidateTextures(Z)V
    .registers 5
    .parameter "eraseCurrent"

    .prologue
    .line 1446
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

    .line 1447
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/Card;->invalidateTexture(I)V

    goto :goto_6

    .line 1449
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
    .line 1434
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

    .line 1435
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->updateCarouselRotationAngle()V

    .line 1436
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

    .line 1483
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mBias:F

    invoke-direct {p0, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->radiansToCarouselRotationAngle(F)F

    move-result v0

    .line 1485
    .local v0, actualStart:F
    cmpl-float v3, p4, v5

    if-lez v3, :cond_18

    .line 1487
    cmpg-float v3, v0, p1

    if-gtz v3, :cond_4f

    .line 1488
    sub-float v3, p1, p4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_18

    .line 1489
    sub-float v0, p1, p4

    .line 1499
    :cond_18
    :goto_18
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAnimating:Z

    .line 1500
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mIsAutoScrolling:Z

    .line 1501
    int-to-double v3, p2

    iput-wide v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollDuration:D

    .line 1502
    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollInterpolationMode:I

    .line 1503
    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselScene;->carouselRotationAngleToRadians(F)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    .line 1504
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->carouselRotationAngleToRadians(F)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    .line 1507
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->maximumBias()F

    move-result v1

    .line 1508
    .local v1, highBias:F
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->minimumBias()F

    move-result v2

    .line 1509
    .local v2, lowBias:F
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    invoke-static {v3, v2, v1}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartAngle:F

    .line 1510
    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    invoke-static {v3, v2, v1}, Lcom/google/android/opengl/carousel/GL2Helper;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStopAngle:F

    .line 1513
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mAutoscrollStartTime:D

    .line 1514
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mOverscroll:Z

    .line 1515
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mVelocity:F

    .line 1516
    return-void

    .line 1493
    .end local v1           #highBias:F
    .end local v2           #lowBias:F
    :cond_4f
    add-float v3, p1, p4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_18

    .line 1494
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

    if-lt p1, v1, :cond_a

    .line 494
    :cond_9
    :goto_9
    return-void

    .line 481
    :cond_a
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 482
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    if-nez p6, :cond_18

    .line 483
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    goto :goto_9

    .line 487
    :cond_18
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

    goto :goto_9
.end method

.method public setFocusedItem(I)V
    .registers 2
    .parameter "focusedItem"

    .prologue
    .line 1411
    iput p1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mFocusedItem:I

    .line 1412
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

    .line 517
    :cond_35
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/Card;->mClientMatrix:[F

    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
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

    if-lt p1, v1, :cond_a

    .line 453
    :cond_9
    :goto_9
    return-void

    .line 444
    :cond_a
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 445
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    if-nez p2, :cond_17

    .line 446
    iput v2, v0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    goto :goto_9

    .line 450
    :cond_17
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

    goto :goto_9
.end method

.method shuffle([I)V
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1349
    array-length v4, p1

    .line 1350
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselScene;->getCardCount()I

    move-result v5

    .line 1354
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    move v2, v3

    .line 1358
    :goto_11
    if-ge v2, v4, :cond_5e

    .line 1359
    aget v0, p1, v2

    .line 1361
    if-ge v0, v5, :cond_19

    if-ge v0, v1, :cond_41

    .line 1364
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

    .line 1365
    const-string v0, "comeFrom:+ "

    invoke-direct {p0, v0, p1}, Lcom/google/android/opengl/carousel/CarouselScene;->describeShuffle(Ljava/lang/String;[I)V

    move v0, v1

    .line 1370
    :cond_41
    if-ne v0, v1, :cond_4f

    .line 1371
    new-instance v0, Lcom/google/android/opengl/carousel/Card;

    invoke-direct {v0, p0, v2}, Lcom/google/android/opengl/carousel/Card;-><init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V

    .line 1378
    :goto_48
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 1373
    :cond_4f
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 1374
    iget v7, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    iput v7, v0, Lcom/google/android/opengl/carousel/Card;->mOldId:I

    .line 1375
    iput v2, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    goto :goto_48

    .line 1382
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

    .line 1383
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 1384
    invoke-virtual {v0, v3}, Lcom/google/android/opengl/carousel/Card;->initCardTexture(Z)V

    goto :goto_64

    .line 1387
    :cond_7a
    iput-object v6, p0, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    .line 1388
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
