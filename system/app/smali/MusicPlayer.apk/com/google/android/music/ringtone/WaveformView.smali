.class public Lcom/google/android/music/ringtone/WaveformView;
.super Landroid/view/View;
.source "WaveformView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ringtone/WaveformView$ScaleListener;,
        Lcom/google/android/music/ringtone/WaveformView$WaveformListener;
    }
.end annotation


# static fields
.field private static HANDLE_TIMECODE_OFFSET_X:I


# instance fields
.field private mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;

.field private mBlackBgPaint:Landroid/graphics/Paint;

.field private mBorderLinePaint:Landroid/graphics/Paint;

.field private final mDensity:F

.field private mEnableZoom:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridPaint:Landroid/graphics/Paint;

.field private mHandleTimecodePaint:Landroid/graphics/Paint;

.field private mInitialized:Z

.field private mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

.field private mNoWaveBgPaint:Landroid/graphics/Paint;

.field private mOffset:I

.field private mPlaybackLinePaint:Landroid/graphics/Paint;

.field private mPlaybackPos:I

.field private mSampleRate:I

.field private mSamplesPerFrame:I

.field private mScaleCoverPaint:Landroid/graphics/Paint;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleLinePaint:Landroid/graphics/Paint;

.field private mSelectedLinePaint:Landroid/graphics/Paint;

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

.field private mTimecodePaint:Landroid/graphics/Paint;

.field private mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

.field private mUnselectedLinePaint:Landroid/graphics/Paint;

.field private mWaveLength:I

.field private mWaveValues:[D

.field private mZoomFactor:D

.field final sBorderYOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 436
    const/16 v0, 0xa

    sput v0, Lcom/google/android/music/ringtone/WaveformView;->HANDLE_TIMECODE_OFFSET_X:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mEnableZoom:Z

    .line 102
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, metrics:Landroid/util/DisplayMetrics;
    move-object v1, p1

    .line 103
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    .line 106
    const/high16 v1, 0x41c8

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    .line 108
    invoke-virtual {p0, v3}, Lcom/google/android/music/ringtone/WaveformView;->setFocusable(Z)V

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView;->setupPaints(Landroid/content/Context;)V

    .line 111
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/google/android/music/ringtone/WaveformView$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/ringtone/WaveformView$1;-><init>(Lcom/google/android/music/ringtone/WaveformView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 127
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;

    invoke-direct {v2, p0, v4}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;-><init>(Lcom/google/android/music/ringtone/WaveformView;Lcom/google/android/music/ringtone/WaveformView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 128
    iput-object v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    .line 129
    iput-object v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mWaveValues:[D

    .line 130
    iput v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 131
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackPos:I

    .line 132
    iput v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    .line 133
    iput v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    .line 134
    iput-boolean v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mInitialized:Z

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/WaveformView$WaveformListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/ringtone/WaveformView;)D
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/android/music/ringtone/WaveformView;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/music/ringtone/WaveformView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/music/ringtone/WaveformView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/music/ringtone/WaveformView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/music/ringtone/WaveformView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/music/ringtone/WaveformView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/music/ringtone/WaveformView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/RingtoneEditActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    return-object v0
.end method

.method private computeAndSmoothWaveValues()V
    .registers 29

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v11

    .line 472
    .local v11, numFrames:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v3

    .line 473
    .local v3, frameGains:[I
    new-array v0, v11, [D

    move-object/from16 v17, v0

    .line 474
    .local v17, smoothedGains:[D
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3b

    .line 475
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v3, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v17, v21

    .line 495
    :cond_2b
    :goto_2b
    const-wide/high16 v7, 0x3ff0

    .line 496
    .local v7, maxGain:D
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2e
    if-ge v6, v11, :cond_d9

    .line 497
    aget-wide v21, v17, v6

    cmpl-double v21, v21, v7

    if-lez v21, :cond_38

    .line 498
    aget-wide v7, v17, v6

    .line 496
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 476
    .end local v6           #i:I
    .end local v7           #maxGain:D
    :cond_3b
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v11, v0, :cond_5c

    .line 477
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v3, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v17, v21

    .line 478
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget v22, v3, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v17, v21

    goto :goto_2b

    .line 479
    :cond_5c
    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v11, v0, :cond_2b

    .line 480
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v3, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    div-double v22, v22, v24

    const/16 v24, 0x1

    aget v24, v3, v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v17, v21

    .line 483
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_83
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_b7

    .line 484
    add-int/lit8 v21, v6, -0x1

    aget v21, v3, v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4008

    div-double v21, v21, v23

    aget v23, v3, v6

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4008

    div-double v23, v23, v25

    add-double v21, v21, v23

    add-int/lit8 v23, v6, 0x1

    aget v23, v3, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4008

    div-double v23, v23, v25

    add-double v21, v21, v23

    aput-wide v21, v17, v6

    .line 483
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 489
    :cond_b7
    add-int/lit8 v21, v11, -0x1

    add-int/lit8 v22, v11, -0x2

    aget v22, v3, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    div-double v22, v22, v24

    add-int/lit8 v24, v11, -0x1

    aget v24, v3, v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v17, v21

    goto/16 :goto_2b

    .line 501
    .restart local v7       #maxGain:D
    :cond_d9
    const-wide/high16 v14, 0x3ff0

    .line 502
    .local v14, scaleFactor:D
    const-wide v21, 0x406fe00000000000L

    cmpl-double v21, v7, v21

    if-lez v21, :cond_eb

    .line 503
    const-wide v21, 0x406fe00000000000L

    div-double v14, v21, v7

    .line 507
    :cond_eb
    const-wide/16 v7, 0x0

    .line 508
    const/16 v21, 0x100

    move/from16 v0, v21

    new-array v4, v0, [I

    .line 509
    .local v4, gainHist:[I
    const/4 v6, 0x0

    :goto_f4
    if-ge v6, v11, :cond_122

    .line 510
    aget-wide v21, v17, v6

    mul-double v21, v21, v14

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v16, v0

    .line 511
    .local v16, smoothedGain:I
    if-gez v16, :cond_103

    .line 512
    const/16 v16, 0x0

    .line 513
    :cond_103
    const/16 v21, 0xff

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_10d

    .line 514
    const/16 v16, 0xff

    .line 516
    :cond_10d
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v21, v21, v7

    if-lez v21, :cond_119

    .line 517
    move/from16 v0, v16

    int-to-double v7, v0

    .line 519
    :cond_119
    aget v21, v4, v16

    add-int/lit8 v21, v21, 0x1

    aput v21, v4, v16

    .line 509
    add-int/lit8 v6, v6, 0x1

    goto :goto_f4

    .line 523
    .end local v16           #smoothedGain:I
    :cond_122
    const-wide/16 v9, 0x0

    .line 524
    .local v9, minGain:D
    const/16 v18, 0x0

    .line 525
    .local v18, sum:I
    :goto_126
    const-wide v21, 0x406fe00000000000L

    cmpg-double v21, v9, v21

    if-gez v21, :cond_143

    div-int/lit8 v21, v11, 0x14

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_143

    .line 526
    double-to-int v0, v9

    move/from16 v21, v0

    aget v21, v4, v21

    add-int v18, v18, v21

    .line 527
    const-wide/high16 v21, 0x3ff0

    add-double v9, v9, v21

    goto :goto_126

    .line 531
    :cond_143
    const/16 v18, 0x0

    .line 532
    :goto_145
    const-wide/high16 v21, 0x4000

    cmpl-double v21, v7, v21

    if-lez v21, :cond_15f

    div-int/lit8 v21, v11, 0x64

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_15f

    .line 533
    double-to-int v0, v7

    move/from16 v21, v0

    aget v21, v4, v21

    add-int v18, v18, v21

    .line 534
    const-wide/high16 v21, 0x3ff0

    sub-double v7, v7, v21

    goto :goto_145

    .line 538
    :cond_15f
    new-array v5, v11, [D

    .line 539
    .local v5, heights:[D
    sub-double v12, v7, v9

    .line 540
    .local v12, range:D
    const/4 v6, 0x0

    :goto_164
    if-ge v6, v11, :cond_185

    .line 541
    aget-wide v21, v17, v6

    mul-double v21, v21, v14

    sub-double v21, v21, v9

    div-double v19, v21, v12

    .line 542
    .local v19, value:D
    const-wide/16 v21, 0x0

    cmpg-double v21, v19, v21

    if-gez v21, :cond_176

    .line 543
    const-wide/16 v19, 0x0

    .line 544
    :cond_176
    const-wide/high16 v21, 0x3ff0

    cmpl-double v21, v19, v21

    if-lez v21, :cond_17e

    .line 545
    const-wide/high16 v19, 0x3ff0

    .line 546
    :cond_17e
    mul-double v21, v19, v19

    aput-wide v21, v5, v6

    .line 540
    add-int/lit8 v6, v6, 0x1

    goto :goto_164

    .line 549
    .end local v19           #value:D
    :cond_185
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/music/ringtone/WaveformView;->mWaveLength:I

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mWaveLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mWaveValues:[D

    .line 551
    const-wide/high16 v21, 0x3ff0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    .line 552
    const/4 v6, 0x0

    :goto_1a4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mWaveLength:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_1bb

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mWaveValues:[D

    move-object/from16 v21, v0

    aget-wide v22, v5, v6

    aput-wide v22, v21, v6

    .line 552
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a4

    .line 556
    :cond_1bb
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mInitialized:Z

    .line 557
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;III)V
    .registers 13
    .parameter "canvas"
    .parameter "measuredWidth"
    .parameter "measuredHeight"
    .parameter "width"

    .prologue
    .line 409
    const/4 v6, 0x0

    .line 410
    .local v6, left:I
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    if-gez v0, :cond_8

    .line 411
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    neg-int v6, v0

    .line 413
    :cond_8
    move v7, p2

    .line 414
    .local v7, right:I
    if-ge p4, p2, :cond_c

    .line 415
    move v7, p4

    .line 417
    :cond_c
    if-lez v6, :cond_1e

    .line 418
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int v0, p3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mNoWaveBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 423
    :cond_1e
    int-to-float v1, v6

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int v0, p3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 427
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    int-to-float v2, v0

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int v0, p3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 430
    if-ge v7, p2, :cond_5a

    .line 431
    int-to-float v1, v7

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    int-to-float v2, v0

    int-to-float v3, p2

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int v0, p3, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mNoWaveBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 434
    :cond_5a
    return-void
.end method

.method private drawHandleTimeCode(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 439
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v1

    .line 441
    .local v1, onePixelInSecs:D
    iget v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    int-to-double v5, v5

    mul-double/2addr v5, v1

    double-to-int v0, v5

    .line 442
    .local v0, integerSecs:I
    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/WaveformView;->getTimecodeFromSeconds(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, timecodeStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    float-to-int v3, v5

    .line 444
    .local v3, size:I
    iget v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    iget v6, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    sget v6, Lcom/google/android/music/ringtone/WaveformView;->HANDLE_TIMECODE_OFFSET_X:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->waveTop()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 449
    iget v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    int-to-double v5, v5

    mul-double/2addr v5, v1

    double-to-int v0, v5

    .line 450
    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/WaveformView;->getTimecodeFromSeconds(I)Ljava/lang/String;

    move-result-object v4

    .line 451
    iget v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    iget v6, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    sget v6, Lcom/google/android/music/ringtone/WaveformView;->HANDLE_TIMECODE_OFFSET_X:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->waveTop()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    return-void
.end method

.method private getIntWaveValue(I)I
    .registers 7
    .parameter "pos"

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 565
    .local v0, halfHeight:I
    int-to-double v1, p1

    iget-wide v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    div-double/2addr v1, v3

    double-to-int p1, v1

    .line 566
    if-ltz p1, :cond_1e

    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mWaveLength:I

    if-ge p1, v1, :cond_1e

    .line 567
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mWaveValues:[D

    aget-wide v1, v1, p1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 569
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private getTimecodeFromSeconds(I)Ljava/lang/String;
    .registers 7
    .parameter "seconds"

    .prologue
    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, p1, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, timecodeMinutes:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, p1, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, timecodeSeconds:Ljava/lang/String;
    rem-int/lit8 v3, p1, 0x3c

    const/16 v4, 0xa

    if-ge v3, v4, :cond_43

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, timecodeStr:Ljava/lang/String;
    return-object v2
.end method

.method private setupPaints(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/high16 v4, 0x4140

    const/4 v3, 0x1

    .line 138
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBlackBgPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBlackBgPaint:Landroid/graphics/Paint;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mNoWaveBgPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mNoWaveBgPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    .line 149
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    .line 152
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    .line 155
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleCoverPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleCoverPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLinePaint:Landroid/graphics/Paint;

    .line 161
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    .line 165
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    .line 169
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    .line 172
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 174
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    .line 178
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 182
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    const v2, 0x106000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    return-void
.end method


# virtual methods
.method protected drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .registers 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y0"
    .parameter "y1"
    .parameter "paint"

    .prologue
    .line 311
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p2

    int-to-float v4, p4

    move-object v0, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 312
    return-void
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    return v0
.end method

.method public getZoomFactor()D
    .registers 3

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    return-wide v0
.end method

.method public getmaxPos()I
    .registers 5

    .prologue
    .line 247
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mWaveLength:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mInitialized:Z

    return v0
.end method

.method isTouchInWaveRegion(F)Z
    .registers 3
    .parameter "y"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->waveTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->waveBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_14

    .line 225
    :cond_12
    const/4 v0, 0x0

    .line 227
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public millisecsToPixels(I)I
    .registers 10
    .parameter "msecs"

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    .line 266
    .local v0, z:D
    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v4, 0x408f400000000000L

    iget v6, p0, Lcom/google/android/music/ringtone/WaveformView;->mSamplesPerFrame:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 34
    .parameter "canvas"

    .prologue
    .line 316
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    if-nez v5, :cond_a

    .line 399
    :cond_9
    :goto_9
    return-void

    .line 320
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mWaveValues:[D

    if-nez v5, :cond_13

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/ringtone/WaveformView;->computeAndSmoothWaveValues()V

    .line 324
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v24

    .line 325
    .local v24, measuredWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v23

    .line 326
    .local v23, measuredHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    move/from16 v27, v0

    .line 327
    .local v27, start:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ringtone/WaveformView;->getmaxPos()I

    move-result v5

    sub-int v31, v5, v27

    .line 328
    .local v31, width:I
    div-int/lit8 v17, v23, 0x2

    .line 330
    .local v17, ctr:I
    move/from16 v0, v31

    move/from16 v1, v24

    if-le v0, v1, :cond_31

    .line 331
    move/from16 v31, v24

    .line 334
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v23

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/ringtone/WaveformView;->drawBackground(Landroid/graphics/Canvas;III)V

    .line 337
    const/4 v7, 0x0

    .line 338
    .local v7, i:I
    const/4 v7, 0x0

    :goto_40
    move/from16 v0, v31

    if-ge v7, v0, :cond_9b

    .line 339
    add-int v5, v7, v27

    if-gez v5, :cond_4b

    .line 338
    :cond_48
    :goto_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 344
    :cond_4b
    add-int v5, v7, v27

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    if-lt v5, v6, :cond_96

    add-int v5, v7, v27

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    if-ge v5, v6, :cond_96

    .line 346
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/ringtone/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    .line 350
    .local v10, paint:Landroid/graphics/Paint;
    :goto_5f
    add-int v5, v27, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/music/ringtone/WaveformView;->getIntWaveValue(I)I

    move-result v5

    sub-int v8, v17, v5

    add-int/lit8 v5, v17, 0x1

    add-int v6, v27, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/music/ringtone/WaveformView;->getIntWaveValue(I)I

    move-result v6

    add-int v9, v5, v6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/music/ringtone/WaveformView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 356
    add-int v5, v7, v27

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackPos:I

    if-ne v5, v6, :cond_48

    .line 357
    int-to-float v12, v7

    const/4 v13, 0x0

    int-to-float v14, v7

    move/from16 v0, v23

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_48

    .line 348
    .end local v10           #paint:Landroid/graphics/Paint;
    :cond_96
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    .restart local v10       #paint:Landroid/graphics/Paint;
    goto :goto_5f

    .line 362
    .end local v10           #paint:Landroid/graphics/Paint;
    :cond_9b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v25

    .line 363
    .local v25, onePixelInSecs:D
    const-wide/high16 v28, 0x3ff0

    .line 364
    .local v28, timecodeIntervalSecs:D
    div-double v5, v28, v25

    const-wide/high16 v8, 0x4049

    cmpg-double v5, v5, v8

    if-gez v5, :cond_ae

    .line 365
    const-wide/high16 v28, 0x4014

    .line 367
    :cond_ae
    div-double v5, v28, v25

    const-wide/high16 v8, 0x4049

    cmpg-double v5, v5, v8

    if-gez v5, :cond_b8

    .line 368
    const-wide/high16 v28, 0x402e

    .line 372
    :cond_b8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    int-to-double v5, v5

    mul-double v18, v5, v25

    .line 373
    .local v18, fractionalSecs:D
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v20, v0

    .line 374
    .local v20, integerSecs:I
    div-double v5, v18, v28

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    move/from16 v21, v0

    .line 375
    .local v21, integerTimecode:I
    const/4 v7, 0x0

    .line 376
    :cond_ce
    :goto_ce
    move/from16 v0, v31

    if-ge v7, v0, :cond_11b

    .line 377
    add-int/lit8 v7, v7, 0x1

    .line 378
    add-double v18, v18, v25

    .line 379
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    add-int/2addr v5, v7

    if-ltz v5, :cond_ce

    .line 381
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v20, v0

    .line 382
    div-double v5, v18, v28

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    move/from16 v22, v0

    .line 383
    .local v22, integerTimecodeNew:I
    move/from16 v0, v22

    move/from16 v1, v21

    if-eq v0, v1, :cond_ce

    .line 384
    move/from16 v21, v22

    .line 385
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->getTimecodeFromSeconds(I)Ljava/lang/String;

    move-result-object v30

    .line 386
    .local v30, timecodeStr:Ljava/lang/String;
    int-to-float v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    mul-float/2addr v6, v8

    const/high16 v8, 0x4000

    div-float/2addr v6, v8

    const/high16 v8, 0x40a0

    add-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_ce

    .line 392
    .end local v22           #integerTimecodeNew:I
    .end local v30           #timecodeStr:Ljava/lang/String;
    :cond_11b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-virtual {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getMarkerTouched()Z

    move-result v5

    if-eqz v5, :cond_128

    .line 393
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/ringtone/WaveformView;->drawHandleTimeCode(Landroid/graphics/Canvas;)V

    .line 396
    :cond_128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    if-eqz v5, :cond_9

    .line 397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-interface {v5}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformDraw()V

    goto/16 :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/ringtone/WaveformView;->isTouchInWaveRegion(F)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    .line 216
    :goto_c
    return v0

    .line 193
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mEnableZoom:Z

    if-eqz v1, :cond_16

    .line 195
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 199
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 201
    :cond_26
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-interface {v1}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformTouchEnd()V

    goto :goto_c

    .line 205
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    goto :goto_c

    .line 207
    :pswitch_34
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformTouchStart(F)V

    goto :goto_c

    .line 210
    :pswitch_3e
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformTouchMove(F)V

    goto :goto_c

    .line 213
    :pswitch_48
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-interface {v1}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformTouchEnd()V

    goto :goto_c

    .line 205
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_34
        :pswitch_48
        :pswitch_3e
    .end packed-switch
.end method

.method public pixelsToMillisecs(I)I
    .registers 10
    .parameter "pixels"

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    .line 272
    .local v0, z:D
    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L

    iget v6, p0, Lcom/google/android/music/ringtone/WaveformView;->mSamplesPerFrame:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method public pixelsToSeconds(I)D
    .registers 8
    .parameter "pixels"

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    .line 261
    .local v0, z:D
    int-to-double v2, p1

    iget v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSamplesPerFrame:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public recomputeHeights()V
    .registers 2

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mWaveValues:[D

    .line 305
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 306
    return-void
.end method

.method public secondsToFrames(D)I
    .registers 7
    .parameter "seconds"

    .prologue
    .line 251
    const-wide/high16 v0, 0x3ff0

    mul-double/2addr v0, p1

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mSampleRate:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mSamplesPerFrame:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public secondsToPixels(D)I
    .registers 9
    .parameter "seconds"

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D

    .line 256
    .local v0, z:D
    mul-double v2, v0, p1

    iget v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSampleRate:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSamplesPerFrame:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method setActivity(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    .line 187
    return-void
.end method

.method public setListener(Lcom/google/android/music/ringtone/WaveformView$WaveformListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    .line 300
    return-void
.end method

.method public setParameters(III)V
    .registers 4
    .parameter "start"
    .parameter "end"
    .parameter "offset"

    .prologue
    .line 277
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    .line 278
    iput p2, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    .line 279
    iput p3, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 280
    return-void
.end method

.method public setPlayback(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 295
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackPos:I

    .line 296
    return-void
.end method

.method public setSoundFile(Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;)V
    .registers 3
    .parameter "soundFile"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    .line 232
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSampleRate:I

    .line 233
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getSamplesPerFrame()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSamplesPerFrame:I

    .line 234
    invoke-direct {p0}, Lcom/google/android/music/ringtone/WaveformView;->computeAndSmoothWaveValues()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mWaveValues:[D

    .line 236
    return-void
.end method

.method waveBottom()I
    .registers 3

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method waveTop()I
    .registers 2

    .prologue
    .line 638
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    return v0
.end method
