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

.field private mHeightsAtThisZoomLevel:[I

.field private mInitialized:Z

.field private mIntendZoomLevel:I

.field private mLenByZoomLevel:[I

.field private mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

.field private mNoWaveBgPaint:Landroid/graphics/Paint;

.field private mNumZoomLevels:I

.field private mOffset:I

.field private mPlaybackLinePaint:Landroid/graphics/Paint;

.field private mPlaybackPos:I

.field private mSampleRate:I

.field private mSamplesPerFrame:I

.field private mScaleCoverPaint:Landroid/graphics/Paint;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleLeft:I

.field private mScaleLinePaint:Landroid/graphics/Paint;

.field private mScaleRight:I

.field private mSelectedLinePaint:Landroid/graphics/Paint;

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

.field private mTimecodePaint:Landroid/graphics/Paint;

.field private mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

.field private mUnselectedLinePaint:Landroid/graphics/Paint;

.field private mValuesByZoomLevel:[[D

.field private mZoomFactorByZoomLevel:[D

.field private mZoomLevel:I

.field final sBorderYOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 508
    const/16 v0, 0xa

    sput v0, Lcom/google/android/music/ringtone/WaveformView;->HANDLE_TIMECODE_OFFSET_X:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mEnableZoom:Z

    .line 108
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, metrics:Landroid/util/DisplayMetrics;
    move-object v1, p1

    .line 109
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    .line 112
    const/high16 v1, 0x41c8

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    .line 114
    invoke-virtual {p0, v4}, Lcom/google/android/music/ringtone/WaveformView;->setFocusable(Z)V

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView;->setupPaints(Landroid/content/Context;)V

    .line 117
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v3, Lcom/google/android/music/ringtone/WaveformView$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/ringtone/WaveformView$1;-><init>(Lcom/google/android/music/ringtone/WaveformView;)V

    invoke-direct {v1, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 133
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v3, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;

    invoke-direct {v3, p0, v2}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;-><init>(Lcom/google/android/music/ringtone/WaveformView;Lcom/google/android/music/ringtone/WaveformView$1;)V

    invoke-direct {v1, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 134
    iput-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    .line 135
    iput-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object v1, v2

    .line 136
    check-cast v1, [[D

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    .line 137
    iput-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    .line 138
    iput v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 139
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackPos:I

    .line 140
    iput v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    .line 141
    iput v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    .line 142
    iput-boolean v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mInitialized:Z

    .line 143
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

.method static synthetic access$200(Lcom/google/android/music/ringtone/WaveformView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/music/ringtone/WaveformView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/ringtone/WaveformView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    return v0
.end method

.method static synthetic access$400(III)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/google/android/music/ringtone/WaveformView;->clamp(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/RingtoneEditActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/ringtone/WaveformView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLeft:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/music/ringtone/WaveformView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleRight:I

    return p1
.end method

.method private static clamp(III)I
    .registers 3
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 741
    if-ge p0, p1, :cond_4

    .line 742
    move p0, p1

    .line 746
    :cond_3
    :goto_3
    return p0

    .line 743
    :cond_4
    if-le p0, p2, :cond_3

    .line 744
    move p0, p2

    goto :goto_3
.end method

.method private computeDoublesForAllZoomLevels()V
    .registers 30

    .prologue
    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getNumFrames()I

    move-result v11

    .line 544
    .local v11, numFrames:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getFrameGains()[I

    move-result-object v2

    .line 545
    .local v2, frameGains:[I
    new-array v0, v11, [D

    move-object/from16 v17, v0

    .line 546
    .local v17, smoothedGains:[D
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3b

    .line 547
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v2, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v17, v21

    .line 567
    :cond_2b
    :goto_2b
    const-wide/high16 v7, 0x3ff0

    .line 568
    .local v7, maxGain:D
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2e
    if-ge v5, v11, :cond_d9

    .line 569
    aget-wide v21, v17, v5

    cmpl-double v21, v21, v7

    if-lez v21, :cond_38

    .line 570
    aget-wide v7, v17, v5

    .line 568
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 548
    .end local v5           #i:I
    .end local v7           #maxGain:D
    :cond_3b
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v11, v0, :cond_5c

    .line 549
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v2, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v17, v21

    .line 550
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget v22, v2, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v17, v21

    goto :goto_2b

    .line 551
    :cond_5c
    const/16 v21, 0x2

    move/from16 v0, v21

    if-le v11, v0, :cond_2b

    .line 552
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v2, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    div-double v22, v22, v24

    const/16 v24, 0x1

    aget v24, v2, v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v17, v21

    .line 555
    const/4 v5, 0x1

    .restart local v5       #i:I
    :goto_83
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v5, v0, :cond_b7

    .line 556
    add-int/lit8 v21, v5, -0x1

    aget v21, v2, v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4008

    div-double v21, v21, v23

    aget v23, v2, v5

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4008

    div-double v23, v23, v25

    add-double v21, v21, v23

    add-int/lit8 v23, v5, 0x1

    aget v23, v2, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4008

    div-double v23, v23, v25

    add-double v21, v21, v23

    aput-wide v21, v17, v5

    .line 555
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 561
    :cond_b7
    add-int/lit8 v21, v11, -0x1

    add-int/lit8 v22, v11, -0x2

    aget v22, v2, v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    div-double v22, v22, v24

    add-int/lit8 v24, v11, -0x1

    aget v24, v2, v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v17, v21

    goto/16 :goto_2b

    .line 573
    .restart local v7       #maxGain:D
    :cond_d9
    const-wide/high16 v14, 0x3ff0

    .line 574
    .local v14, scaleFactor:D
    const-wide v21, 0x406fe00000000000L

    cmpl-double v21, v7, v21

    if-lez v21, :cond_eb

    .line 575
    const-wide v21, 0x406fe00000000000L

    div-double v14, v21, v7

    .line 579
    :cond_eb
    const-wide/16 v7, 0x0

    .line 580
    const/16 v21, 0x100

    move/from16 v0, v21

    new-array v3, v0, [I

    .line 581
    .local v3, gainHist:[I
    const/4 v5, 0x0

    :goto_f4
    if-ge v5, v11, :cond_122

    .line 582
    aget-wide v21, v17, v5

    mul-double v21, v21, v14

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v16, v0

    .line 583
    .local v16, smoothedGain:I
    if-gez v16, :cond_103

    .line 584
    const/16 v16, 0x0

    .line 585
    :cond_103
    const/16 v21, 0xff

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_10d

    .line 586
    const/16 v16, 0xff

    .line 588
    :cond_10d
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v21, v21, v7

    if-lez v21, :cond_119

    .line 589
    move/from16 v0, v16

    int-to-double v7, v0

    .line 591
    :cond_119
    aget v21, v3, v16

    add-int/lit8 v21, v21, 0x1

    aput v21, v3, v16

    .line 581
    add-int/lit8 v5, v5, 0x1

    goto :goto_f4

    .line 595
    .end local v16           #smoothedGain:I
    :cond_122
    const-wide/16 v9, 0x0

    .line 596
    .local v9, minGain:D
    const/16 v18, 0x0

    .line 597
    .local v18, sum:I
    :goto_126
    const-wide v21, 0x406fe00000000000L

    cmpg-double v21, v9, v21

    if-gez v21, :cond_143

    div-int/lit8 v21, v11, 0x14

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_143

    .line 598
    double-to-int v0, v9

    move/from16 v21, v0

    aget v21, v3, v21

    add-int v18, v18, v21

    .line 599
    const-wide/high16 v21, 0x3ff0

    add-double v9, v9, v21

    goto :goto_126

    .line 603
    :cond_143
    const/16 v18, 0x0

    .line 604
    :goto_145
    const-wide/high16 v21, 0x4000

    cmpl-double v21, v7, v21

    if-lez v21, :cond_15f

    div-int/lit8 v21, v11, 0x64

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_15f

    .line 605
    double-to-int v0, v7

    move/from16 v21, v0

    aget v21, v3, v21

    add-int v18, v18, v21

    .line 606
    const-wide/high16 v21, 0x3ff0

    sub-double v7, v7, v21

    goto :goto_145

    .line 610
    :cond_15f
    new-array v4, v11, [D

    .line 611
    .local v4, heights:[D
    sub-double v12, v7, v9

    .line 612
    .local v12, range:D
    const/4 v5, 0x0

    :goto_164
    if-ge v5, v11, :cond_185

    .line 613
    aget-wide v21, v17, v5

    mul-double v21, v21, v14

    sub-double v21, v21, v9

    div-double v19, v21, v12

    .line 614
    .local v19, value:D
    const-wide/16 v21, 0x0

    cmpg-double v21, v19, v21

    if-gez v21, :cond_176

    .line 615
    const-wide/16 v19, 0x0

    .line 616
    :cond_176
    const-wide/high16 v21, 0x3ff0

    cmpl-double v21, v19, v21

    if-lez v21, :cond_17e

    .line 617
    const-wide/high16 v19, 0x3ff0

    .line 618
    :cond_17e
    mul-double v21, v19, v19

    aput-wide v21, v4, v5

    .line 612
    add-int/lit8 v5, v5, 0x1

    goto :goto_164

    .line 621
    .end local v19           #value:D
    :cond_185
    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mNumZoomLevels:I

    .line 622
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    .line 623
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    .line 624
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [[D

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    mul-int/lit8 v23, v11, 0x2

    aput v23, v21, v22

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-wide/high16 v23, 0x4000

    aput-wide v23, v21, v22

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    .line 630
    if-lez v11, :cond_213

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x0

    const-wide/high16 v23, 0x3fe0

    const/16 v25, 0x0

    aget-wide v25, v4, v25

    mul-double v23, v23, v25

    aput-wide v23, v21, v22

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aget-wide v23, v4, v23

    aput-wide v23, v21, v22

    .line 634
    :cond_213
    const/4 v5, 0x1

    :goto_214
    if-ge v5, v11, :cond_245

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    mul-int/lit8 v22, v5, 0x2

    const-wide/high16 v23, 0x3fe0

    add-int/lit8 v25, v5, -0x1

    aget-wide v25, v4, v25

    aget-wide v27, v4, v5

    add-double v25, v25, v27

    mul-double v23, v23, v25

    aput-wide v23, v21, v22

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    mul-int/lit8 v22, v5, 0x2

    add-int/lit8 v22, v22, 0x1

    aget-wide v23, v4, v5

    aput-wide v23, v21, v22

    .line 634
    add-int/lit8 v5, v5, 0x1

    goto :goto_214

    .line 640
    :cond_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput v11, v21, v22

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const-wide/high16 v23, 0x3ff0

    aput-wide v23, v21, v22

    .line 643
    const/4 v5, 0x0

    :goto_276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    if-ge v5, v0, :cond_295

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    aget-wide v22, v4, v5

    aput-wide v22, v21, v5

    .line 643
    add-int/lit8 v5, v5, 0x1

    goto :goto_276

    .line 648
    :cond_295
    const/4 v6, 0x2

    .local v6, j:I
    :goto_296
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ge v6, v0, :cond_31e

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    aget v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    aput v22, v21, v6

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v22, v0

    aget v22, v22, v6

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v22, v0

    aput-object v22, v21, v6

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    aget-wide v22, v22, v23

    const-wide/high16 v24, 0x4000

    div-double v22, v22, v24

    aput-wide v22, v21, v6

    .line 652
    const/4 v5, 0x0

    :goto_2dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move/from16 v0, v21

    if-ge v5, v0, :cond_31a

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v21, v0

    aget-object v21, v21, v6

    const-wide/high16 v22, 0x3fe0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v24, v0

    add-int/lit8 v25, v6, -0x1

    aget-object v24, v24, v25

    mul-int/lit8 v25, v5, 0x2

    aget-wide v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v6, -0x1

    aget-object v26, v26, v27

    mul-int/lit8 v27, v5, 0x2

    add-int/lit8 v27, v27, 0x1

    aget-wide v26, v26, v27

    add-double v24, v24, v26

    mul-double v22, v22, v24

    aput-wide v22, v21, v5

    .line 652
    add-int/lit8 v5, v5, 0x1

    goto :goto_2dd

    .line 648
    :cond_31a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_296

    .line 659
    :cond_31e
    const/16 v21, 0x1388

    move/from16 v0, v21

    if-le v11, v0, :cond_335

    .line 660
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    .line 669
    :goto_32c
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mInitialized:Z

    .line 670
    return-void

    .line 661
    :cond_335
    const/16 v21, 0x3e8

    move/from16 v0, v21

    if-le v11, v0, :cond_344

    .line 662
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    goto :goto_32c

    .line 663
    :cond_344
    const/16 v21, 0x12c

    move/from16 v0, v21

    if-le v11, v0, :cond_353

    .line 664
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    goto :goto_32c

    .line 666
    :cond_353
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    goto :goto_32c
.end method

.method private computeIntsForThisZoomLevel()V
    .registers 8

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .line 678
    .local v0, halfHeight:I
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    .line 679
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_30

    .line 680
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    iget-object v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mValuesByZoomLevel:[[D

    iget v4, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget-object v3, v3, v4

    aget-wide v3, v3, v1

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 683
    :cond_30
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;III)V
    .registers 13
    .parameter "canvas"
    .parameter "measuredWidth"
    .parameter "measuredHeight"
    .parameter "width"

    .prologue
    .line 466
    const/4 v6, 0x0

    .line 467
    .local v6, left:I
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    if-gez v0, :cond_8

    .line 468
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    neg-int v6, v0

    .line 470
    :cond_8
    move v7, p2

    .line 471
    .local v7, right:I
    if-ge p4, p2, :cond_c

    .line 472
    move v7, p4

    .line 474
    :cond_c
    if-lez v6, :cond_1e

    .line 475
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

    .line 480
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

    .line 484
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

    .line 487
    if-ge v7, p2, :cond_5a

    .line 488
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

    .line 491
    :cond_5a
    return-void
.end method

.method private drawHandleTimeCode(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 511
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v1

    .line 513
    .local v1, onePixelInSecs:D
    iget v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    int-to-double v5, v5

    mul-double/2addr v5, v1

    double-to-int v0, v5

    .line 514
    .local v0, integerSecs:I
    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/WaveformView;->getTimecodeFromSeconds(I)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, timecodeStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    float-to-int v3, v5

    .line 516
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

    .line 521
    iget v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    int-to-double v5, v5

    mul-double/2addr v5, v1

    double-to-int v0, v5

    .line 522
    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/WaveformView;->getTimecodeFromSeconds(I)Ljava/lang/String;

    move-result-object v4

    .line 523
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

    .line 526
    return-void
.end method

.method private drawScaleVisualFeedback(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 494
    iget v7, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    .line 495
    .local v7, top:I
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int v6, v0, v1

    .line 498
    .local v6, bottom:I
    const/4 v1, 0x0

    int-to-float v2, v7

    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLeft:I

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleCoverPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 499
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleRight:I

    int-to-float v1, v0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleCoverPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 502
    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLeft:I

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/ringtone/WaveformView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 504
    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleRight:I

    iget-object v5, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/ringtone/WaveformView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 506
    return-void
.end method

.method private getTimecodeFromSeconds(I)Ljava/lang/String;
    .registers 7
    .parameter "seconds"

    .prologue
    .line 530
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

    .line 531
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

    .line 532
    .local v1, timecodeSeconds:Ljava/lang/String;
    rem-int/lit8 v3, p1, 0x3c

    const/16 v4, 0xa

    if-ge v3, v4, :cond_43

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
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

    .line 536
    .local v2, timecodeStr:Ljava/lang/String;
    return-object v2
.end method

.method private setupPaints(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/high16 v4, 0x4140

    const/4 v3, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBlackBgPaint:Landroid/graphics/Paint;

    .line 148
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBlackBgPaint:Landroid/graphics/Paint;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mNoWaveBgPaint:Landroid/graphics/Paint;

    .line 151
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mNoWaveBgPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    .line 154
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGridPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    .line 157
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    .line 160
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    .line 163
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedBkgndLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleCoverPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleCoverPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLinePaint:Landroid/graphics/Paint;

    .line 169
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    .line 173
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mBorderLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    .line 177
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    .line 180
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 182
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mTimecodePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    .line 186
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mDensity:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 187
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 190
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHandleTimecodePaint:Landroid/graphics/Paint;

    const v2, 0x106000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    return-void
.end method


# virtual methods
.method public canZoomIn()Z
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canZoomOut()Z
    .registers 3

    .prologue
    .line 281
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mNumZoomLevels:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .registers 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y0"
    .parameter "y1"
    .parameter "paint"

    .prologue
    .line 364
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p2

    int-to-float v4, p4

    move-object v0, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    return-void
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    return v0
.end method

.method public getZoomLevel()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mInitialized:Z

    return v0
.end method

.method isTouchInWaveRegion(F)Z
    .registers 3
    .parameter "y"

    .prologue
    .line 230
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

    .line 231
    :cond_12
    const/4 v0, 0x0

    .line 233
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public maxPos()I
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mLenByZoomLevel:[I

    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget v0, v0, v1

    return v0
.end method

.method public millisecsToPixels(I)I
    .registers 10
    .parameter "msecs"

    .prologue
    .line 318
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget-wide v0, v2, v3

    .line 319
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
    .line 369
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    if-nez v5, :cond_a

    .line 456
    :cond_9
    :goto_9
    return-void

    .line 373
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    if-nez v5, :cond_13

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/ringtone/WaveformView;->computeIntsForThisZoomLevel()V

    .line 377
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v24

    .line 378
    .local v24, measuredWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v23

    .line 379
    .local v23, measuredHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    move/from16 v27, v0

    .line 380
    .local v27, start:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    array-length v5, v5

    sub-int v31, v5, v27

    .line 381
    .local v31, width:I
    div-int/lit8 v17, v23, 0x2

    .line 383
    .local v17, ctr:I
    move/from16 v0, v31

    move/from16 v1, v24

    if-le v0, v1, :cond_32

    .line 384
    move/from16 v31, v24

    .line 387
    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v23

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/ringtone/WaveformView;->drawBackground(Landroid/graphics/Canvas;III)V

    .line 390
    const/4 v7, 0x0

    .line 391
    .local v7, i:I
    const/4 v7, 0x0

    :goto_41
    move/from16 v0, v31

    if-ge v7, v0, :cond_9c

    .line 392
    add-int v5, v7, v27

    if-gez v5, :cond_4c

    .line 391
    :cond_49
    :goto_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 397
    :cond_4c
    add-int v5, v7, v27

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    if-lt v5, v6, :cond_97

    add-int v5, v7, v27

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    if-ge v5, v6, :cond_97

    .line 399
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/ringtone/WaveformView;->mSelectedLinePaint:Landroid/graphics/Paint;

    .line 403
    .local v10, paint:Landroid/graphics/Paint;
    :goto_60
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    add-int v6, v27, v7

    aget v5, v5, v6

    sub-int v8, v17, v5

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    add-int v9, v27, v7

    aget v6, v6, v9

    add-int v9, v5, v6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/music/ringtone/WaveformView;->drawWaveformLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 409
    add-int v5, v7, v27

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackPos:I

    if-ne v5, v6, :cond_49

    .line 410
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

    goto :goto_49

    .line 401
    .end local v10           #paint:Landroid/graphics/Paint;
    :cond_97
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/ringtone/WaveformView;->mUnselectedLinePaint:Landroid/graphics/Paint;

    .restart local v10       #paint:Landroid/graphics/Paint;
    goto :goto_60

    .line 414
    .end local v10           #paint:Landroid/graphics/Paint;
    :cond_9c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 415
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/ringtone/WaveformView;->drawScaleVisualFeedback(Landroid/graphics/Canvas;)V

    .line 419
    :cond_a9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v25

    .line 420
    .local v25, onePixelInSecs:D
    const-wide/high16 v28, 0x3ff0

    .line 421
    .local v28, timecodeIntervalSecs:D
    div-double v5, v28, v25

    const-wide/high16 v8, 0x4049

    cmpg-double v5, v5, v8

    if-gez v5, :cond_bc

    .line 422
    const-wide/high16 v28, 0x4014

    .line 424
    :cond_bc
    div-double v5, v28, v25

    const-wide/high16 v8, 0x4049

    cmpg-double v5, v5, v8

    if-gez v5, :cond_c6

    .line 425
    const-wide/high16 v28, 0x402e

    .line 429
    :cond_c6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    int-to-double v5, v5

    mul-double v18, v5, v25

    .line 430
    .local v18, fractionalSecs:D
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v20, v0

    .line 431
    .local v20, integerSecs:I
    div-double v5, v18, v28

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    move/from16 v21, v0

    .line 432
    .local v21, integerTimecode:I
    const/4 v7, 0x0

    .line 433
    :cond_dc
    :goto_dc
    move/from16 v0, v31

    if-ge v7, v0, :cond_129

    .line 434
    add-int/lit8 v7, v7, 0x1

    .line 435
    add-double v18, v18, v25

    .line 436
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    add-int/2addr v5, v7

    if-ltz v5, :cond_dc

    .line 438
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v20, v0

    .line 439
    div-double v5, v18, v28

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v0, v5

    move/from16 v22, v0

    .line 440
    .local v22, integerTimecodeNew:I
    move/from16 v0, v22

    move/from16 v1, v21

    if-eq v0, v1, :cond_dc

    .line 441
    move/from16 v21, v22

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->getTimecodeFromSeconds(I)Ljava/lang/String;

    move-result-object v30

    .line 443
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

    goto :goto_dc

    .line 449
    .end local v22           #integerTimecodeNew:I
    .end local v30           #timecodeStr:Ljava/lang/String;
    :cond_129
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-virtual {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getMarkerTouched()Z

    move-result v5

    if-eqz v5, :cond_136

    .line 450
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/ringtone/WaveformView;->drawHandleTimeCode(Landroid/graphics/Canvas;)V

    .line 453
    :cond_136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    if-eqz v5, :cond_9

    .line 454
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

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/ringtone/WaveformView;->isTouchInWaveRegion(F)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    .line 222
    :cond_c
    :goto_c
    return v0

    .line 201
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mEnableZoom:Z

    if-eqz v1, :cond_16

    .line 203
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    goto :goto_c

    .line 213
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformTouchStart(F)V

    goto :goto_c

    .line 216
    :pswitch_38
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformTouchMove(F)V

    goto :goto_c

    .line 219
    :pswitch_42
    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    invoke-interface {v1}, Lcom/google/android/music/ringtone/WaveformView$WaveformListener;->waveformTouchEnd()V

    goto :goto_c

    .line 211
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_42
        :pswitch_38
    .end packed-switch
.end method

.method public pixelsToMillisecs(I)I
    .registers 10
    .parameter "pixels"

    .prologue
    .line 324
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget-wide v0, v2, v3

    .line 325
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
    .line 313
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget-wide v0, v2, v3

    .line 314
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
    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    .line 358
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 359
    return-void
.end method

.method public secondsToFrames(D)I
    .registers 7
    .parameter "seconds"

    .prologue
    .line 304
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
    .line 308
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomFactorByZoomLevel:[D

    iget v3, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    aget-wide v0, v2, v3

    .line 309
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
    .line 194
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    .line 195
    return-void
.end method

.method public setListener(Lcom/google/android/music/ringtone/WaveformView$WaveformListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mListener:Lcom/google/android/music/ringtone/WaveformView$WaveformListener;

    .line 353
    return-void
.end method

.method public setParameters(III)V
    .registers 4
    .parameter "start"
    .parameter "end"
    .parameter "offset"

    .prologue
    .line 330
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    .line 331
    iput p2, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    .line 332
    iput p3, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 333
    return-void
.end method

.method public setPlayback(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 348
    iput p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mPlaybackPos:I

    .line 349
    return-void
.end method

.method public setSoundFile(Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;)V
    .registers 3
    .parameter "soundFile"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    .line 238
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSampleRate:I

    .line 239
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getSamplesPerFrame()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mSamplesPerFrame:I

    .line 240
    invoke-direct {p0}, Lcom/google/android/music/ringtone/WaveformView;->computeDoublesForAllZoomLevels()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    .line 242
    return-void
.end method

.method public setZoomLevel(I)V
    .registers 3
    .parameter "zoomLevel"

    .prologue
    .line 253
    :goto_0
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    if-le v0, p1, :cond_8

    .line 254
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->zoomIn()V

    goto :goto_0

    .line 256
    :cond_8
    :goto_8
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    if-ge v0, p1, :cond_10

    .line 257
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->zoomOut()V

    goto :goto_8

    .line 259
    :cond_10
    return-void
.end method

.method waveBottom()I
    .registers 3

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method waveTop()I
    .registers 2

    .prologue
    .line 754
    iget v0, p0, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    return v0
.end method

.method public zoomIn()V
    .registers 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->canZoomIn()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 267
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    .line 268
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    .line 269
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    .line 270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    .line 271
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 272
    .local v0, offsetCenter:I
    mul-int/lit8 v0, v0, 0x2

    .line 273
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 274
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    if-gez v1, :cond_38

    .line 275
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 276
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 278
    .end local v0           #offsetCenter:I
    :cond_3b
    return-void
.end method

.method public zoomOut()V
    .registers 4

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->canZoomOut()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 286
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I

    .line 287
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I

    .line 288
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I

    .line 289
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 290
    .local v0, offsetCenter:I
    div-int/lit8 v0, v0, 0x2

    .line 291
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 292
    iget v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    if-gez v1, :cond_35

    .line 293
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mOffset:I

    .line 294
    :cond_35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/ringtone/WaveformView;->mHeightsAtThisZoomLevel:[I

    .line 295
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 297
    .end local v0           #offsetCenter:I
    :cond_3b
    return-void
.end method
