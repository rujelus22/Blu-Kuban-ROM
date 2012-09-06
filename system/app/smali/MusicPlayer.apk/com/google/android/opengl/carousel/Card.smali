.class public Lcom/google/android/opengl/carousel/Card;
.super Ljava/lang/Object;
.source "Card.java"


# static fields
.field private static FADE_THRESHOLD:F

.field public static final mVerticesData:[F

.field private static sGlowMatrix:[F

.field private static sMatrix:[F

.field private static sModelMatrix:[F

.field private static sOneVertex:[F

.field private static sOtherScreenLeft:[F

.field private static sOtherScreenRight:[F

.field private static sScreenCoord:[F

.field private static sScreenCoordLeft:[F

.field private static sScreenCoordRight:[F

.field private static sVertices:[F


# instance fields
.field public mClientMatrix:[F

.field public mColor:[F

.field public mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

.field public mDetailTextureOffset:Lcom/google/android/opengl/common/Float2;

.field public mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

.field public mDetailTextureState:I

.field public mDetailVisible:Z

.field mFadeWithEmptyTexture:Z

.field public mId:I

.field public mMMatrix:[F

.field private mMVPMatrix:[F

.field public mOldId:I

.field public mPrefetchTexture:Z

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mScene:Lcom/google/android/opengl/carousel/CarouselScene;

.field private mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field public mTextureState:I

.field public mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

.field public mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0x10

    const/4 v1, 0x4

    .line 29
    new-array v0, v3, [F

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    .line 68
    const v0, 0x3f333333

    sput v0, Lcom/google/android/opengl/carousel/Card;->FADE_THRESHOLD:F

    .line 75
    new-array v0, v2, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sMatrix:[F

    .line 76
    new-array v0, v2, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sModelMatrix:[F

    .line 77
    new-array v0, v3, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    .line 78
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sScreenCoord:[F

    .line 79
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sScreenCoordLeft:[F

    .line 80
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sScreenCoordRight:[F

    .line 81
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sOtherScreenLeft:[F

    .line 82
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sOtherScreenRight:[F

    .line 83
    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    .line 84
    new-array v0, v2, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    return-void

    .line 29
    :array_3a
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
.end method

.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselScene;I)V
    .registers 10
    .parameter "carousel"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/16 v3, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    .line 39
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mClientMatrix:[F

    .line 40
    iput-boolean v6, p0, Lcom/google/android/opengl/carousel/Card;->mVisible:Z

    .line 42
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    .line 43
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/Card;->mPrefetchTexture:Z

    .line 44
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/opengl/carousel/Card;->mOldId:I

    .line 46
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mColor:[F

    .line 56
    new-instance v1, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v1}, Lcom/google/android/opengl/common/Float2;-><init>()V

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/common/Float2;

    .line 58
    new-instance v1, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v1}, Lcom/google/android/opengl/common/Float2;-><init>()V

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    .line 61
    new-array v1, v5, [Lcom/google/android/opengl/common/Float2;

    new-instance v2, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v2}, Lcom/google/android/opengl/common/Float2;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/google/android/opengl/common/Float2;

    invoke-direct {v2}, Lcom/google/android/opengl/common/Float2;-><init>()V

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    .line 70
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    .line 72
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/Card;->mFadeWithEmptyTexture:Z

    .line 87
    iput-object p1, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 88
    iget-object v1, p1, Lcom/google/android/opengl/carousel/CarouselScene;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 89
    iget-object v1, p1, Lcom/google/android/opengl/carousel/CarouselScene;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 90
    iput p2, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    .line 91
    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultCardMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mClientMatrix:[F

    iget-object v3, p0, Lcom/google/android/opengl/carousel/Card;->mClientMatrix:[F

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-array v1, v5, [Lcom/google/android/opengl/carousel/RequestableTexture;

    iput-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_61
    if-ge v0, v5, :cond_6f

    .line 96
    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    new-instance v2, Lcom/google/android/opengl/carousel/RequestableTexture;

    invoke-direct {v2}, Lcom/google/android/opengl/carousel/RequestableTexture;-><init>()V

    aput-object v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 98
    :cond_6f
    return-void
.end method

.method private bindFadingTexture()V
    .registers 3

    .prologue
    const/16 v1, 0xde1

    .line 203
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/Card;->mFadeWithEmptyTexture:Z

    if-eqz v0, :cond_10

    .line 204
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mEmptyId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 208
    :goto_f
    return-void

    .line 206
    :cond_10
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_f
.end method

.method private drawRuler([F)V
    .registers 22
    .parameter "screenCoord"

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v14, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    .line 431
    .local v14, detailTextureAlignment:I
    const/high16 v19, 0x40a0

    .line 433
    .local v19, yPadding:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 438
    .local v16, lineWidth:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mMusicPortraitOfLabel:Z

    if-eqz v1, :cond_8f

    .line 439
    const/4 v1, 0x1

    aget v1, p1, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    add-float v18, v1, v4

    .line 440
    .local v18, rulerTop:F
    const/4 v1, 0x1

    aget v17, p1, v1

    .line 448
    .local v17, rulerBottom:F
    :goto_2b
    const/high16 v1, 0x3f00

    mul-float v15, v16, v1

    .line 449
    .local v15, halfWidth:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v1, v1, Lcom/google/android/opengl/common/Float2;->x:F

    const/4 v4, 0x0

    aget v4, p1, v4

    add-float/2addr v1, v4

    sub-float v2, v1, v15

    .line 450
    .local v2, x0:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v1, v1, Lcom/google/android/opengl/common/Float2;->x:F

    const/4 v4, 0x0

    aget v4, p1, v4

    add-float/2addr v1, v4

    add-float v5, v1, v15

    .line 451
    .local v5, x1:F
    add-float v3, v17, v19

    .line 452
    .local v3, y0:F
    sub-float v1, v18, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v4, v4, Lcom/google/android/opengl/common/Float2;->y:F

    sub-float v9, v1, v4

    .line 454
    .local v9, y1:F
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v1, v4, :cond_a6

    .line 456
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 463
    :goto_74
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v6, 0x2

    aget v7, p1, v6

    const/4 v6, 0x2

    aget v10, p1, v6

    const/4 v6, 0x2

    aget v13, p1, v6

    move v6, v3

    move v8, v5

    move v11, v2

    move v12, v9

    invoke-static/range {v1 .. v13}, Lcom/google/android/opengl/carousel/GL2Helper;->setVector12f([FFFFFFFFFFFFF)V

    .line 466
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z

    .line 467
    return-void

    .line 441
    .end local v2           #x0:F
    .end local v3           #y0:F
    .end local v5           #x1:F
    .end local v9           #y1:F
    .end local v15           #halfWidth:F
    .end local v17           #rulerBottom:F
    .end local v18           #rulerTop:F
    :cond_8f
    and-int/lit8 v1, v14, 0x10

    if-lez v1, :cond_99

    .line 442
    const/4 v1, 0x1

    aget v18, p1, v1

    .line 443
    .restart local v18       #rulerTop:F
    const/16 v17, 0x0

    .restart local v17       #rulerBottom:F
    goto :goto_2b

    .line 445
    .end local v17           #rulerBottom:F
    .end local v18           #rulerTop:F
    :cond_99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v0, v1

    move/from16 v18, v0

    .line 446
    .restart local v18       #rulerTop:F
    const/4 v1, 0x1

    aget v17, p1, v1

    .restart local v17       #rulerBottom:F
    goto :goto_2b

    .line 458
    .restart local v2       #x0:F
    .restart local v3       #y0:F
    .restart local v5       #x1:F
    .restart local v9       #y1:F
    .restart local v15       #halfWidth:F
    :cond_a6
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 459
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 460
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v4, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_74
.end method

.method private getBlendedAlpha(F)F
    .registers 10
    .parameter "animatedAlpha"

    .prologue
    const/high16 v7, 0x3f80

    .line 407
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 409
    .local v3, startDetailFadeAngle:F
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselScene;->mDetailFadeRate:F

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselScene;->mWedgeAngle:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 411
    .local v1, endDetailFadeAngle:F
    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v5, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/google/android/opengl/carousel/CarouselScene;->cardAngle(F)F

    move-result v4

    sub-float v4, v1, v4

    sub-float v5, v1, v3

    div-float v2, v4, v5

    .line 414
    .local v2, positionAlpha:F
    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 415
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 417
    mul-float v4, p1, v2

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v6, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v5, v6}, Lcom/google/android/opengl/carousel/CarouselScene;->getFadeOutLeftAlpha(I)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 420
    .local v0, blendedAlpha:F
    return v0
.end method

.method private lowestCorner()F
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 115
    sget-object v0, Lcom/google/android/opengl/carousel/Card;->sMatrix:[F

    .line 116
    .local v0, matrix:[F
    iget-object v3, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    sget-object v4, Lcom/google/android/opengl/carousel/Card;->sModelMatrix:[F

    iget v5, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {v3, v4, v5, v1, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getMatrixForCard([FIZZ)Z

    .line 117
    iget-object v3, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    sget-object v4, Lcom/google/android/opengl/carousel/Card;->sModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 118
    sget-object v2, Lcom/google/android/opengl/carousel/Card;->sScreenCoordLeft:[F

    .line 119
    .local v2, screenCoordLeft:[F
    sget-object v10, Lcom/google/android/opengl/carousel/Card;->sScreenCoordRight:[F

    .line 120
    .local v10, screenCoordRight:[F
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v6

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 121
    invoke-virtual {p0, v12}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v7

    move-object v3, v10

    move v4, v1

    move-object v5, v0

    move v6, v1

    move v8, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 122
    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v11, v1

    .line 123
    .local v11, width:F
    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v9, v1

    .line 124
    .local v9, height:F
    invoke-static {v2, v11, v9}, Lcom/google/android/opengl/carousel/GL2Helper;->convertNormalizedToPixelCoordinates([FFF)Z

    .line 125
    invoke-static {v10, v11, v9}, Lcom/google/android/opengl/carousel/GL2Helper;->convertNormalizedToPixelCoordinates([FFF)Z

    .line 126
    aget v1, v2, v12

    aget v3, v10, v12

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4e

    .line 127
    aget v1, v2, v12

    .line 129
    :goto_4d
    return v1

    :cond_4e
    aget v1, v10, v12

    goto :goto_4d
.end method

.method private maxMixAndFade()F
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->getMix0()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getMix1()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getFade0()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v2}, Lcom/google/android/opengl/carousel/CarouselScene;->getFade1()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private removeAllTextures(Z)V
    .registers 5
    .parameter "clientInvalidate"

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/RequestableTexture;->release()V

    .line 508
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/RequestableTexture;->release()V

    .line 510
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v0, :cond_17

    .line 526
    :cond_16
    :goto_16
    return-void

    .line 512
    :cond_17
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    if-eqz v0, :cond_28

    .line 513
    if-eqz p1, :cond_26

    .line 514
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onInvalidateTexture(I)V

    .line 516
    :cond_26
    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 519
    :cond_28
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    if-eqz v0, :cond_16

    .line 520
    if-eqz p1, :cond_37

    .line 521
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onInvalidateDetailTexture(I)V

    .line 524
    :cond_37
    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    goto :goto_16
.end method


# virtual methods
.method public draw(F)V
    .registers 10
    .parameter "fadeAmount"

    .prologue
    const v5, 0x84c1

    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v1, 0x0

    .line 140
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_99

    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/RequestableTexture;->isTextureIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_99

    const/4 v6, 0x1

    .line 143
    .local v6, loaded:Z
    :goto_19
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->isMixAndFadeEnabled()Z

    move-result v7

    .line 145
    .local v7, mixAndFade:Z
    if-eqz v7, :cond_a0

    invoke-direct {p0}, Lcom/google/android/opengl/carousel/Card;->lowestCorner()F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/opengl/carousel/Card;->maxMixAndFade()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a0

    .line 146
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiRezProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 148
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 149
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/Card;->bindFadingTexture()V

    .line 150
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 151
    if-eqz v6, :cond_9c

    sget v0, Lcom/google/android/opengl/carousel/Card;->FADE_THRESHOLD:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9c

    .line 152
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->getTextureId()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 156
    :goto_4e
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setFadeAmount(F)V

    .line 157
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v2}, Lcom/google/android/opengl/carousel/CarouselScene;->getMix0()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselScene;->getMix1()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v4}, Lcom/google/android/opengl/carousel/CarouselScene;->getFade0()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v5}, Lcom/google/android/opengl/carousel/CarouselScene;->getFade1()F

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMixAndFade(FFFF)V

    .line 187
    :goto_70
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    iget-object v4, p0, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 188
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 189
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    if-eqz v0, :cond_10f

    .line 190
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/ICardRenderer;->draw(I)V

    .line 195
    :goto_93
    const-string v0, "Card.draw"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 196
    return-void

    .end local v6           #loaded:Z
    .end local v7           #mixAndFade:Z
    :cond_99
    move v6, v1

    .line 140
    goto/16 :goto_19

    .line 154
    .restart local v6       #loaded:Z
    .restart local v7       #mixAndFade:Z
    :cond_9c
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/Card;->bindFadingTexture()V

    goto :goto_4e

    .line 160
    :cond_a0
    if-nez v6, :cond_c0

    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/RequestableTexture;->isTextureIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 162
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 163
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->getTextureId()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_70

    .line 165
    :cond_c0
    sget v0, Lcom/google/android/opengl/carousel/Card;->FADE_THRESHOLD:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_cf

    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_cf

    if-nez v6, :cond_ef

    .line 167
    :cond_cf
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 168
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 171
    if-eqz v6, :cond_eb

    sget v0, Lcom/google/android/opengl/carousel/Card;->FADE_THRESHOLD:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_eb

    .line 172
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->getTextureId()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_70

    .line 174
    :cond_eb
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/Card;->bindFadingTexture()V

    goto :goto_70

    .line 178
    :cond_ef
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 179
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/Card;->bindFadingTexture()V

    .line 181
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->getTextureId()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 183
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setFadeAmount(F)V

    goto/16 :goto_70

    .line 192
    :cond_10f
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_93
.end method

.method public drawDetails(J[F)Z
    .registers 39
    .parameter "currentTime"
    .parameter "projection"

    .prologue
    .line 241
    const/16 v30, 0x0

    .line 242
    .local v30, stillAnimating:Z
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    .line 245
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/google/android/opengl/carousel/RequestableTexture;->isTextureIdAllocated()Z

    move-result v7

    if-nez v7, :cond_16

    .line 246
    const/4 v7, 0x0

    .line 398
    :goto_15
    return v7

    .line 251
    :cond_16
    sget-object v2, Lcom/google/android/opengl/carousel/Card;->sMatrix:[F

    .line 252
    .local v2, matrix:[F
    monitor-enter v2

    .line 254
    :try_start_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    sget-object v10, Lcom/google/android/opengl/carousel/Card;->sModelMatrix:[F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v12, v13, v14}, Lcom/google/android/opengl/carousel/CarouselScene;->getMatrixForCard([FIZZ)Z

    .line 255
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v4, v7, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/opengl/carousel/Card;->sModelMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 258
    sget-object v29, Lcom/google/android/opengl/carousel/Card;->sScreenCoord:[F

    .line 260
    .local v29, screenCoord:[F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    move/from16 v23, v0

    .line 261
    .local v23, detailTextureAlignment:I
    and-int/lit8 v7, v23, 0x10

    if-lez v7, :cond_9b

    .line 262
    const/16 v25, 0x0

    .line 263
    .local v25, indexLeft:I
    const/16 v26, 0x1

    .line 269
    .local v26, indexRight:I
    :goto_48
    sget-object v3, Lcom/google/android/opengl/carousel/Card;->sScreenCoordLeft:[F

    .line 270
    .local v3, screenCoordLeft:[F
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 271
    sget-object v4, Lcom/google/android/opengl/carousel/Card;->sScreenCoordRight:[F

    .line 272
    .local v4, screenCoordRight:[F
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v8

    const/4 v9, 0x0

    move-object v6, v2

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 274
    const/4 v7, 0x3

    aget v7, v3, v7

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_7a

    const/4 v7, 0x3

    aget v7, v4, v7

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-nez v7, :cond_a0

    .line 276
    :cond_7a
    const-string v7, "Card"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad transform: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v7, 0x0

    monitor-exit v2

    goto/16 :goto_15

    .line 396
    .end local v3           #screenCoordLeft:[F
    .end local v4           #screenCoordRight:[F
    .end local v23           #detailTextureAlignment:I
    .end local v25           #indexLeft:I
    .end local v26           #indexRight:I
    .end local v29           #screenCoord:[F
    :catchall_98
    move-exception v7

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_19 .. :try_end_9a} :catchall_98

    throw v7

    .line 265
    .restart local v23       #detailTextureAlignment:I
    .restart local v29       #screenCoord:[F
    :cond_9b
    const/16 v25, 0x3

    .line 266
    .restart local v25       #indexLeft:I
    const/16 v26, 0x2

    .restart local v26       #indexRight:I
    goto :goto_48

    .line 280
    .restart local v3       #screenCoordLeft:[F
    .restart local v4       #screenCoordRight:[F
    :cond_a0
    and-int/lit8 v7, v23, 0x1

    if-lez v7, :cond_e6

    .line 282
    and-int/lit8 v7, v23, 0x10

    if-lez v7, :cond_18d

    .line 283
    const/16 v25, 0x3

    .line 284
    const/16 v26, 0x2

    .line 289
    :goto_ac
    :try_start_ac
    sget-object v5, Lcom/google/android/opengl/carousel/Card;->sOtherScreenLeft:[F

    .line 290
    .local v5, otherScreenLeft:[F
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v9

    const/4 v10, 0x0

    move-object v7, v2

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 291
    sget-object v6, Lcom/google/android/opengl/carousel/Card;->sOtherScreenRight:[F

    .line 292
    .local v6, otherScreenRight:[F
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getVertexCoord(I)[F

    move-result-object v10

    const/4 v11, 0x0

    move-object v8, v2

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 294
    const/4 v7, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x1

    aget v12, v3, v12

    const/4 v13, 0x1

    aget v13, v4, v13

    add-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v5, v13

    add-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v6, v13

    add-float/2addr v12, v13

    const/high16 v13, 0x4080

    div-float/2addr v12, v13

    aput v12, v3, v10

    aput v12, v4, v7

    .line 297
    .end local v5           #otherScreenLeft:[F
    .end local v6           #otherScreenRight:[F
    :cond_e6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-float v0, v7

    move/from16 v34, v0

    .line 298
    .local v34, width:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-float v0, v7

    move/from16 v24, v0

    .line 299
    .local v24, height:F
    move/from16 v0, v34

    move/from16 v1, v24

    invoke-static {v3, v0, v1}, Lcom/google/android/opengl/carousel/GL2Helper;->convertNormalizedToPixelCoordinates([FFF)Z

    .line 300
    move/from16 v0, v34

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Lcom/google/android/opengl/carousel/GL2Helper;->convertNormalizedToPixelCoordinates([FFF)Z

    .line 302
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/google/android/opengl/carousel/RequestableTexture;->width()I

    move-result v7

    int-to-float v0, v7

    move/from16 v33, v0

    .line 303
    .local v33, textureWidth:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/google/android/opengl/carousel/RequestableTexture;->height()I

    move-result v7

    int-to-float v0, v7

    move/from16 v31, v0

    .line 305
    .local v31, textureHeight:F
    move-object/from16 v29, v3

    .line 306
    and-int/lit8 v7, v23, 0x10

    if-lez v7, :cond_193

    .line 307
    const/4 v7, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v12, 0x1

    aget v12, v4, v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v29, v7

    .line 311
    :cond_135
    :goto_135
    move/from16 v0, v23

    and-int/lit16 v7, v0, 0x100

    if-lez v7, :cond_150

    .line 312
    const/4 v7, 0x0

    aget v10, v29, v7

    const/4 v12, 0x0

    aget v12, v4, v12

    const/4 v13, 0x0

    aget v13, v3, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float v13, v33, v13

    sub-float/2addr v12, v13

    add-float/2addr v10, v12

    aput v10, v29, v7

    .line 317
    :cond_150
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mMusicPortraitOfLabel:Z

    if-eqz v7, :cond_15f

    .line 318
    const v7, 0x3dcccccd

    invoke-static {v3, v4, v7}, Lcom/google/android/opengl/carousel/GL2Helper;->proportionPoint([F[FF)[F

    move-result-object v29

    .line 323
    :cond_15f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    const/4 v12, 0x1

    aget-object v10, v10, v12

    invoke-virtual {v10}, Lcom/google/android/opengl/carousel/RequestableTexture;->getChangeTime()J

    move-result-wide v12

    move-wide/from16 v0, p1

    invoke-virtual {v7, v12, v13, v0, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->getAnimatedAlpha(JJ)F

    move-result v20

    .line 325
    .local v20, animatedAlpha:F
    const/high16 v7, 0x3f80

    cmpg-float v7, v20, v7

    if-gez v7, :cond_17c

    .line 326
    const/16 v30, 0x1

    .line 329
    :cond_17c
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Card;->getBlendedAlpha(F)F

    move-result v21

    .line 330
    .local v21, blendedAlpha:F
    const/4 v7, 0x0

    cmpl-float v7, v21, v7

    if-nez v7, :cond_1aa

    .line 331
    const/4 v7, 0x0

    monitor-exit v2

    goto/16 :goto_15

    .line 286
    .end local v20           #animatedAlpha:F
    .end local v21           #blendedAlpha:F
    .end local v24           #height:F
    .end local v31           #textureHeight:F
    .end local v33           #textureWidth:F
    .end local v34           #width:F
    :cond_18d
    const/16 v25, 0x0

    .line 287
    const/16 v26, 0x1

    goto/16 :goto_ac

    .line 308
    .restart local v24       #height:F
    .restart local v31       #textureHeight:F
    .restart local v33       #textureWidth:F
    .restart local v34       #width:F
    :cond_193
    and-int/lit8 v7, v23, 0x1

    if-lez v7, :cond_135

    .line 309
    const/4 v7, 0x1

    aget v10, v29, v7

    float-to-double v12, v10

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    sub-double v12, v12, v16

    double-to-float v10, v12

    aput v10, v29, v7

    goto :goto_135

    .line 334
    .restart local v20       #animatedAlpha:F
    .restart local v21       #blendedAlpha:F
    :cond_1aa
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailVisible:Z

    .line 336
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawRuler:Z

    if-eqz v7, :cond_1be

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/opengl/carousel/Card;->drawRuler([F)V

    .line 341
    :cond_1be
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/common/Float2;

    iget v0, v7, Lcom/google/android/opengl/common/Float2;->x:F

    move/from16 v27, v0

    .line 342
    .local v27, offx:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureOffset:Lcom/google/android/opengl/common/Float2;

    iget v7, v7, Lcom/google/android/opengl/common/Float2;->y:F

    neg-float v0, v7

    move/from16 v28, v0

    .line 344
    .local v28, offy:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mMusicPortraitOfLabel:Z

    if-eqz v7, :cond_2c7

    .line 345
    const/4 v7, 0x1

    aget v7, v29, v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    add-float v32, v7, v10

    .line 354
    .local v32, textureTop:F
    :goto_1e2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mMusicPortraitOfLabel:Z

    if-eqz v7, :cond_2d4

    .line 355
    const/4 v7, 0x0

    aget v7, v29, v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v10, v10, Lcom/google/android/opengl/common/Float2;->x:F

    sub-float/2addr v7, v10

    sub-float v7, v7, v27

    sub-float v8, v7, v33

    .line 356
    .local v8, x0:F
    const/4 v7, 0x1

    aget v7, v29, v7

    add-float v7, v7, v28

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v10, v10, Lcom/google/android/opengl/common/Float2;->y:F

    sub-float/2addr v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v10, v10, Lcom/google/android/opengl/carousel/CarouselSetting;->mPortriatRulerHeight:F

    add-float/2addr v7, v10

    sub-float v9, v7, v31

    .line 363
    .local v9, y0:F
    :goto_20d
    add-float v11, v8, v33

    .line 364
    .local v11, x1:F
    add-float v15, v9, v31

    .line 366
    .local v15, y1:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    const/4 v10, 0x0

    aget-object v7, v7, v10

    iput v8, v7, Lcom/google/android/opengl/common/Float2;->x:F

    .line 367
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    const/4 v10, 0x0

    aget-object v7, v7, v10

    sub-float v10, v24, v15

    iput v10, v7, Lcom/google/android/opengl/common/Float2;->y:F

    .line 368
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    const/4 v10, 0x1

    aget-object v7, v7, v10

    iput v11, v7, Lcom/google/android/opengl/common/Float2;->x:F

    .line 369
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailTexturePosition:[Lcom/google/android/opengl/common/Float2;

    const/4 v10, 0x1

    aget-object v7, v7, v10

    sub-float v10, v24, v9

    iput v10, v7, Lcom/google/android/opengl/common/Float2;->y:F

    .line 371
    sget-object v7, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    const/4 v10, 0x2

    aget v10, v29, v10

    const/4 v12, 0x2

    aget v13, v29, v12

    const/4 v12, 0x2

    aget v16, v29, v12

    const/4 v12, 0x2

    aget v19, v29, v12

    move v12, v9

    move v14, v11

    move/from16 v17, v8

    move/from16 v18, v15

    invoke-static/range {v7 .. v19}, Lcom/google/android/opengl/carousel/GL2Helper;->setVector12f([FFFFFFFFFFFFF)V

    .line 375
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mHighlightDetail:Z

    if-eqz v7, :cond_29d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselScene;->mEnableSelection:Z

    if-eqz v7, :cond_29d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget v7, v7, Lcom/google/android/opengl/carousel/CarouselScene;->mSelectedDetail:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    if-ne v7, v10, :cond_29d

    .line 377
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mColorProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v7, v10}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 379
    sget-object v22, Lcom/google/android/opengl/carousel/CarouselSetting;->LABEL_HIGHLIGHT_COLOR:Lcom/google/android/opengl/common/Float4;

    .line 380
    .local v22, color:Lcom/google/android/opengl/common/Float4;
    const/4 v7, 0x2

    move-object/from16 v0, v22

    iget v10, v0, Lcom/google/android/opengl/common/Float4;->x:F

    move-object/from16 v0, v22

    iget v12, v0, Lcom/google/android/opengl/common/Float4;->y:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/google/android/opengl/common/Float4;->z:F

    move-object/from16 v0, v22

    iget v14, v0, Lcom/google/android/opengl/common/Float4;->w:F

    invoke-static {v7, v10, v12, v13, v14}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 381
    sget-object v7, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    invoke-static {v7}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z

    .line 384
    .end local v22           #color:Lcom/google/android/opengl/common/Float4;
    :cond_29d
    const v7, 0x3f7d70a4

    cmpl-float v7, v21, v7

    if-lez v7, :cond_2f7

    .line 385
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v7, v10}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 392
    :goto_2b1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/carousel/Card;->setGlDetailTexture()V

    .line 395
    sget-object v7, Lcom/google/android/opengl/carousel/Card;->sVertices:[F

    invoke-static {v7}, Lcom/google/android/opengl/carousel/GL2Helper;->drawQuad([F)Z

    .line 396
    monitor-exit v2

    move/from16 v7, v30

    .line 398
    goto/16 :goto_15

    .line 346
    .end local v8           #x0:F
    .end local v9           #y0:F
    .end local v11           #x1:F
    .end local v15           #y1:F
    .end local v32           #textureTop:F
    :cond_2c7
    and-int/lit8 v7, v23, 0x2

    if-lez v7, :cond_2cf

    .line 347
    move/from16 v32, v24

    .restart local v32       #textureTop:F
    goto/16 :goto_1e2

    .line 349
    .end local v32           #textureTop:F
    :cond_2cf
    const/4 v7, 0x1

    aget v32, v29, v7

    .restart local v32       #textureTop:F
    goto/16 :goto_1e2

    .line 359
    :cond_2d4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v7, v7, Lcom/google/android/opengl/common/Float2;->x:F

    const/4 v10, 0x0

    aget v10, v29, v10

    add-float/2addr v7, v10

    add-float v8, v7, v27

    .line 360
    .restart local v8       #x0:F
    add-float v7, v32, v28

    sub-float v7, v7, v31

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v10, v10, Lcom/google/android/opengl/common/Float2;->y:F

    sub-float v9, v7, v10

    .line 361
    .restart local v9       #y0:F
    add-float v7, v32, v28

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mDetailLineOffset:Lcom/google/android/opengl/common/Float2;

    iget v10, v10, Lcom/google/android/opengl/common/Float2;->y:F

    sub-float/2addr v7, v10

    goto/16 :goto_20d

    .line 387
    .restart local v11       #x1:F
    .restart local v15       #y1:F
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v10, v10, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {v7, v10}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setFadeAmount(F)V
    :try_end_30d
    .catchall {:try_start_ac .. :try_end_30d} :catchall_98

    goto :goto_2b1
.end method

.method public drawGlowing(F)V
    .registers 9
    .parameter "glowAlpha"

    .prologue
    const/4 v1, 0x0

    .line 214
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mGlowingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f

    .line 232
    :cond_e
    :goto_e
    return-void

    .line 216
    :cond_f
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 217
    const/16 v0, 0xde1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselTexture;->mGlowingId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 219
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sput-object v0, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    .line 220
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v6, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardGlowScale:F

    .line 221
    .local v6, scale:F
    sget-object v0, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v6, v6, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 222
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, v2, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    sget-object v4, Lcom/google/android/opengl/carousel/Card;->sGlowMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 223
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v2, p0, Lcom/google/android/opengl/carousel/Card;->mMVPMatrix:[F

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setMVPUniform([F)V

    .line 225
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    if-eqz v0, :cond_60

    .line 226
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCardRenderer:Lcom/google/android/opengl/carousel/ICardRenderer;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/ICardRenderer;->drawGlowingBorder(I)V

    .line 231
    :goto_5a
    const-string v0, "Card.drawGlowing"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    goto :goto_e

    .line 228
    :cond_60
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_5a
.end method

.method public getDetailTextureId()I
    .registers 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/RequestableTexture;->getTextureId()I

    move-result v0

    return v0
.end method

.method public getTextureId()I
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextures:[Lcom/google/android/opengl/carousel/RequestableTexture;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/RequestableTexture;->getTextureId()I

    move-result v0

    return v0
.end method

.method public getVertexCoord(I)[F
    .registers 7
    .parameter "vertex"

    .prologue
    const/4 v4, 0x3

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_12

    .line 103
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    sget-object v2, Lcom/google/android/opengl/carousel/Card;->mVerticesData:[F

    mul-int/lit8 v3, p1, 0x3

    add-int/2addr v3, v0

    aget v2, v2, v3

    aput v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_12
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v4

    .line 107
    sget-object v1, Lcom/google/android/opengl/carousel/Card;->sOneVertex:[F

    return-object v1
.end method

.method public initCardTexture()V
    .registers 2

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/Card;->initCardTexture(Z)V

    .line 472
    return-void
.end method

.method public initCardTexture(Z)V
    .registers 2
    .parameter "clientInvalidate"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/google/android/opengl/carousel/Card;->removeAllTextures(Z)V

    .line 481
    return-void
.end method

.method public invalidateTexture(I)V
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 529
    packed-switch p1, :pswitch_data_c

    .line 537
    :goto_4
    return-void

    .line 531
    :pswitch_5
    iput v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    goto :goto_4

    .line 534
    :pswitch_8
    iput v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    goto :goto_4

    .line 529
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public requestTexture(Z)V
    .registers 5
    .parameter "requestLargeTexture"

    .prologue
    const/4 v2, 0x1

    .line 487
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-nez v0, :cond_8

    .line 499
    :cond_7
    :goto_7
    return-void

    .line 490
    :cond_8
    if-eqz p1, :cond_19

    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    if-nez v0, :cond_19

    .line 491
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onRequestTexture(I)V

    .line 492
    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mTextureState:I

    .line 495
    :cond_19
    iget v0, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    if-nez v0, :cond_7

    .line 496
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    iget v1, p0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-interface {v0, v1}, Lcom/google/android/opengl/carousel/CarouselCallback;->onRequestDetailTexture(I)V

    .line 497
    iput v2, p0, Lcom/google/android/opengl/carousel/Card;->mDetailTextureState:I

    goto :goto_7
.end method

.method setGlDetailTexture()V
    .registers 5

    .prologue
    const v3, 0x84c0

    const/16 v2, 0xde1

    .line 543
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v0, v1, :cond_1a

    .line 544
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 545
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->getDetailTextureId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 552
    :goto_19
    return-void

    .line 547
    :cond_1a
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 548
    iget-object v0, p0, Lcom/google/android/opengl/carousel/Card;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 549
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 550
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/Card;->getDetailTextureId()I

    move-result v0

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_19
.end method
