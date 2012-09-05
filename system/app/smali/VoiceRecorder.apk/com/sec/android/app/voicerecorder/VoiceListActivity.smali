.class public Lcom/sec/android/app/voicerecorder/VoiceListActivity;
.super Landroid/app/Activity;
.source "VoiceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;


# static fields
.field private static mGotoMainByBackkey:Z

.field private static mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;


# instance fields
.field public ProgressHandler:Landroid/os/Handler;

.field isEnableFinishChecker:Z

.field private isRecordButtonClicked:Z

.field private isVolumeBarShow:Z

.field private mActivityState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClipListView:Landroid/widget/ListView;

.field private mConsumeTouchEvent:Z

.field private mCurrentSelectedId:J

.field private mCurrentSelectedPositionBottom:I

.field private mCurrentTopItem:I

.field private mCursor:Landroid/database/Cursor;

.field private mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

.field private mDrmDialog:Landroid/app/AlertDialog;

.field private mDrmPopupType:I

.field private mEventHandler:Landroid/os/Handler;

.field private mHideVolumePanel:Ljava/lang/Runnable;

.field private mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

.field private mLowBattDialog:Landroid/app/AlertDialog;

.field mMenu:Landroid/view/Menu;

.field private mOrientation:I

.field private mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mPlayImage:Landroid/widget/ImageView;

.field private mPlayerDurationView:Landroid/widget/TextView;

.field private mPlayerElapsedView:Landroid/widget/TextView;

.field private final mPlayerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayerLayout:Landroid/widget/FrameLayout;

.field private mPlayerTitleView:Landroid/widget/TextView;

.field private mProgressBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mRecordButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mRecorderLayout:Landroid/widget/LinearLayout;

.field mRenameDialog:Landroid/app/AlertDialog;

.field private mSetVolume:Ljava/lang/Runnable;

.field private mSetVolumeEventHandler:Landroid/os/Handler;

.field private mStopButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mTextTimeElapsedOld:Ljava/lang/String;

.field private mTouchMovedWhileConsuming:Z

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

.field private mVoiceArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVolCtrl:Landroid/widget/ImageButton;

.field private mVolumeBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mVolumeKeyEventHandler:Landroid/os/Handler;

.field private mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mbProgressDragStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mGotoMainByBackkey:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    .line 124
    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    .line 125
    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmDialog:Landroid/app/AlertDialog;

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    .line 152
    iput v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentTopItem:I

    .line 157
    iput v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    .line 167
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isVolumeBarShow:Z

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isEnableFinishChecker:Z

    .line 172
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mEventHandler:Landroid/os/Handler;

    .line 753
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mTextTimeElapsedOld:Ljava/lang/String;

    .line 874
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isRecordButtonClicked:Z

    .line 1092
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 1139
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 1289
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$7;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->ProgressHandler:Landroid/os/Handler;

    .line 1309
    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    .line 1445
    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRenameDialog:Landroid/app/AlertDialog;

    .line 1717
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$11;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1732
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolumeEventHandler:Landroid/os/Handler;

    .line 1734
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$12;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolume:Ljava/lang/Runnable;

    .line 1746
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mConsumeTouchEvent:Z

    .line 1747
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mTouchMovedWhileConsuming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolume()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initProgress()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/voicerecorder/VoiceListActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->changeMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->stopPlay()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setFilenameAndDuration()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolumeEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mSetVolume:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    return-wide v0
.end method

.method static synthetic access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/voicerecorder/VoiceListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/voicerecorder/VoiceListActivity;J)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustVolume(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 827
    .line 830
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToastAudioShockForAdjust(Landroid/content/Context;ILandroid/media/AudioManager;)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_30

    .line 836
    :goto_d
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 839
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 841
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolumeIcon()V

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2f

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 847
    :cond_2f
    return-void

    .line 832
    :catch_30
    move-exception v0

    .line 833
    const-string v1, "VoiceListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in adjustVolume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private changeMode(I)V
    .registers 6
    .parameter "modeToChange"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 328
    const-string v0, "VoiceListActivity"

    const-string v1, "changeMode"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    packed-switch p1, :pswitch_data_4e

    .line 352
    :goto_d
    iput p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    .line 353
    return-void

    .line 331
    :pswitch_10
    const-string v0, "VoiceListActivity"

    const-string v1, "changeMode(RECORDER)"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRecorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 334
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    goto :goto_d

    .line 338
    :pswitch_25
    const-string v0, "VoiceListActivity"

    const-string v1, "changeMode(PLAYER)"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolumeIcon()V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRecorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-eq v0, p1, :cond_48

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getScrollAmount()I

    move-result v1

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 345
    :cond_48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setProgress(Z)V

    goto :goto_d

    .line 329
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_25
    .end packed-switch
.end method

.method private checkFileExist()Z
    .registers 5

    .prologue
    .line 486
    iget-wide v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    invoke-static {p0, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 489
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v1, tmpFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 492
    .end local v1           #tmpFile:Ljava/io/File;
    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private createClipArrayList()V
    .registers 6

    .prologue
    .line 557
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_c

    .line 558
    const-string v3, "VoiceListActivity"

    const-string v4, "mCursor is null!"

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_b
    return-void

    .line 562
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 563
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 566
    :cond_19
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 568
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 569
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 570
    .local v1, id:J
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private createDRMPopup()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 691
    .line 696
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_14

    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    const/16 v3, 0x24

    if-eq v2, v3, :cond_14

    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_60

    .line 698
    :cond_14
    const v2, 0x1040013

    .line 699
    const v1, 0x1040009

    .line 707
    :goto_1a
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    iget v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->getPopupString(I)Ljava/lang/String;

    move-result-object v3

    .line 708
    const-string v4, "VoiceListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDRMPopup() - pop up String :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 713
    new-instance v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    if-eqz v0, :cond_54

    .line 737
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$4;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    invoke-virtual {v4, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    :cond_54
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmDialog:Landroid/app/AlertDialog;

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 746
    return-void

    .line 701
    :cond_60
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    const/16 v3, 0x21

    if-eq v2, v3, :cond_72

    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    const/16 v3, 0x23

    if-eq v2, v3, :cond_72

    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    const/16 v3, 0x25

    if-ne v2, v3, :cond_78

    .line 703
    :cond_72
    const v0, 0x104000a

    move v2, v0

    move v0, v1

    .line 704
    goto :goto_1a

    :cond_78
    move v2, v1

    goto :goto_1a
.end method

.method private createDeleteDialog()Landroid/app/AlertDialog;
    .registers 5

    .prologue
    .line 1546
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1547
    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1548
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$10;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$9;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1573
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createRenameDialog()Landroid/app/AlertDialog;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 1448
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1449
    const-string v0, "VoiceListActivity"

    const-string v1, "init() : id is -1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_10
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1455
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1457
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1459
    if-eq v2, v4, :cond_2c

    .line 1460
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1463
    :cond_2c
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createRenameDialog(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRenameDialog:Landroid/app/AlertDialog;

    .line 1464
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1466
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 1467
    if-eqz v2, :cond_48

    .line 1468
    new-instance v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity$8;-><init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1541
    :cond_48
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRenameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getPlayerHeight()I
    .registers 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isLandscape(Landroid/view/WindowManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xe5

    :goto_c
    return v0

    :cond_d
    const/16 v0, 0x114

    goto :goto_c
.end method

.method private getScrollAmount()I
    .registers 5

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, amount:I
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getScreenHeight(Landroid/view/WindowManager;)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getPlayerHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 365
    .local v1, playerTop:I
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedPositionBottom:I

    add-int/lit8 v2, v2, 0x25

    add-int/lit8 v2, v2, 0x26

    if-le v2, v1, :cond_1f

    .line 366
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedPositionBottom:I

    add-int/lit8 v2, v2, 0x25

    add-int/lit8 v2, v2, 0x26

    sub-int v0, v2, v1

    .line 368
    :cond_1f
    return v0
.end method

.method private hideVolumePanel()V
    .registers 3

    .prologue
    .line 791
    const-string v0, "VoiceListActivity"

    const-string v1, "hideVolumePanel()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isVolumeBarShow:Z

    .line 797
    return-void
.end method

.method private hmsConvert(J)Ljava/lang/String;
    .registers 14
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 1080
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1081
    rem-long v2, v0, v6

    .line 1082
    div-long v4, v0, v6

    rem-long/2addr v4, v6

    .line 1083
    const-wide/16 v6, 0xe10

    div-long/2addr v0, v6

    .line 1085
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_33

    .line 1086
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    :goto_32
    return-object v0

    :cond_33
    const-string v0, "%02d:%02d"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method private initProgress()V
    .registers 4

    .prologue
    .line 749
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    return-void
.end method

.method public static initService(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V
    .registers 1
    .parameter "service"

    .prologue
    .line 181
    sput-object p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    .line 182
    return-void
.end method

.method private initViews()V
    .registers 9

    .prologue
    const v7, 0x7f090012

    const/16 v6, 0x500

    const/16 v5, 0x2d0

    const/4 v4, 0x1

    .line 241
    const-string v2, "VoiceListActivity"

    const-string v3, "initViews()"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 249
    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 250
    .local v0, mVolumeSeekBubble:Landroid/widget/FrameLayout;
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 254
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRecordButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRecordButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 256
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRecordButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerLayout:Landroid/widget/FrameLayout;

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRecorderLayout:Landroid/widget/LinearLayout;

    .line 263
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerTitleView:Landroid/widget/TextView;

    .line 264
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerDurationView:Landroid/widget/TextView;

    .line 265
    const v2, 0x7f09000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    .line 266
    const v2, 0x7f090011

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v2, 0x7f090014

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayImage:Landroid/widget/ImageView;

    .line 271
    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v2, :cond_16a

    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 272
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPauseButton()V

    .line 277
    :cond_bc
    :goto_bc
    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mStopButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mStopButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mStopButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 282
    const v2, 0x7f090013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 283
    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 284
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 285
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontColor(I)V

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 288
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v2, v5, :cond_112

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v2, v6, :cond_122

    :cond_112
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v2, v6, :cond_17b

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v2, v5, :cond_17b

    .line 290
    :cond_122
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/high16 v3, 0x4280

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    .line 295
    :goto_129
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v2, 0x7f09000a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolumeIcon()V

    .line 301
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v2, :cond_157

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v3, 0x240

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 307
    :cond_157
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 309
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v2, :cond_169

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 312
    :cond_169
    return-void

    .line 273
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_16a
    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v2, :cond_bc

    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_bc

    .line 274
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPlayButton()V

    goto/16 :goto_bc

    .line 293
    .restart local v1       #r:Landroid/content/res/Resources;
    :cond_17b
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/high16 v3, 0x4244

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    goto :goto_129
.end method

.method private listBinding()Z
    .registers 15

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 497
    const-string v0, "VoiceListActivity"

    const-string v1, "listBinding E"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_16

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 501
    iput-object v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    .line 517
    :cond_16
    const/4 v3, 0x0

    .line 518
    .local v3, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v11, builder:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.3ga\' or _data LIKE \'%.amr\')"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_data NOT LIKE \'%/.voice.3ga\' and _data NOT LIKE \'%/.voice.amr\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v9, v6

    const-string v0, "title"

    aput-object v0, v9, v7

    const/4 v0, 0x2

    const-string v1, "date_modified"

    aput-object v1, v9, v0

    const-string v0, "duration"

    aput-object v0, v9, v2

    .line 530
    .local v9, cols:[Ljava/lang/String;
    new-array v10, v2, [I

    fill-array-data v10, :array_cc

    .line 533
    .local v10, to:[I
    :try_start_5c
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_6c} :catch_7f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5c .. :try_end_6c} :catch_9b

    .line 543
    :goto_6c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_b7

    .line 544
    const-string v0, "VoiceListActivity"

    const-string v1, "listBinding() : cusor null"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->startNoSdActivity(Landroid/content/Context;)V

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    move v7, v6

    .line 553
    :goto_7e
    return v7

    .line 535
    :catch_7f
    move-exception v12

    .line 536
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VoiceListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - SQLiteException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iput-object v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_6c

    .line 538
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catch_9b
    move-exception v13

    .line 539
    .local v13, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "VoiceListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listBinding - UnsupportedOperationException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iput-object v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_6c

    .line 550
    .end local v13           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_b7
    new-instance v4, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    const v6, 0x7f03001b

    iget-object v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7e

    .line 530
    :array_cc
    .array-data 0x4
        0x41t 0x0t 0x9t 0x7ft
        0x42t 0x0t 0x9t 0x7ft
        0x43t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private playItem()V
    .registers 5

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initProgress()V

    .line 650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->changeMode(I)V

    .line 652
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    iget-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setCurrentPlayingId(J)V

    .line 654
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    .line 655
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resetPath()V

    .line 658
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 660
    if-eqz v0, :cond_6f

    .line 661
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->checkIsOMADrm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->updateOMADRMInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDRMUtil:Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRDRMUtil;->setDrmMsgPopup()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    .line 665
    const-string v0, "VoiceListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playItem() - mDrmPopupType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/16 v0, 0x1e

    iget v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    if-eq v0, v1, :cond_6f

    .line 668
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createDRMPopup()V

    .line 688
    :cond_5f
    :goto_5f
    return-void

    .line 672
    :cond_60
    const-string v0, "VoiceListActivity"

    const-string v1, "playItem() : DRM information error."

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mDrmPopupType:I

    .line 674
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createDRMPopup()V

    goto :goto_5f

    .line 686
    :cond_6f
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startPlay(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 687
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->stopPlay()V

    goto :goto_5f
.end method

.method private registerPlayerIntentReceiver()V
    .registers 3

    .prologue
    .line 1741
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1742
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1743
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1744
    return-void
.end method

.method public static releaseService()V
    .registers 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    .line 186
    return-void
.end method

.method private setFilenameAndDuration()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 621
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 622
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-nez v0, :cond_6a

    .line 623
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 627
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_69

    .line 633
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 634
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 635
    const-string v2, "duration"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 637
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerTitleView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerDurationView:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v2, :cond_66

    .line 641
    sget-object v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setSelectedFileName(Ljava/lang/String;)V

    .line 644
    :cond_66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 646
    :cond_69
    return-void

    .line 625
    :cond_6a
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_10
.end method

.method private setItemFocusOnVoiceList(I)V
    .registers 5
    .parameter "when"

    .prologue
    .line 850
    packed-switch p1, :pswitch_data_16

    .line 872
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 853
    :pswitch_4
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentTopItem:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentTopItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 850
    :pswitch_data_16
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setPauseButton()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const v2, 0x7f060005

    .line 1253
    const-string v0, "1280x720"

    const-string v1, "800x480"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1254
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v3, :cond_20

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayImage:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1258
    :cond_20
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v4, :cond_31

    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 1260
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayImage:Landroid/widget/ImageView;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1268
    :cond_31
    :goto_31
    return-void

    .line 1263
    :cond_32
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v3, :cond_3e

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    const v1, 0x7f020052

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setImageAndText(II)V

    .line 1265
    :cond_3e
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v4, :cond_31

    .line 1266
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setImageAndText(II)V

    goto :goto_31
.end method

.method private setPlayButton()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const v2, 0x7f06001f

    .line 1271
    const-string v0, "1280x720"

    const-string v1, "800x480"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1272
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v3, :cond_20

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayImage:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1276
    :cond_20
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v4, :cond_31

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setText(I)V

    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayImage:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1286
    :cond_31
    :goto_31
    return-void

    .line 1281
    :cond_32
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v3, :cond_3e

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    const v1, 0x7f020062

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setImageAndText(II)V

    .line 1283
    :cond_3e
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    if-ne v0, v4, :cond_31

    .line 1284
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    const v1, 0x7f020063

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setImageAndText(II)V

    goto :goto_31
.end method

.method private setProgress(Z)V
    .registers 11
    .parameter "forceUpdate"

    .prologue
    const-wide/16 v6, 0x240

    const/4 v8, 0x1

    .line 756
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-eqz v3, :cond_f

    sget-object v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z

    if-eqz v3, :cond_10

    .line 788
    :cond_f
    :goto_f
    return-void

    .line 759
    :cond_10
    sget-object v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPosition()I

    move-result v2

    .line 760
    .local v2, position:I
    sget-object v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPlayerDuration()I

    move-result v0

    .line 762
    .local v0, duration:I
    if-eqz v0, :cond_f

    .line 766
    sget-object v3, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_49

    iget-boolean v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isEnableFinishChecker:Z

    if-ne v3, v8, :cond_49

    if-nez v2, :cond_49

    .line 780
    :goto_2c
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hmsConvert(J)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, mTextTimeElapsedNew:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isEnableFinishChecker:Z

    if-ne v3, v8, :cond_37

    if-eqz v2, :cond_f

    .line 783
    :cond_37
    if-nez p1, :cond_41

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mTextTimeElapsedOld:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 784
    :cond_41
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerElapsedView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mTextTimeElapsedOld:Ljava/lang/String;

    goto :goto_f

    .line 768
    .end local v1           #mTextTimeElapsedNew:Ljava/lang/String;
    :cond_49
    iget-boolean v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isEnableFinishChecker:Z

    if-nez v3, :cond_5f

    if-lez v2, :cond_5f

    .line 769
    iput-boolean v8, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isEnableFinishChecker:Z

    .line 772
    if-le v2, v0, :cond_54

    move v2, v0

    .line 773
    :cond_54
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    int-to-long v4, v2

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    goto :goto_2c

    .line 777
    :cond_5f
    if-le v2, v0, :cond_62

    move v2, v0

    .line 778
    :cond_62
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    int-to-long v4, v2

    mul-long/2addr v4, v6

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    goto :goto_2c
.end method

.method private setVolume()V
    .registers 6

    .prologue
    .line 808
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 810
    .local v0, currentVolume:I
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 812
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolumeIcon()V

    .line 814
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_23

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 816
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    :cond_23
    return-void
.end method

.method private setVolumeIcon()V
    .registers 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 316
    .local v0, currentVolume:I
    if-nez v0, :cond_12

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 321
    :goto_11
    return-void

    .line 319
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;

    const v2, 0x7f02009e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_11
.end method

.method private showVolumePanel()V
    .registers 3

    .prologue
    .line 800
    const-string v0, "VoiceListActivity"

    const-string v1, "showVolumePanel()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isVolumeBarShow:Z

    .line 805
    return-void
.end method

.method private stopPlay()V
    .registers 2

    .prologue
    .line 1245
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v0, :cond_12

    .line 1246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->changeMode(I)V

    .line 1247
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    .line 1248
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resetPath()V

    .line 1250
    :cond_12
    return-void
.end method


# virtual methods
.method public OnPlayerStateChanged(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1193
    packed-switch p1, :pswitch_data_46

    .line 1241
    :goto_4
    return-void

    .line 1195
    :pswitch_5
    const-string v0, "VoiceListActivity"

    const-string v1, "OnPlayerStateChanged: PLAYER_EVENT_STARTED"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPauseButton()V

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 1202
    :pswitch_15
    invoke-direct {p0, v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setProgress(Z)V

    goto :goto_4

    .line 1219
    :pswitch_19
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mProgressbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v1, 0x240

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    goto :goto_4

    .line 1223
    :pswitch_21
    const-string v0, "VoiceListActivity"

    const-string v1, "OnPlayerStateChanged: PLAYER_EVENT_STOPPED"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->ProgressHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1225
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolume()V

    .line 1226
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    goto :goto_4

    .line 1232
    :pswitch_36
    const-string v0, "VoiceListActivity"

    const-string v1, "OnPlayerStateChanged: PLAYER_EVENT_PAUSED"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPlayButton()V

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 1193
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_5
        :pswitch_15
        :pswitch_21
        :pswitch_36
        :pswitch_19
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 1779
    invoke-static {p1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isMultiTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1780
    const/4 v0, 0x0

    .line 1782
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public getPlayer()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
    .registers 2

    .prologue
    .line 233
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    return-object v0
.end method

.method public isPlayerView()Z
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1697
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1701
    sparse-switch p2, :sswitch_data_14

    .line 1715
    :goto_6
    return-void

    .line 1703
    :sswitch_7
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setResult(I)V

    .line 1704
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    goto :goto_6

    .line 1708
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    goto :goto_6

    .line 1701
    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_10
        0x7d0 -> :sswitch_7
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1068
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-ne v0, v1, :cond_c

    .line 1069
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->stopPlay()V

    .line 1070
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mGotoMainByBackkey:Z

    .line 1077
    :goto_b
    return-void

    .line 1073
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->stopPlay()V

    .line 1074
    sput-boolean v1, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mGotoMainByBackkey:Z

    .line 1076
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mRecordButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_42

    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-nez v0, :cond_42

    .line 880
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 882
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 919
    :goto_34
    return-void

    .line 885
    :cond_35
    iput-boolean v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isRecordButtonClicked:Z

    .line 886
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    .line 887
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setResult(I)V

    .line 888
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    .line 891
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_81

    .line 892
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 894
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_34

    .line 897
    :cond_71
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    .line 898
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 899
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    .line 904
    :cond_81
    :goto_81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mStopButton:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_97

    .line 905
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-ne v0, v3, :cond_97

    .line 906
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    .line 907
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->stopPlay()V

    .line 911
    :cond_97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_cc

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->isShown()Z

    move-result v0

    if-nez v0, :cond_c7

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isPlayerView()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 913
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolume()V

    .line 914
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->showVolumePanel()V

    goto/16 :goto_34

    .line 900
    :cond_b9
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 901
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumePlay()V

    goto :goto_81

    .line 916
    :cond_c7
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    goto/16 :goto_34

    .line 918
    :cond_cc
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    goto/16 :goto_34
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1654
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1655
    const-string v0, "VoiceListActivity"

    const-string v2, "onConfigurationChanged"

    invoke-static {v0, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    .line 1659
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mClipListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentTopItem:I

    .line 1663
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1666
    if-eqz v0, :cond_54

    .line 1667
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 1669
    :goto_21
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setContentView(I)V

    .line 1671
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initViews()V

    .line 1673
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 1674
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setFilenameAndDuration()V

    .line 1677
    :cond_32
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->listBinding()Z

    .line 1678
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setItemFocusOnVoiceList(I)V

    .line 1681
    if-eq v0, v1, :cond_44

    .line 1682
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1683
    if-eqz v0, :cond_44

    .line 1684
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1688
    :cond_44
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isVolumeBarShow:Z

    if-eqz v0, :cond_4e

    .line 1689
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolume()V

    .line 1690
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->showVolumePanel()V

    .line 1692
    :cond_4e
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->changeMode(I)V

    .line 1693
    return-void

    :cond_54
    move v0, v1

    goto :goto_21
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    .line 1600
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1602
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    .line 1607
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    .line 1649
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 1609
    :pswitch_13
    const-string v0, "VoiceListActivity"

    const-string v1, "onContextItemSelected - delete"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_11

    .line 1614
    :pswitch_22
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1616
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1617
    const-string v2, "id"

    iget-wide v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1618
    const-string v2, "file"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    const-string v0, "mode"

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1620
    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 1625
    :pswitch_46
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_11

    .line 1640
    :pswitch_4e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1641
    const-string v1, "id"

    iget-wide v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1642
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 1607
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_13
        :pswitch_22
        :pswitch_46
        :pswitch_4e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 191
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mOrientation:I

    .line 193
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setContentView(I)V

    .line 195
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 196
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initViews()V

    .line 200
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->listBinding()Z

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createClipArrayList()V

    .line 203
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolumeControlStream(I)V

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1579
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1581
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1584
    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1586
    if-nez v0, :cond_15

    .line 1587
    const-string v0, "VoiceListActivity"

    const-string v1, "onCreateContextMenu: Can`t load file."

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    :goto_14
    return-void

    .line 1591
    :cond_15
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1592
    const/4 v0, 0x2

    const v1, 0x7f060021

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1593
    const/4 v0, 0x1

    const v1, 0x7f06001c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1594
    const/4 v0, 0x3

    const v1, 0x7f060017

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1595
    const/4 v0, 0x4

    const v1, 0x7f060056

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_14
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 1436
    packed-switch p1, :pswitch_data_a

    .line 1440
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1438
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 1436
    :pswitch_data_a
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 373
    const-string v0, "VoiceListActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVoiceArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 384
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 580
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 581
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 582
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    .line 616
    :cond_3a
    :goto_3a
    return-void

    .line 586
    :cond_3b
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isRecordButtonClicked:Z

    if-nez v0, :cond_3a

    .line 591
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mGotoMainByBackkey:Z

    if-nez v0, :cond_3a

    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    .line 597
    iput-wide p4, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    .line 598
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v0, :cond_3a

    .line 599
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-nez v0, :cond_64

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 600
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    goto :goto_3a

    .line 601
    :cond_64
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-nez v0, :cond_7c

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 602
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumePlay()V

    goto :goto_3a

    .line 604
    :cond_7c
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedPositionBottom:I

    .line 605
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->playItem()V

    .line 606
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setFilenameAndDuration()V

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_3a

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeGroup(I)V

    .line 610
    const/high16 v0, 0x7f08

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v1, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_3a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 924
    sparse-switch p1, :sswitch_data_54

    .line 967
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    .line 927
    :sswitch_a
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-eqz v2, :cond_9

    .line 931
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->showVolumePanel()V

    .line 932
    invoke-direct {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->adjustVolume(I)V

    move v0, v1

    .line 933
    goto :goto_9

    .line 936
    :sswitch_16
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-eqz v2, :cond_9

    .line 940
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->showVolumePanel()V

    .line 941
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->adjustVolume(I)V

    move v0, v1

    .line 942
    goto :goto_9

    .line 945
    :sswitch_23
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_5

    .line 946
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 950
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_9

    .line 952
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 953
    const v0, 0x7f080002

    .line 962
    :goto_3b
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v1, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_5

    .line 954
    :cond_45
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-ne v2, v1, :cond_4c

    .line 955
    const/high16 v0, 0x7f08

    goto :goto_3b

    .line 956
    :cond_4c
    iget v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-nez v1, :cond_9

    .line 957
    const v0, 0x7f080001

    goto :goto_3b

    .line 924
    :sswitch_data_54
    .sparse-switch
        0x18 -> :sswitch_a
        0x19 -> :sswitch_16
        0x52 -> :sswitch_23
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1349
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v0, :cond_1e

    .line 1351
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1365
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    .line 1367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_b4

    .line 1431
    const/4 v0, 0x0

    :goto_1d
    return v0

    .line 1354
    :cond_1e
    if-eqz p1, :cond_2d

    .line 1355
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1357
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_f

    :cond_2d
    move v0, v1

    .line 1359
    goto :goto_1d

    .line 1369
    :pswitch_2f
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-nez v0, :cond_45

    .line 1370
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1371
    const-string v2, "ListType"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1372
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->startActivity(Landroid/content/Intent;)V

    :goto_43
    move v0, v1

    .line 1376
    goto :goto_1d

    .line 1374
    :cond_45
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->showDialog(I)V

    goto :goto_43

    .line 1379
    :pswitch_4b
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-nez v0, :cond_61

    .line 1380
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1381
    const-string v2, "ListType"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1382
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5f
    :goto_5f
    move v0, v1

    .line 1397
    goto :goto_1d

    .line 1383
    :cond_61
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-ne v0, v1, :cond_5f

    .line 1385
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->createRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_5f

    .line 1402
    :pswitch_6d
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1404
    iget v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-ne v3, v1, :cond_9a

    .line 1405
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1407
    if-nez v3, :cond_84

    move v0, v1

    .line 1409
    goto :goto_1d

    .line 1412
    :cond_84
    const-string v4, "id"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1413
    const-string v0, "file"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const-string v0, "mode"

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1419
    :cond_95
    :goto_95
    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1420
    goto :goto_1d

    .line 1415
    :cond_9a
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-nez v0, :cond_95

    .line 1416
    const-string v0, "mode"

    const/16 v3, 0xb

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_95

    .line 1423
    :pswitch_a6
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/voicerecorder/SettingsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1424
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1425
    goto/16 :goto_1d

    .line 1367
    nop

    :pswitch_data_b4
    .packed-switch 0x7f090064
        :pswitch_6d
        :pswitch_2f
        :pswitch_4b
        :pswitch_a6
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 388
    const-string v1, "VoiceListActivity"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :try_start_7
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_10

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mLowBattDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_26

    .line 397
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_19

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 401
    :cond_19
    sget-object v1, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v1, :cond_22

    .line 402
    sget-object v1, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->removeOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V

    .line 404
    :cond_22
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 405
    return-void

    .line 393
    :catch_26
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VoiceListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring exception while dismissing dialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1313
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1316
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_25

    .line 1317
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mMenu:Landroid/view/Menu;

    .line 1318
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 1322
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_13

    .line 1338
    :cond_12
    :goto_12
    return v0

    .line 1324
    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1325
    const v0, 0x7f080002

    .line 1334
    :goto_1e
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_25
    move v0, v1

    .line 1338
    goto :goto_12

    .line 1326
    :cond_27
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-ne v2, v1, :cond_2e

    .line 1327
    const/high16 v0, 0x7f08

    goto :goto_1e

    .line 1328
    :cond_2e
    iget v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-nez v2, :cond_12

    .line 1329
    const v0, 0x7f080001

    goto :goto_1e
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 422
    const-string v0, "VoiceListActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sput-boolean v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mGotoMainByBackkey:Z

    .line 424
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->registerPlayerIntentReceiver()V

    .line 425
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-nez v0, :cond_1e

    .line 426
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setResult(I)V

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    .line 483
    :cond_1d
    :goto_1d
    return-void

    .line 429
    :cond_1e
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_32

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_3a

    .line 431
    :cond_32
    const/16 v0, 0x7d4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setResult(I)V

    .line 432
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    .line 435
    :cond_3a
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->hideNotification()Z

    .line 436
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06003c

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->finish()V

    goto :goto_1d

    .line 446
    :cond_5c
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-ne v0, v3, :cond_b7

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->checkFileExist()Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_a2

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 448
    :cond_76
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->release()V

    .line 449
    invoke-direct {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->changeMode(I)V

    .line 471
    :cond_7e
    :goto_7e
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setFilenameAndDuration()V

    .line 472
    invoke-direct {p0, v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setProgress(Z)V

    .line 473
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolume()V

    .line 475
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 476
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPlayingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mCurrentSelectedId:J

    .line 479
    :cond_97
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    if-eqz v0, :cond_1d

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1d

    .line 451
    :cond_a2
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 452
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPauseButton()V

    .line 457
    :goto_ad
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_7e

    .line 454
    :cond_b3
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPlayButton()V

    goto :goto_ad

    .line 459
    :cond_b7
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    if-nez v0, :cond_7e

    .line 460
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_cb

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 461
    :cond_cb
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initProgress()V

    .line 462
    invoke-direct {p0, v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->changeMode(I)V

    .line 463
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 464
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPauseButton()V

    .line 468
    :goto_dc
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mListAdapter:Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRSimpleCursorAdapter;->notifyDataSetChanged()V

    goto :goto_7e

    .line 466
    :cond_e2
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setPlayButton()V

    goto :goto_dc
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 410
    const-string v0, "VoiceListActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 413
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 414
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerNotification()Z

    .line 417
    :cond_20
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1753
    iget-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mConsumeTouchEvent:Z

    if-ne v2, v1, :cond_1c

    .line 1754
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 1773
    :cond_d
    :goto_d
    return v0

    .line 1756
    :pswitch_e
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mTouchMovedWhileConsuming:Z

    goto :goto_d

    .line 1759
    :pswitch_11
    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mConsumeTouchEvent:Z

    .line 1760
    iget-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mTouchMovedWhileConsuming:Z

    if-ne v2, v1, :cond_1a

    .line 1761
    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mTouchMovedWhileConsuming:Z

    goto :goto_d

    :cond_1a
    move v0, v1

    .line 1764
    goto :goto_d

    .line 1768
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->isShown()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1769
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V

    .line 1770
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mConsumeTouchEvent:Z

    move v0, v1

    .line 1771
    goto :goto_d

    .line 1754
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
