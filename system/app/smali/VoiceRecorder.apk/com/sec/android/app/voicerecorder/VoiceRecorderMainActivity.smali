.class public Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.super Landroid/app/Activity;
.source "VoiceRecorderMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$12;,
        Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;,
        Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;,
        Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;,
        Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;
    }
.end annotation


# instance fields
.field private isBackKeyPressed:Z

.field private mBackgroundChecker:Landroid/os/Handler;

.field private mBtnCancel:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnCancelPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnRecOnly:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field private mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

.field mCancelPopup:Landroid/app/AlertDialog;

.field private mControlPanelAnimator:Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

.field private mDigitBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;

.field mDigitLayout:Landroid/widget/LinearLayout;

.field private mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

.field private mEventHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsActivityPaused:Z

.field private mIsRecordOrderAvailable:Z

.field private mLimitedFileSize:J

.field private mPossibleRenameTitle:Z

.field private mRecIcon:Landroid/widget/ImageView;

.field private mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

.field private mRecordStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

.field private mServiceCallback:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

.field private mServiceCommandReturnedTime:J

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceOnProcessing:Z

.field mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

.field private mShowCancelDialog:Z

.field private mTxtFileSize:Landroid/widget/TextView;

.field private mTxtFileTitle:Landroid/widget/TextView;

.field private mTxtSlash:Landroid/widget/TextView;

.field private mUIRuntimeInitHandler:Landroid/os/Handler;

.field private mUIUpdateHandler:Landroid/os/Handler;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

.field private renamed:Ljava/lang/String;

.field private skipSetResult:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    iput-wide v3, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCommandReturnedTime:J

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isBackKeyPressed:Z

    .line 101
    iput-wide v3, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsRecordOrderAvailable:Z

    .line 107
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecordStateReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mPossibleRenameTitle:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mShowCancelDialog:Z

    .line 122
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    .line 386
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    .line 388
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCallback:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    .line 422
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->skipSetResult:Z

    .line 423
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 689
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z

    .line 918
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$6;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBackgroundChecker:Landroid/os/Handler;

    .line 1053
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$7;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIRuntimeInitHandler:Landroid/os/Handler;

    .line 1098
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z

    .line 1452
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$11;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setButtonDimmedWhileProcessing(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->showCancelDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->changeUI(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->skipSetResult:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->skipSetResult:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isBackKeyPressed:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCommandReturnedTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCommandReturnedTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCallback:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsRecordOrderAvailable:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsRecordOrderAvailable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isNotElapsed1SEC()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mPossibleRenameTitle:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mPossibleRenameTitle:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->renameTitleTextWatcher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->renamed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;)Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecOnly:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecOnly:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancel:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancel:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancelPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancelPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtSlash:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/widget/PanelButton;)Lcom/sec/android/app/voicerecorder/widget/PanelButton;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mControlPanelAnimator:Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

    return-object v0
.end method

.method private changeUI(I)V
    .registers 10
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/high16 v7, -0x8000

    const/16 v6, 0xbd6

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1192
    const-string v2, "VoiceRecorderMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeUI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->interruptUiThreads()V

    .line 1195
    packed-switch p1, :pswitch_data_122

    .line 1253
    :goto_2f
    :pswitch_2f
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->isMmsMode()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1254
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xc09

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1256
    :cond_42
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbd7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1257
    return-void

    .line 1197
    :pswitch_4e
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v3

    if-eqz v3, :cond_83

    :goto_56
    invoke-static {v2, v6, v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xbeb

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xbd0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1201
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7c

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1204
    :cond_7c
    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setVolumeControlStream(I)V

    .line 1205
    invoke-static {p0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    goto :goto_2f

    :cond_83
    move v0, v1

    .line 1197
    goto :goto_56

    .line 1208
    :pswitch_85
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v6, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1209
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xbeb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1212
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1213
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->interruptUiThreads()V

    .line 1223
    :goto_a9
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setVolumeControlStream(I)V

    .line 1224
    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    goto/16 :goto_2f

    .line 1215
    :cond_b2
    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->start()V

    .line 1217
    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->start()V

    goto :goto_a9

    .line 1229
    :pswitch_cd
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v6, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbcd

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1232
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->start()V

    .line 1235
    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setVolumeControlStream(I)V

    goto/16 :goto_2f

    .line 1238
    :pswitch_f4
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v3

    if-eqz v3, :cond_11f

    :goto_fc
    invoke-static {v2, v6, v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xbd0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_117

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1244
    :cond_117
    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setVolumeControlStream(I)V

    .line 1245
    invoke-static {p0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    goto/16 :goto_2f

    :cond_11f
    move v0, v1

    .line 1238
    goto :goto_fc

    .line 1195
    nop

    :pswitch_data_122
    .packed-switch 0x3e8
        :pswitch_4e
        :pswitch_2f
        :pswitch_85
        :pswitch_cd
        :pswitch_f4
    .end packed-switch
.end method

.method private initializeUI()V
    .registers 4

    .prologue
    .line 1017
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "initializeUI()"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setUIViews()V

    .line 1019
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xbeb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1021
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->isMmsMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1022
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xc09

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1024
    :cond_28
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIRuntimeInitHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->setUIInitHander(Landroid/os/Handler;)V

    .line 1025
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->initViews(Landroid/content/Context;)V

    .line 1027
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v1, :cond_4f

    .line 1029
    :try_start_34
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v2}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1030
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->resetUI(Landroid/os/Handler;)V

    .line 1031
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0xbce

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_4f} :catch_50

    .line 1036
    :cond_4f
    :goto_4f
    return-void

    .line 1032
    :catch_50
    move-exception v0

    .line 1033
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4f
.end method

.method private interruptUiThreads()V
    .registers 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEQThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$EQThread;->interrupt()V

    .line 1261
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$DigitBlinkThread;->interrupt()V

    .line 1262
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIconBlinkThread:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$RecIconBlinkThread;->interrupt()V

    .line 1263
    :cond_1b
    return-void
.end method

.method private isNotElapsed1SEC()Z
    .registers 5

    .prologue
    .line 896
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCommandReturnedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isRecordOnlyMode()Z
    .registers 3

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, intentAction:Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1273
    const/4 v1, 0x1

    .line 1275
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private launchCommandThread(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V
    .registers 6
    .parameter "cmd"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    if-nez v0, :cond_c

    .line 886
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    .line 888
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->setCommand(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V

    .line 889
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 890
    return-void
.end method

.method private onRenameTitle()V
    .registers 4

    .prologue
    .line 531
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    .line 532
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 533
    .local v0, bt:Landroid/widget/Button;
    if-eqz v0, :cond_15

    .line 534
    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$4;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    .end local v0           #bt:Landroid/widget/Button;
    :cond_15
    return-void
.end method

.method private registerRecordStateListener()V
    .registers 3

    .prologue
    .line 1416
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1417
    const-string v1, "com.android.notification.voicerecordcommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1419
    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$10;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecordStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1440
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecordStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1441
    return-void
.end method

.method private renameTitleTextWatcher()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 556
    sget-object v5, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->renamed:Ljava/lang/String;

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getSaveDirPathCreated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->renamed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 565
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mime_type"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_66

    const-string v5, "audio/amr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 568
    const-string v5, ".amr"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .end local v1           #mimeType:Ljava/lang/String;
    :goto_49
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, check:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 581
    const v5, 0x7f060019

    invoke-static {p0, v5, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 582
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v5, 0xbeb

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 591
    :goto_65
    return v3

    .line 570
    .end local v0           #check:Ljava/io/File;
    .restart local v1       #mimeType:Ljava/lang/String;
    :cond_66
    const-string v5, ".3ga"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 573
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_6c
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getAudioFormat()Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 586
    .restart local v0       #check:Ljava/io/File;
    :cond_78
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->renamed:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 587
    const v5, 0x7f060018

    invoke-static {p0, v5, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_65

    :cond_87
    move v3, v4

    .line 591
    goto :goto_65
.end method

.method private setButtonDimmedWhileProcessing(Z)V
    .registers 5
    .parameter "dim"

    .prologue
    .line 906
    if-eqz p1, :cond_9

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbfe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 909
    :cond_9
    const-string v0, "VoiceRecorderMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setButton Dimmed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 911
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 912
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 913
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 914
    :cond_45
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 915
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setDimmed(Z)V

    .line 916
    :cond_57
    return-void
.end method

.method private setUIViews()V
    .registers 3

    .prologue
    .line 1039
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "setUIViews()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mDigitLayout:Landroid/widget/LinearLayout;

    .line 1042
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecIcon:Landroid/widget/ImageView;

    .line 1043
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mControlPanelAnimator:Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;

    .line 1045
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtSlash:Landroid/widget/TextView;

    .line 1050
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileSize:Landroid/widget/TextView;

    .line 1051
    return-void
.end method

.method private showCancelDialog()V
    .registers 4

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1378
    :cond_c
    :goto_c
    return-void

    .line 1347
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v0, :cond_c

    .line 1350
    :try_start_11
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_55

    move-result v0

    .line 1355
    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_c

    .line 1363
    :cond_1f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060027

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$8;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1371
    const v1, 0x7f060028

    new-instance v2, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$9;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_c

    .line 1351
    :catch_55
    move-exception v0

    .line 1352
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method private unRegisterRecordStateListener()V
    .registers 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecordStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecordStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRecordStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1448
    :cond_c
    return-void
.end method


# virtual methods
.method public OnVRSettingChanged(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1401
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "onVRSettingChanged"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    packed-switch p1, :pswitch_data_1e

    .line 1412
    :goto_a
    return-void

    .line 1404
    :pswitch_b
    if-nez p2, :cond_15

    .line 1405
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xc09

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 1407
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xc0a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 1402
    nop

    :pswitch_data_1e
    .packed-switch 0x1388
        :pswitch_b
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 1496
    invoke-static {p1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isMultiTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1497
    const/4 v0, 0x0

    .line 1499
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected doCancel()V
    .registers 2

    .prologue
    .line 879
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setButtonDimmedWhileProcessing(Z)V

    .line 881
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->CANCEL:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->launchCommandThread(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V

    .line 882
    return-void
.end method

.method protected doPause()V
    .registers 2

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 858
    :cond_a
    :goto_a
    return-void

    .line 855
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setButtonDimmedWhileProcessing(Z)V

    .line 857
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->PAUSE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->launchCommandThread(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V

    goto :goto_a
.end method

.method protected doRecord()V
    .registers 2

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 836
    :cond_a
    :goto_a
    return-void

    .line 833
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setButtonDimmedWhileProcessing(Z)V

    .line 835
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RECORD:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->launchCommandThread(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V

    goto :goto_a
.end method

.method protected doResume()V
    .registers 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 847
    :cond_a
    :goto_a
    return-void

    .line 844
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setButtonDimmedWhileProcessing(Z)V

    .line 846
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RESUME:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->launchCommandThread(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V

    goto :goto_a
.end method

.method protected doSave()V
    .registers 3

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isNotElapsed1SEC()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 873
    :cond_a
    :goto_a
    return-void

    .line 868
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    if-nez v0, :cond_17

    .line 869
    new-instance v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    .line 871
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->SAVE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->setCommand(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1315
    packed-switch p2, :pswitch_data_2c

    .line 1331
    :goto_3
    :pswitch_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1332
    return-void

    .line 1317
    :pswitch_7
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "got Record Command as result"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsRecordOrderAvailable:Z

    goto :goto_3

    .line 1321
    :pswitch_12
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "got Restart Command as result"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->startListActivityForResult(Landroid/app/Activity;)V

    goto :goto_3

    .line 1325
    :pswitch_1d
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "got RECORDING Command as result"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbfe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1315
    :pswitch_data_2c
    .packed-switch 0x7d0
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isBackKeyPressed:Z

    .line 1389
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v0, :cond_c

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->saveRecording()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_1a

    .line 1396
    :cond_c
    :goto_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1397
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1398
    return-void

    .line 1392
    :catch_1a
    move-exception v0

    .line 1393
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const v1, 0x7f060033

    const/4 v2, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->closeOptionsMenu()V

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-ne p1, v0, :cond_25

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 683
    :cond_20
    :goto_20
    return-void

    .line 608
    :cond_21
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->startListActivityForResult(Landroid/app/Activity;)V

    goto :goto_20

    .line 609
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;

    if-ne p1, v0, :cond_72

    .line 611
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z

    if-nez v0, :cond_20

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_36

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 616
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->getCommand()Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RECORD:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    if-eq v0, v1, :cond_4e

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceRunner:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->getCommand()Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->RESUME:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    if-ne v0, v1, :cond_51

    .line 619
    :cond_4e
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->interruptUiThreads()V

    .line 623
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mTxtFileTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createRenameDialog(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 627
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->onRenameTitle()V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mRenameDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$5;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_20

    .line 661
    :cond_72
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancel:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eq p1, v0, :cond_7a

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnCancelPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-ne p1, v0, :cond_7e

    .line 662
    :cond_7a
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->showCancelDialog()V

    goto :goto_20

    .line 663
    :cond_7e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRec:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eq p1, v0, :cond_86

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecOnly:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-ne p1, v0, :cond_bb

    .line 665
    :cond_86
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isOnVoIP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 668
    :cond_a4
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_20

    .line 671
    :cond_b1
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnList:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/widget/PanelButton;->setEnabled(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->doRecord()V

    goto/16 :goto_20

    .line 673
    :cond_bb
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnRecPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-ne p1, v0, :cond_c4

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->doResume()V

    goto/16 :goto_20

    .line 676
    :cond_c4
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnPause:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-ne p1, v0, :cond_cd

    .line 678
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->doPause()V

    goto/16 :goto_20

    .line 679
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStop:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-eq p1, v0, :cond_d5

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBtnStopPaused:Lcom/sec/android/app/voicerecorder/widget/PanelButton;

    if-ne p1, v0, :cond_20

    .line 681
    :cond_d5
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->doSave()V

    goto/16 :goto_20
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    .line 996
    const-string v2, "VoiceRecorderMainActivity"

    const-string v3, "onConfigurationChanged()"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1000
    .local v1, currentView:Landroid/view/View;
    const/4 v0, -0x1

    .line 1002
    .local v0, currentFocusId:I
    if-eqz v1, :cond_12

    .line 1003
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1005
    :cond_12
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setContentView(I)V

    .line 1008
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->initializeUI()V

    .line 1011
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v4, 0xc0b

    const/4 v5, -0x1

    invoke-static {v3, v4, v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1013
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1014
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 505
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->initAppContext(Landroid/content/Context;)V

    .line 509
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setFixedNewFileName(ZLjava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 514
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->setOnVRSettingChangedObserver(Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;)V

    .line 515
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->registerRecordStateListener()V

    .line 517
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 520
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 521
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1168
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->releaseUIInitHandler()V

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 1174
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    .line 1176
    :cond_11
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCallback:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    .line 1177
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->removeOnVRSettingChangedObserver(Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;)V

    .line 1178
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->unRegisterRecordStateListener()V

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 1182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1183
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 527
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 1300
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 1309
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 1305
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1306
    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1307
    const/4 v0, 0x1

    goto :goto_f

    .line 1303
    :pswitch_data_1c
    .packed-switch 0x7f090067
        :pswitch_10
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/16 v4, 0x3eb

    const/16 v3, 0x3ea

    const/4 v2, 0x1

    .line 1101
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mCancelPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1106
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mShowCancelDialog:Z

    .line 1109
    :cond_22
    iput-boolean v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z

    .line 1112
    :try_start_24
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->interruptUiThreads()V

    .line 1113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setWakeLock(Landroid/content/Context;Z)V

    .line 1117
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v0, :cond_74

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    .line 1121
    if-eq v0, v3, :cond_3f

    if-ne v0, v4, :cond_74

    .line 1122
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->saveRecording()Z

    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCallback:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->unregisterCallback(Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;)V

    .line 1126
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->unbindFromService(Landroid/content/Context;)V

    .line 1127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbcf

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbd8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1134
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->finish()V

    .line 1164
    :cond_74
    :goto_74
    return-void

    .line 1141
    :cond_75
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v0, :cond_88

    .line 1142
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    .line 1144
    if-eq v0, v3, :cond_83

    if-ne v0, v4, :cond_88

    .line 1145
    :cond_83
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->registerNotification()Z

    .line 1150
    :cond_88
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v0, :cond_93

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCallback:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->unregisterCallback(Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;)V

    .line 1154
    :cond_93
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->unbindFromService(Landroid/content/Context;)V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbcf

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_a4} :catch_a5

    goto :goto_74

    .line 1161
    :catch_a5
    move-exception v0

    .line 1162
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_74
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    .line 1280
    const-string v2, "VoiceRecorderMainActivity"

    const-string v3, "onPrepareOptionsMenu"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1284
    const/16 v1, 0x3e8

    .line 1286
    .local v1, state:I
    :try_start_c
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    if-eqz v2, :cond_16

    .line 1287
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    invoke-interface {v2}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_2f

    move-result v1

    .line 1292
    :cond_16
    :goto_16
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2a

    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1293
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1295
    :cond_2a
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 1288
    :catch_2f
    move-exception v0

    .line 1289
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 935
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 937
    iput-boolean v4, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z

    .line 940
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mShowCancelDialog:Z

    if-eqz v0, :cond_1c

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xc0e

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 942
    iput-boolean v4, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mShowCancelDialog:Z

    .line 947
    :cond_1c
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 970
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->checkMemory(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 971
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 992
    :goto_36
    return-void

    .line 975
    :cond_37
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 976
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.provider.MediaStore.extra.MAX_BYTES"

    const-wide/32 v2, 0x9c5e00

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J

    .line 978
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J

    const-wide/16 v2, 0x2800

    cmp-long v0, v0, v2

    if-gez v0, :cond_71

    .line 980
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060031

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 981
    invoke-virtual {p0, v4}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setResult(I)V

    .line 982
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->finish()V

    goto :goto_36

    .line 985
    :cond_65
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->isMmsMode()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 986
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getMMSSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J

    .line 990
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mBackgroundChecker:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_36
.end method
