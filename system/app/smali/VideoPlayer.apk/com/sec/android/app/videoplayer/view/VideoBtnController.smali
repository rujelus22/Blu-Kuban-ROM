.class public Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.super Landroid/widget/RelativeLayout;
.source "VideoBtnController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:I = 0xbb8

.field private static final FADE_OUT_TIME:I = 0x36ee80

.field private static final FFLONGSEEK:I = 0x6

.field private static final FFSHORTSEEK:I = 0x4

.field private static final HIDE_VOLUMEBAR:I = 0x2

.field private static final HIDE_VOLUME_BUBBLE:I = 0xb

.field private static final LONG_PRESS_TIME:J = 0x12cL

.field private static final PLAYSHORT:I = 0x3

.field private static final PROGRESS_UPDATE_INTVL:I = 0x1f4

.field private static final REWLONGSEEK:I = 0x7

.field private static final REWSHORTSEEK:I = 0x5

.field private static final SHORT_PRESS_TIME:J = 0x64L

.field private static final SHOW_PROGRESS:I = 0x1

.field private static final SHOW_VOLUMEBAR:I = 0xa

.field private static final SRSSHORT:I = 0x9

.field private static final STOPLONGSEEK:I = 0x8

.field private static final TAG:Ljava/lang/String; = "VideoBtnController"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCtrlLayout:Landroid/widget/RelativeLayout;

.field private mCtrlLayoutShow:Z

.field private mCurrentPosition:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDelayTime:I

.field private mEndTime:Landroid/widget/TextView;

.field private mFadeOutBtn:Landroid/view/animation/Animation;

.field private mFfButton:Landroid/widget/ImageButton;

.field private mFfButtonPressed:Z

.field private mFfKeyListener:Landroid/view/View$OnKeyListener;

.field private mFfTouchListener:Landroid/view/View$OnTouchListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mLongKeyCnt:I

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseKeyListener:Landroid/view/View$OnKeyListener;

.field private mPauseTouchListener:Landroid/view/View$OnTouchListener;

.field private mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

.field public mProgressBar:Landroid/widget/SeekBar;

.field private mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mProgressBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mProgressCtrlLayout:Landroid/widget/RelativeLayout;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewButtonPressed:Z

.field private mRewKeyListener:Landroid/view/View$OnKeyListener;

.field private mRewTouchListener:Landroid/view/View$OnTouchListener;

.field private mRoot:Landroid/view/View;

.field private mSRSBtn:Landroid/widget/ImageButton;

.field private mSRSKeyListener:Landroid/view/View$OnKeyListener;

.field private mSRSTouchListener:Landroid/view/View$OnTouchListener;

.field private mSRStoast:Landroid/widget/Toast;

.field private mSeekSpeed:Landroid/widget/TextView;

.field private mSeekSpeedLayout:Landroid/widget/RelativeLayout;

.field private mShowVolumeBar:Z

.field private mVieoBtnSeekBarPosionX:F

.field private mVieoBtnSeekBarPosionY:F

.field private mVolumeBtn:Landroid/widget/ImageButton;

.field private mVolumeBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mVolumeBtnListener:Landroid/view/View$OnTouchListener;

.field private mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

.field private mVolumeLevel:I

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVolumeSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mVolumeSeekBarPosionX:F

.field private mVolumeSeekBarPosionY:F

.field private mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mVolumeWarinigToast:Landroid/widget/Toast;

.field private mbFfEnable:Z

.field private mbPauseEnable:Z

.field private mbProgressDragStatus:Z

.field private mbResume:Z

.field private mbRewEnable:Z

.field private mbSeekStatus:Z

.field private misLongSeekNext:Z

.field private temp_playmode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    .line 57
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z

    .line 59
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    .line 62
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    .line 64
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    .line 65
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    .line 66
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    .line 67
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    .line 69
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F

    .line 70
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F

    .line 71
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F

    .line 72
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F

    .line 74
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    .line 75
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 76
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    .line 77
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4396

    invoke-direct {v0, v4, v4, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 78
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    .line 80
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    .line 81
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    .line 82
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    .line 84
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    .line 85
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    .line 86
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    .line 87
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    .line 88
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    .line 89
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 90
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 91
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    .line 92
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    .line 94
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    .line 96
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    .line 97
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeWarinigToast:Landroid/widget/Toast;

    .line 98
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    .line 99
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z

    .line 101
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z

    .line 104
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z

    .line 610
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$3;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    .line 1251
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$4;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseTouchListener:Landroid/view/View$OnTouchListener;

    .line 1280
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$5;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSTouchListener:Landroid/view/View$OnTouchListener;

    .line 1309
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$6;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSKeyListener:Landroid/view/View$OnKeyListener;

    .line 1347
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseKeyListener:Landroid/view/View$OnKeyListener;

    .line 1384
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1462
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$9;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewKeyListener:Landroid/view/View$OnKeyListener;

    .line 1510
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$10;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfTouchListener:Landroid/view/View$OnTouchListener;

    .line 1599
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfKeyListener:Landroid/view/View$OnKeyListener;

    .line 1664
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$12;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtnListener:Landroid/view/View$OnTouchListener;

    .line 1698
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtnKeyListener:Landroid/view/View$OnKeyListener;

    .line 1798
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$14;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 1810
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$15;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 1885
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$16;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2006
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$17;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 2018
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$18;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 2052
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$19;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 108
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    .line 109
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v1, 0x7f08003e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v1, 0x7f08008e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeWarinigToast:Landroid/widget/Toast;

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initFloatingWindow()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->changeSRSEffect()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->doStopResume()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    return p1
.end method

.method static synthetic access$2908(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$3112(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$3120(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getStringIdOfSpeed(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F

    return p1
.end method

.method static synthetic access$4102(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->temp_playmode:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4402(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F

    return p1
.end method

.method static synthetic access$4502(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F

    return p1
.end method

.method static synthetic access$4600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    return v0
.end method

.method static synthetic access$4602(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    return p1
.end method

.method static synthetic access$4700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private changeSRSEffect()V
    .registers 5

    .prologue
    .line 1178
    const/4 v1, 0x0

    .line 1180
    .local v1, srsMode:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;curDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v2, "HPH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "HS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1182
    :cond_19
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSRS()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1183
    const/4 v1, 0x1

    .line 1185
    :cond_20
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 1199
    :cond_26
    :goto_26
    return-void

    .line 1188
    :cond_27
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 1189
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 1191
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    if-eqz v2, :cond_26

    .line 1193
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRStoast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_26
.end method

.method private doPauseResume()V
    .registers 3

    .prologue
    .line 1202
    const-string v0, "VideoBtnController"

    const-string v1, "doPauseResume start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1205
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->pause()V

    .line 1212
    :goto_18
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 1213
    return-void

    .line 1208
    :cond_1c
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->start()V

    goto :goto_18
.end method

.method private doStopResume()V
    .registers 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1217
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->stop()V

    .line 1224
    :goto_11
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 1225
    return-void

    .line 1220
    :cond_15
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 1221
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    goto :goto_11
.end method

.method private getStringIdOfSpeed(I)I
    .registers 3
    .parameter "speed"

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 892
    .local v0, resId:I
    packed-switch p1, :pswitch_data_24

    .line 915
    const v0, 0x7f08008f

    .line 918
    :goto_7
    return v0

    .line 894
    :pswitch_8
    const v0, 0x7f08008f

    .line 895
    goto :goto_7

    .line 897
    :pswitch_c
    const v0, 0x7f080090

    .line 898
    goto :goto_7

    .line 900
    :pswitch_10
    const v0, 0x7f080091

    .line 901
    goto :goto_7

    .line 903
    :pswitch_14
    const v0, 0x7f080092

    .line 904
    goto :goto_7

    .line 906
    :pswitch_18
    const v0, 0x7f080093

    .line 907
    goto :goto_7

    .line 909
    :pswitch_1c
    const v0, 0x7f080094

    .line 910
    goto :goto_7

    .line 912
    :pswitch_20
    const v0, 0x7f080095

    .line 913
    goto :goto_7

    .line 892
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private initControllerView(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initProgress(Landroid/view/View;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initCtrlButton(Landroid/view/View;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initVolumeSeekBar(Landroid/view/View;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initSeekSpeed(Landroid/view/View;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 233
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    .line 235
    const v0, 0x7f0a0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeEnd(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4b

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_4b
    return-void
.end method

.method private initCtrlButton(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 287
    const v2, 0x7f0a0045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1f

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 294
    :cond_1f
    const v2, 0x7f0a0044

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_41

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 302
    :cond_41
    const v2, 0x7f0a0046

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_63

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 310
    :cond_63
    const v2, 0x7f0a0043

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    .line 312
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_b4

    .line 313
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;curDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v2, "HPH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2

    const-string v2, "HS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2

    .line 315
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 326
    :goto_8d
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v2

    if-ne v2, v5, :cond_102

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSRS()Z

    move-result v2

    if-eqz v2, :cond_fe

    const v2, 0x7f020021

    :goto_9e
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 331
    :goto_a1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    .end local v0           #isMusicHPH:Ljava/lang/String;
    :cond_b4
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    .line 337
    const v2, 0x7f0a0047

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_f1

    .line 341
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    if-nez v2, :cond_11e

    .line 342
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v2

    if-ne v2, v5, :cond_115

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 353
    :goto_de
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtnListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 357
    :cond_f1
    return-void

    .line 317
    .restart local v0       #isMusicHPH:Ljava/lang/String;
    :cond_f2
    const/4 v1, 0x0

    .line 319
    .local v1, srsMode:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSRS()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 320
    const/4 v1, 0x1

    .line 322
    :cond_fa
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    goto :goto_8d

    .line 327
    .end local v1           #srsMode:I
    :cond_fe
    const v2, 0x7f02001f

    goto :goto_9e

    .line 329
    :cond_102
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSRS()Z

    move-result v2

    if-eqz v2, :cond_111

    const v2, 0x7f020020

    :goto_10d
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_a1

    :cond_111
    const v2, 0x7f02001e

    goto :goto_10d

    .line 345
    .end local v0           #isMusicHPH:Ljava/lang/String;
    :cond_115
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_de

    .line 347
    :cond_11e
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v2

    if-ne v2, v5, :cond_12d

    .line 348
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_de

    .line 350
    :cond_12d
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_de
.end method

.method private initFloatingWindow()V
    .registers 6

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, decor:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 173
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    .line 175
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v1

    .line 180
    .local v1, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    if-eqz v1, :cond_1f

    .line 181
    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :cond_1f
    return-void
.end method

.method private initProgress(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 246
    const v0, 0x7f0a003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    .line 248
    const v0, 0x7f0a0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0a003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f0a003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5c

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 261
    :cond_5c
    return-void
.end method

.method private initSeekSpeed(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x4

    .line 360
    const v0, 0x7f0a003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    .line 361
    const v0, 0x7f0a003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_20

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :cond_29
    return-void
.end method

.method private initVolumeSeekBar(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 264
    const v0, 0x7f0a0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    const v0, 0x7f0a0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 268
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/high16 v1, 0x4250

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    .line 272
    :goto_29
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 274
    const v0, 0x7f0a004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 277
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    .line 281
    :goto_4d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 284
    return-void

    .line 271
    :cond_63
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/high16 v1, 0x428c

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    goto :goto_29

    .line 280
    :cond_6b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    goto :goto_4d
.end method

.method private removeMessage(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    const/4 v0, 0x7

    if-eq p1, v0, :cond_b

    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    .line 607
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mLongKeyCnt:I

    .line 608
    :cond_e
    return-void
.end method

.method private sendMessage(IJ)V
    .registers 6
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 597
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 600
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 601
    return-void
.end method

.method private setProgress(Z)I
    .registers 24
    .parameter "isLongSeek"

    .prologue
    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 947
    :cond_10
    const/4 v14, 0x0

    .line 1038
    :cond_11
    :goto_11
    return v14

    .line 949
    :cond_12
    const/4 v14, 0x0

    .line 951
    .local v14, position:I
    if-eqz p1, :cond_2f

    .line 952
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentPosition:I

    .line 956
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getDuration()I

    move-result v4

    .line 957
    .local v4, duration:I
    const/4 v7, 0x0

    .line 958
    .local v7, endnowTime:Ljava/lang/String;
    const/4 v3, 0x0

    .line 960
    .local v3, currentnowTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    if-nez v18, :cond_3a

    .line 961
    const/4 v14, 0x0

    goto :goto_11

    .line 954
    .end local v3           #currentnowTime:Ljava/lang/String;
    .end local v4           #duration:I
    .end local v7           #endnowTime:Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getCurrentPosition()I

    move-result v14

    goto :goto_19

    .line 963
    .restart local v3       #currentnowTime:Ljava/lang/String;
    .restart local v4       #duration:I
    .restart local v7       #endnowTime:Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 965
    const/16 v18, 0x3e8

    move/from16 v0, v18

    if-le v4, v0, :cond_8a

    .line 966
    const-wide/16 v18, 0x3e8

    int-to-long v0, v14

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    int-to-long v0, v4

    move-wide/from16 v20, v0

    div-long v12, v18, v20

    .line 967
    .local v12, pos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    long-to-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 970
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isPlayReadyFile()Z

    move-result v18

    if-nez v18, :cond_10a

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->getBufferPercentage()I

    move-result v11

    .line 973
    .local v11, percent:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSchemeType()I

    move-result v18

    const/16 v19, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8a

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    mul-int/lit8 v19, v11, 0xa

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1002
    .end local v11           #percent:I
    .end local v12           #pos:J
    :cond_8a
    :goto_8a
    sub-int v18, v4, v14

    const/16 v19, 0x1f4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_191

    .line 1003
    const/16 v18, 0x1f4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    .line 1010
    :cond_9c
    :goto_9c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeEnd(I)Ljava/lang/String;

    move-result-object v6

    .line 1013
    .local v6, endnewTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b1

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7           #endnowTime:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 1016
    .restart local v7       #endnowTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d1

    .line 1017
    if-lez v4, :cond_d1

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    :cond_d1
    move/from16 v17, v14

    .line 1024
    .local v17, time:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, currentnewTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c1

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #currentnowTime:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1029
    .restart local v3       #currentnowTime:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    if-eqz v2, :cond_11

    .line 1030
    if-lez v4, :cond_1b4

    move/from16 v0, v17

    if-le v0, v4, :cond_1b4

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 976
    .end local v2           #currentnewTime:Ljava/lang/String;
    .end local v6           #endnewTime:Ljava/lang/String;
    .end local v17           #time:I
    .restart local v12       #pos:J
    :cond_10a
    sget-boolean v18, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_184

    .line 977
    const-string v18, "VideoBtnController"

    const-string v19, "setProgress: A PYV file incomplete"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-wide/16 v15, 0x0

    .line 981
    .local v15, progress_prctg:J
    :try_start_11d
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPyvFilePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 982
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 984
    .local v9, file_length:J
    const-string v18, "VideoBtnController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setProgress: Current length"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "total_length"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPyvFileTotalLength()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-wide/16 v18, 0x64

    mul-long v18, v18, v9

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPyvFileTotalLength()J

    move-result-wide v20

    div-long v15, v18, v20

    .line 988
    const-wide/16 v18, 0x64

    cmp-long v18, v15, v18

    if-nez v18, :cond_168

    .line 989
    const/16 v18, 0x0

    sput-boolean v18, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_168} :catch_178

    .line 995
    .end local v8           #file:Ljava/io/File;
    .end local v9           #file_length:J
    :cond_168
    :goto_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    long-to-int v0, v15

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0xa

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_8a

    .line 991
    :catch_178
    move-exception v5

    .line 992
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "VideoBtnController"

    const-string v19, "setProgress: FileNotFoundException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_168

    .line 998
    .end local v5           #e:Ljava/lang/Exception;
    .end local v15           #progress_prctg:J
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_8a

    .line 1005
    .end local v12           #pos:J
    :cond_191
    sub-int v18, v4, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    move/from16 v18, v0

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9c

    .line 1007
    const/16 v18, 0x64

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mDelayTime:I

    goto/16 :goto_9c

    .line 1021
    .restart local v6       #endnewTime:Ljava/lang/String;
    :cond_1b1
    const/4 v14, 0x0

    goto/16 :goto_11

    .line 1033
    .restart local v2       #currentnewTime:Ljava/lang/String;
    .restart local v17       #time:I
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1036
    :cond_1c1
    const/4 v14, 0x0

    goto/16 :goto_11
.end method

.method private stringForTimeCur(I)Ljava/lang/String;
    .registers 13
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 857
    div-int/lit16 v3, p1, 0x3e8

    .line 858
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 859
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 860
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 862
    .local v0, hours:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 864
    if-lez v0, :cond_36

    .line 865
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 867
    :goto_35
    return-object v4

    :cond_36
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_35
.end method

.method private stringForTimeEnd(I)Ljava/lang/String;
    .registers 14
    .parameter "timeMs"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 871
    div-int/lit16 v4, p1, 0x3e8

    .line 872
    .local v4, totalSeconds:I
    rem-int/lit8 v3, v4, 0x3c

    .line 873
    .local v3, seconds:I
    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v2, v5, 0x3c

    .line 874
    .local v2, minutes:I
    div-int/lit16 v1, v4, 0xe10

    .line 876
    .local v1, hours:I
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 878
    const/16 v5, 0x3e8

    if-ge p1, v5, :cond_19

    .line 879
    const-string v0, "-:--:--"

    .line 886
    :goto_18
    return-object v0

    .line 883
    :cond_19
    if-lez v1, :cond_3d

    .line 884
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v6, " %d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 886
    :cond_3d
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFormatter:Ljava/util/Formatter;

    const-string v6, " %02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private updatePausePlayBtn()V
    .registers 8

    .prologue
    const v6, 0x7f080099

    const v5, 0x7f020017

    const v4, 0x7f020016

    const/4 v3, 0x1

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    if-nez v1, :cond_f

    .line 1083
    :cond_e
    :goto_e
    return-void

    .line 1045
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v2, 0x7f0a0045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1047
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_e

    .line 1050
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    if-eqz v1, :cond_5f

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1052
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v3, :cond_41

    .line 1053
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1057
    :goto_34
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1055
    :cond_41
    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_34

    .line 1059
    :cond_48
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v3, :cond_5b

    .line 1060
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1064
    :goto_51
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1062
    :cond_5b
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_51

    .line 1067
    :cond_5f
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1068
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v3, :cond_80

    .line 1069
    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1073
    :goto_73
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1071
    :cond_80
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_73

    .line 1075
    :cond_87
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v3, :cond_9b

    .line 1076
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1080
    :goto_90
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 1078
    :cond_9b
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_90
.end method


# virtual methods
.method public forceBtnRelease()V
    .registers 9

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1c

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 131
    :cond_1c
    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z

    if-eqz v2, :cond_25

    .line 133
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButtonPressed:Z

    .line 134
    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V

    .line 137
    :cond_25
    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z

    if-eqz v2, :cond_2e

    .line 139
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButtonPressed:Z

    .line 140
    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V

    .line 143
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 149
    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F

    iget v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    .line 153
    :cond_58
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 154
    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F

    iget v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 156
    :cond_6c
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 157
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 158
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 159
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 160
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 161
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 162
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 163
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V

    .line 164
    return-void
.end method

.method public forceHide()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    if-nez v1, :cond_27

    .line 560
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 561
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 564
    .local v0, Btn:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 565
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 566
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 568
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVisibility(I)V

    .line 570
    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 585
    .end local v0           #Btn:Landroid/view/animation/Animation;
    :cond_27
    return-void
.end method

.method public hide()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    if-nez v1, :cond_2a

    .line 484
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideSeekSpeed()V

    .line 487
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 490
    .local v0, Btn:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 491
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 492
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 494
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVisibility(I)V

    .line 497
    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 536
    .end local v0           #Btn:Landroid/view/animation/Animation;
    :cond_2a
    return-void
.end method

.method public hideSeekSpeed()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 940
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 943
    :cond_13
    return-void
.end method

.method public hideVolumeBubble()V
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    if-eqz v0, :cond_e

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 412
    :cond_e
    return-void
.end method

.method public isBtnSeekStatus()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbProgressDragStatus:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbSeekStatus:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 214
    .local v0, inflate:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 215
    const-string v1, "VideoBtnController"

    const-string v2, "makeControllerView in portrait mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const v1, 0x7f030015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    .line 221
    :goto_22
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initControllerView(Landroid/view/View;)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    return-object v1

    .line 218
    :cond_2a
    const-string v1, "VideoBtnController"

    const-string v2, "makeControllerView in landscape mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const v1, 0x7f030014

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    goto :goto_22
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 588
    const-string v0, "VideoBtnController"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    .line 593
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 594
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->initControllerView(Landroid/view/View;)V

    .line 120
    :cond_9
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 121
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->forceBtnRelease()V

    .line 479
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 468
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbResume:Z

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    return-void
.end method

.method public playerStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1788
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeEnd(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1791
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->stringForTimeCur(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1794
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_24

    .line 1795
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1796
    :cond_24
    return-void
.end method

.method public setAnchorView()V
    .registers 5

    .prologue
    .line 201
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeAllViews()V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 208
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-void
.end method

.method public setBtnState(ZZZ)V
    .registers 7
    .parameter "pause"
    .parameter "rew"
    .parameter "ff"

    .prologue
    .line 1750
    const-string v0, "VideoBtnController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBtnState(pause, rew, ff) - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbPauseEnable:Z

    .line 1753
    iput-boolean p2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    .line 1754
    iput-boolean p3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    .line 1756
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSeekBtn()V

    .line 1757
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 1758
    return-void
.end method

.method public setButtonArrange()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1228
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPreviewModeFlag()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_d
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_19

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_41

    .line 1232
    :cond_19
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v0

    if-ne v0, v2, :cond_30

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1249
    :goto_2f
    return-void

    .line 1236
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2f

    .line 1241
    :cond_41
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v0

    if-ne v0, v2, :cond_58

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2f

    .line 1245
    :cond_58
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2f
.end method

.method public setControllerVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 415
    if-eqz p1, :cond_9

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    :goto_8
    return-void

    .line 418
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 1761
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v2, 0x7f0a0045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1763
    .local v0, Button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_10

    .line 1764
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1766
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_19

    .line 1767
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1769
    :cond_19
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_22

    .line 1770
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1772
    :cond_22
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2b

    .line 1773
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1775
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_34

    .line 1776
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1778
    :cond_34
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v1, :cond_3d

    .line 1779
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 1781
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_46

    .line 1782
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1784
    :cond_46
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1785
    return-void
.end method

.method public setLongSeekNextFlag(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 1746
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->misLongSeekNext:Z

    .line 1747
    return-void
.end method

.method public setPlayer(Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;)V
    .registers 2
    .parameter "player"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    .line 186
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 189
    return-void
.end method

.method public setUpdate()V
    .registers 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updatePausePlayBtn()V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 196
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getIsOnPalm()Z

    move-result v0

    if-nez v0, :cond_16

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 198
    :cond_16
    return-void
.end method

.method public setVolumeBarVisible(Z)V
    .registers 7
    .parameter "visible"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 371
    if-eqz p1, :cond_75

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 376
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    if-eqz v2, :cond_6a

    .line 381
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 382
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 383
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 386
    .local v0, bubbleX:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 388
    .local v1, bubbleY:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x5a

    sub-int/2addr v0, v2

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x50

    add-int/2addr v1, v2

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 396
    .end local v0           #bubbleX:I
    .end local v1           #bubbleY:I
    :cond_6a
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    .line 397
    const/16 v2, 0xb

    const-wide/16 v3, 0x3e8

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V

    .line 405
    :goto_74
    return-void

    .line 399
    :cond_75
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    if-eqz v2, :cond_83

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 403
    :cond_83
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z

    goto :goto_74
.end method

.method public show()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 428
    .local v0, subTitle:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    if-nez v1, :cond_5d

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    if-eqz v0, :cond_16

    .line 432
    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateLayout(Z)V

    .line 434
    :cond_16
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setProgress(Z)I

    .line 436
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 459
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    .line 460
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateVolumeBtn()V

    .line 463
    :cond_5d
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 465
    return-void
.end method

.method public showForMultiWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 540
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->hideSeekSpeed()V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeCtrlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mEndTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSRSBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 556
    return-void
.end method

.method public showSeekSpeed(I)V
    .registers 5
    .parameter "speed"

    .prologue
    const/4 v2, 0x0

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->getStringIdOfSpeed(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 924
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_17

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 928
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    if-eqz v0, :cond_20

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mSeekSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 934
    return-void
.end method

.method public showVolumeWarinigToastFromKey()V
    .registers 8

    .prologue
    .line 1135
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    const-string v5, "audioParam;curDevice"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, isMusicHPH:Ljava/lang/String;
    const-string v4, "HPH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "HS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1138
    :cond_18
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v5, 0x7f0a004a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1139
    .local v3, volumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    .line 1140
    .local v1, progress:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 1142
    .local v2, volumeLevel:I
    const-string v4, "VideoBtnController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showVolumeWarinigToast() progress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  VolumeLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v4

    if-lt v2, v4, :cond_5e

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_5e

    .line 1149
    .end local v1           #progress:I
    .end local v2           #volumeLevel:I
    .end local v3           #volumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    :cond_5e
    return-void
.end method

.method public updateSRSBtn()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1107
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    if-nez v1, :cond_6

    .line 1132
    :cond_5
    :goto_5
    return-void

    .line 1110
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1112
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_5

    .line 1115
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSRS()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1117
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v3, :cond_32

    .line 1118
    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1122
    :goto_25
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1120
    :cond_32
    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_25

    .line 1124
    :cond_39
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v1

    if-ne v1, v3, :cond_52

    .line 1125
    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1129
    :goto_45
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1127
    :cond_52
    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_45
.end method

.method public updateSeekBtn()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_7

    .line 1104
    :goto_6
    return-void

    .line 1089
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4a

    .line 1090
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbRewEnable:Z

    if-eqz v0, :cond_3e

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1096
    :goto_26
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mbFfEnable:Z

    if-eqz v0, :cond_44

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1094
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_26

    .line 1100
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mFfButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_6

    .line 1102
    :cond_4a
    const-string v0, "VideoBtnController"

    const-string v1, "updateSeekBtn - UI resources are not valid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public updateVolumeBtn()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1152
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1153
    .local v0, button:Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;

    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1155
    .local v1, volumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    if-eqz v0, :cond_4d

    .line 1156
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    .line 1158
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    if-nez v2, :cond_60

    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    if-eqz v2, :cond_60

    .line 1160
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v2

    if-ne v2, v4, :cond_59

    .line 1161
    const v2, 0x7f02002d

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1170
    :goto_36
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mContext:Landroid/content/Context;

    const v3, 0x7f08009e

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1173
    :cond_4d
    if-eqz v1, :cond_58

    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mCtrlLayoutShow:Z

    if-eqz v2, :cond_58

    .line 1174
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeLevel:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1175
    :cond_58
    return-void

    .line 1163
    :cond_59
    const v2, 0x7f02002c

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_36

    .line 1165
    :cond_60
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getMovieplayerOrientation()I

    move-result v2

    if-ne v2, v4, :cond_6d

    .line 1166
    const v2, 0x7f02002f

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_36

    .line 1168
    :cond_6d
    const v2, 0x7f02002e

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_36
.end method
