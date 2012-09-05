.class Lcom/google/android/opengl/carousel/CarouselSetting;
.super Ljava/lang/Object;
.source "CarouselSetting.java"


# static fields
.field static final DEFAULT_AT:[F

.field static final DEFAULT_AT_PORTRAIT:[F

.field static final DEFAULT_EYE:[F

.field static final DEFAULT_EYE_PORTRAIT:[F

.field static final DEFAULT_UP:[F

.field static final DEFAULT_UP_PORTRAIT:[F

.field static final LABEL_HIGHLIGHT_COLOR:Lcom/google/android/opengl/common/Float4;

.field static TRAJECTORY_X_OFFSET:I


# instance fields
.field private final DEFAULT_FRICTION_COEFFICIENT:F

.field private final DEFAULT_SWAY_SENSITIVITY:F

.field mAccelerationFactor:F

.field mAccelerationRatio:F

.field mAntiJitter:Z

.field mAt:[F

.field mBackgroundTransitionDuration:J

.field mCardFaceTangent:Z

.field mCardGlowScale:F

.field mCardRotation:F

.field mCardXYScale:Lcom/google/android/opengl/common/Float2;

.field mDefaultBitmap:Landroid/graphics/Bitmap;

.field mDefaultCardMatrix:[F

.field mDefaultLineBitmap:Landroid/graphics/Bitmap;

.field mDetailAlignment:I

.field mDetailLineBitmap:Landroid/graphics/Bitmap;

.field mDetailLoadingBitmap:Landroid/graphics/Bitmap;

.field mDividAngle:F

.field mDpadHorizontal:Z

.field mDpadSmoothScrollInterpolationMode:I

.field mDpadSmoothScrollMaxArc:F

.field mDpadSmoothScrollTime:I

.field mDragFactor:F

.field mDragModel:I

.field mDrawCardsWithBlending:Z

.field mDrawDetailBelowCard:Z

.field mDrawRuler:Z

.field mEmptyBitmap:Landroid/graphics/Bitmap;

.field mEnableBoostArea:Z

.field mEye:[F

.field mFadeInDuration:J

.field mFadeOutLeftAngle:F

.field mFillDirection:I

.field mFirstCardTop:Z

.field mFrictionCoeff:F

.field mGlowingBitmap:Landroid/graphics/Bitmap;

.field mHighlightDetail:Z

.field mInitialized:Z

.field mLoadingBitmap:Landroid/graphics/Bitmap;

.field mMaxDeltaBias:F

.field mMusicPortraitOfLabel:Z

.field mOverscrollMode:I

.field mPortriatRulerHeight:F

.field mPrefetchCardCount:I

.field mRadius:F

.field mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

.field mRezInCardCount:F

.field mRowCount:I

.field mRowSpacing:F

.field mScaleSelectedCard:Z

.field mShowDetails:Z

.field mSlotCount:I

.field mSpecialRotationInPortrait:Z

.field mStartAngle:F

.field mSwaySensitivity:F

.field mTextureVelocityThreshold:F

.field mTiltMaximumAngle:F

.field mTrajectoryAngle:F

.field mUp:[F

.field mVelocityUpLimit:F

.field mVisibleDetailCount:I

.field mVisibleSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const v2, 0x3f19999a

    const/4 v1, 0x3

    .line 20
    new-array v0, v1, [F

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE:[F

    .line 21
    new-array v0, v1, [F

    fill-array-data v0, :array_44

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT:[F

    .line 22
    new-array v0, v1, [F

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP:[F

    .line 24
    new-array v0, v1, [F

    fill-array-data v0, :array_58

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE_PORTRAIT:[F

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_62

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT_PORTRAIT:[F

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP_PORTRAIT:[F

    .line 52
    const/16 v0, 0x64

    sput v0, Lcom/google/android/opengl/carousel/CarouselSetting;->TRAJECTORY_X_OFFSET:I

    .line 98
    new-instance v0, Lcom/google/android/opengl/common/Float4;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/google/android/opengl/common/Float4;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->LABEL_HIGHLIGHT_COLOR:Lcom/google/android/opengl/common/Float4;

    return-void

    .line 20
    :array_3a
    .array-data 0x4
        0x67t 0x44t 0xa6t 0x41t
        0xbt 0x98t 0x10t 0x40t
        0x86t 0xdat 0x87t 0x41t
    .end array-data

    .line 21
    :array_44
    .array-data 0x4
        0xc3t 0x64t 0x69t 0x41t
        0xf6t 0xeet 0x29t 0xc0t
        0xe9t 0x2bt 0xbct 0xbft
    .end array-data

    .line 22
    :array_4e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 24
    :array_58
    .array-data 0x4
        0x86t 0xa9t 0xa0t 0x42t
        0x74t 0x98t 0x81t 0x40t
        0xe1t 0x8bt 0x83t 0x41t
    .end array-data

    .line 25
    :array_62
    .array-data 0x4
        0x45t 0xa7t 0x94t 0x42t
        0xa5t 0x2ct 0x51t 0xc1t
        0x0t 0x6ft 0x75t 0xc1t
    .end array-data

    .line 26
    :array_6c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_SWAY_SENSITIVITY:F

    .line 68
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_FRICTION_COEFFICIENT:F

    .line 76
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mOverscrollMode:I

    .line 82
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselSetting$1;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselSetting$1;-><init>(Lcom/google/android/opengl/carousel/CarouselSetting;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    .line 92
    const v0, 0x3f490fdb

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTiltMaximumAngle:F

    .line 100
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTextureVelocityThreshold:F

    .line 102
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    .line 104
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mMusicPortraitOfLabel:Z

    .line 107
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAntiJitter:Z

    .line 109
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    .line 111
    const v0, 0x3f828f5c

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardGlowScale:F

    .line 113
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    .line 115
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawCardsWithBlending:Z

    .line 117
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mScaleSelectedCard:Z

    .line 118
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    .line 119
    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    .line 120
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawDetailBelowCard:Z

    .line 121
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawRuler:Z

    .line 123
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    .line 124
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardRotation:F

    .line 130
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mHighlightDetail:Z

    .line 133
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 137
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowSpacing:F

    .line 139
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultCardMatrix:[F

    .line 141
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mShowDetails:Z

    .line 144
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFirstCardTop:Z

    .line 147
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    .line 151
    new-instance v0, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v0, v6, v6}, Lcom/google/android/opengl/common/Float2;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/common/Float2;

    .line 155
    iput-boolean v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    .line 157
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSwaySensitivity:F

    .line 158
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    .line 159
    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    .line 163
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 164
    const/16 v0, 0x38

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    .line 165
    const v0, 0x40c90fdb

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVelocityUpLimit:F

    .line 169
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    .line 174
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    .line 176
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_EYE:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    .line 177
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_AT:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    .line 178
    sget-object v0, Lcom/google/android/opengl/carousel/CarouselSetting;->DEFAULT_UP:[F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    .line 180
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    .line 181
    const-wide/16 v3, 0xfa

    iput-wide v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    .line 182
    const-wide/16 v3, 0xfa

    iput-wide v3, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mBackgroundTransitionDuration:J

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPrefetchCardCount:I

    .line 190
    const v0, 0x3c03126f

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    .line 192
    iput v6, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    .line 197
    iput v5, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeOutLeftAngle:F

    .line 200
    const/16 v0, 0x202

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    .line 207
    new-array v0, v2, [I

    aput v1, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEmptyBitmap:Landroid/graphics/Bitmap;

    .line 209
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEmptyBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 214
    new-array v3, v7, [I

    fill-array-data v3, :array_dc

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v4, v1

    move v5, v7

    move v6, v7

    move v7, v2

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    .line 217
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    .line 218
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEmptyBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    .line 235
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadHorizontal:Z

    .line 240
    const/16 v0, 0x190

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollTime:I

    .line 245
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollInterpolationMode:I

    .line 250
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollMaxArc:F

    return-void

    .line 214
    nop

    :array_dc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method recycleIfRequired(ILandroid/graphics/Bitmap;)Z
    .registers 4
    .parameter "type"
    .parameter "bitmap"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    if-eqz v0, :cond_6

    if-nez p2, :cond_8

    .line 260
    :cond_6
    const/4 v0, 0x0

    .line 263
    :goto_7
    return v0

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    invoke-interface {v0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;->recycle(ILandroid/graphics/Bitmap;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_7
.end method
