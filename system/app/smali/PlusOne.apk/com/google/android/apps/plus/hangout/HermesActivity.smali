.class public Lcom/google/android/apps/plus/hangout/HermesActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HermesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;,
        Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;,
        Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;,
        Lcom/google/android/apps/plus/hangout/HermesActivity$HermesReceiver;
    }
.end annotation


# static fields
.field private static final HANGOUT_TYPE:Lcom/google/android/apps/plus/service/Hangout$RoomType;

.field private static final REMOTE_USER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccepted:Z

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAlertMediaPlayer:Landroid/media/MediaPlayer;

.field private mAvatarLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;

.field private mAwaitingVideoResponse:Z

.field private mCallOptionsMenu:Landroid/view/View;

.field private mCallStatus:Landroid/widget/TextView;

.field private mCallStatusBar:Landroid/view/View;

.field private mCancelCallRunnable:Ljava/lang/Runnable;

.field private mDuration:Landroid/widget/Chronometer;

.field private mEndCallButton:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field private mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field private mHermesActivityEventHandler:Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;

.field private mHermesInstanceId:J

.field private mHermesInviteId:Ljava/lang/String;

.field private mInviterMucJid:Ljava/lang/String;

.field private mIsCaller:Z

.field private mIsPlayingRingBack:Z

.field private mIsSpeakerphoneOn:Z

.field private mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;

.field private mRemoteMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private mRemoteMeetingMembers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteUserAvatar:Landroid/widget/ImageView;

.field private mRemoteUserId:Ljava/lang/String;

.field private mRemoteUserName:Landroid/widget/TextView;

.field private mRingToneMediaPlayer:Landroid/media/MediaPlayer;

.field private mSelfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private mSelfUserJid:Ljava/lang/String;

.field private mSlidingTabControl:Lcom/google/android/apps/plus/widget/SlidingTab;

.field private mStopRingingRunable:Ljava/lang/Runnable;

.field private mToggleAudioMenuButton:Landroid/widget/ImageButton;

.field private mToggleSpeakerphoneMenuButton:Landroid/widget/ImageButton;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;->WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sput-object v0, Lcom/google/android/apps/plus/hangout/HermesActivity;->HANGOUT_TYPE:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/HermesActivity;->REMOTE_USER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/google/android/apps/plus/hangout/HermesActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$1;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCancelCallRunnable:Ljava/lang/Runnable;

    .line 466
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z

    .line 472
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAwaitingVideoResponse:Z

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;

    .line 479
    new-instance v0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/HermesActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;

    .line 480
    new-instance v0, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/HermesActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAvatarLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;

    .line 486
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsPlayingRingBack:Z

    .line 487
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 495
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z

    .line 503
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHandler:Landroid/os/Handler;

    .line 504
    new-instance v0, Lcom/google/android/apps/plus/hangout/HermesActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$2;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mStopRingingRunable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingBackTone()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/HermesActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->setRemoteUserName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/plus/hangout/HermesActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSelfUserJid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->playRingBackTone()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCancelCallRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mEndCallButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/hangout/HermesActivity;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->setCallStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->processBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/MeetingMember;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSelfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccepted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteRequest()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->startDuration()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/widget/SlidingTab;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSlidingTabControl:Lcom/google/android/apps/plus/widget/SlidingTab;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mInviterMucJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->playRingTone()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/MeetingMember;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->hideCallStatus()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallOptionsMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAwaitingVideoResponse:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAwaitingVideoResponse:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/google/android/apps/plus/hangout/HermesActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->playSound(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->upgradeToHangout()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->updateAudioMuteMenuButtonState(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/apps/plus/hangout/HermesActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/google/android/apps/plus/hangout/HermesActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/google/android/apps/plus/hangout/HermesActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToggleSpeakerphoneMenuButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteMeetingMembers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/hangout/GCommApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingTone()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->exitHermes()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/HermesActivity;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->setAvatarBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/apps/plus/hangout/HermesActivity;->REMOTE_USER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private exitHermes()V
    .registers 2

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 614
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->finish()V

    .line 615
    return-void
.end method

.method private getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 2

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    return-object v0
.end method

.method private getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;
    .registers 2

    .prologue
    .line 516
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    return-object v0
.end method

.method private static getMucJidFromUserMucJid(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "userMucJid"

    .prologue
    const/16 v2, 0x2f

    .line 520
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 521
    .local v0, fsIndex:I
    if-lez v0, :cond_11

    .line 522
    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 524
    .end local p0
    :cond_11
    return-object p0
.end method

.method private getRoomName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 768
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getBackendSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, backend:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hrms_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    .local v1, roomName:Ljava/lang/StringBuilder;
    const-string v2, "dev@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #roomName:Ljava/lang/StringBuilder;
    const-string v2, "hermes_mescortes"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .restart local v1       #roomName:Ljava/lang/StringBuilder;
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nJoining hangout room: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 772
    :cond_43
    const-string v2, "canary@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2a

    invoke-static {v2}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 775
    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x28

    invoke-static {v2}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method

.method private hideCallStatus()V
    .registers 3

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatusBar:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 963
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatusBar:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 965
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    :cond_1b
    return-void
.end method

.method private playRingBackTone()V
    .registers 3

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsPlayingRingBack:Z

    if-nez v0, :cond_e

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsPlayingRingBack:Z

    .line 972
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 974
    :cond_e
    return-void
.end method

.method private playRingTone()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 984
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mStopRingingRunable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 985
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 986
    .local v0, alert:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1004
    :goto_1a
    return-void

    .line 989
    :cond_1b
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    .line 991
    :try_start_22
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 992
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 993
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 994
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_37} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_37} :catch_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_37} :catch_42
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_37} :catch_47

    goto :goto_1a

    .line 995
    :catch_38
    move-exception v1

    .line 996
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1a

    .line 997
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3d
    move-exception v1

    .line 998
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1a

    .line 999
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_42
    move-exception v1

    .line 1000
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1a

    .line 1001
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_47
    move-exception v1

    .line 1002
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a
.end method

.method private playSound(I)V
    .registers 5
    .parameter

    .prologue
    .line 1015
    :try_start_0
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAlertMediaPlayer:Landroid/media/MediaPlayer;

    .line 1016
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAlertMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x42c8

    const/high16 v2, 0x42c8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1017
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAlertMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_14} :catch_1f

    .line 1025
    :goto_14
    return-void

    .line 1018
    :catch_15
    move-exception v0

    .line 1019
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_14

    .line 1020
    :catch_1a
    move-exception v0

    .line 1021
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_14

    .line 1022
    :catch_1f
    move-exception v0

    .line 1023
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_14
.end method

.method private processBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 6
    .parameter "command"

    .prologue
    .line 529
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 530
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    .line 531
    .local v0, error:Lcom/google/wireless/realtimechat/proto/Client$Error;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got error from bunch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 549
    .end local v0           #error:Lcom/google/wireless/realtimechat/proto/Client$Error;
    :cond_24
    :goto_24
    return-void

    .line 532
    :cond_25
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 533
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got HangoutInviteResponse with inviteId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_24

    .line 535
    :cond_4e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteReplyResponse()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 536
    const-string v2, "Got HangoutInviteReplyResponse"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v1

    .line 538
    .local v1, response:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->hasInviteObsolete()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getInviteObsolete()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 540
    const-string v2, "Invite is obsolete. Exitting!"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->stopRingTone()V

    .line 542
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->exitHermes()V

    goto :goto_24

    .line 544
    .end local v1           #response:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    :cond_75
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 545
    const-string v2, "Got HangoutInviteFinishResponse"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_24

    .line 546
    :cond_81
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteKeepAliveResponse()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 547
    const-string v2, "Got HangoutInviteKeepAliveResponse"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_24
.end method

.method private sendBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)V
    .registers 6
    .parameter "commandBuilder"

    .prologue
    .line 587
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 590
    .local v0, batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->sendDataToBunch(Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method private sendInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)V
    .registers 5
    .parameter "status"

    .prologue
    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending invite finish request. Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->setInviteStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$InviteStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    .line 582
    .local v0, hangoutInviteFinishRequestBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->sendBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)V

    .line 584
    return-void
.end method

.method private sendInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V
    .registers 6
    .parameter "status"

    .prologue
    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending reply to invite. Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInviteeStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInviterId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInstanceId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->setInstanceId(J)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    .line 572
    .local v0, hangoutInvitereplyRequestBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->sendBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)V

    .line 574
    return-void
.end method

.method private sendInviteRequest()V
    .registers 5

    .prologue
    .line 552
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, inviteClientId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending invite request with invite client id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviteClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSelfUserJid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviterJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSelfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setInviterMucJid(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    .line 560
    .local v0, hangoutInviteRequestBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->sendBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)V

    .line 562
    return-void
.end method

.method private setAvatarBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "avatar"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 936
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 937
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserAvatar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 939
    :cond_f
    return-void
.end method

.method private setCallStatus(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 954
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatusBar:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 955
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatusBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 959
    :cond_18
    return-void
.end method

.method private setRemoteUserName(Ljava/lang/String;)V
    .registers 4
    .parameter "userName"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserName:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 924
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 927
    :cond_f
    return-void
.end method

.method private startDuration()V
    .registers 4

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mDuration:Landroid/widget/Chronometer;

    if-eqz v0, :cond_23

    .line 946
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mDuration:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 947
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mDuration:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mDuration:Landroid/widget/Chronometer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mDuration:Landroid/widget/Chronometer;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 951
    :cond_23
    return-void
.end method

.method private stopRingBackTone()V
    .registers 2

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsPlayingRingBack:Z

    if-eqz v0, :cond_c

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsPlayingRingBack:Z

    .line 979
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 981
    :cond_c
    return-void
.end method

.method private stopRingTone()V
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 1008
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRingToneMediaPlayer:Landroid/media/MediaPlayer;

    .line 1011
    :cond_c
    return-void
.end method

.method private updateAudioMuteMenuButtonState(Z)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 595
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToggleAudioMenuButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_b

    const v0, 0x7f020045

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 598
    return-void

    .line 595
    :cond_b
    const v0, 0x7f020044

    goto :goto_7
.end method

.method private upgradeToHangout()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 897
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommService()Lcom/google/android/apps/plus/hangout/GCommService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommService;->removeHangoutNotification()V

    .line 898
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->VIDEO_CONNECTED:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 900
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    const/4 v3, 0x0

    move-object v0, p0

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;ZZZ)Landroid/content/Intent;

    move-result-object v7

    .line 903
    .local v7, hangoutIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->setIsHermes(Z)V

    .line 904
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSpeakerPhone(Z)V

    .line 905
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/hangout/HermesActivity;->startActivity(Landroid/content/Intent;)V

    .line 906
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->finish()V

    .line 907
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 609
    return-object p0
.end method

.method protected getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 914
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 622
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    .line 624
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 626
    const v2, 0x7f030034

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->setContentView(I)V

    .line 629
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x680080

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 634
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 635
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 636
    const-string v2, "hermes_is_caller"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z

    .line 637
    const-string v2, "hermes_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 639
    const-string v2, "hermes_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/Hangout$Info;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 659
    :goto_3f
    const v2, 0x7f0d00c5

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserName:Landroid/widget/TextView;

    .line 660
    const v2, 0x7f0d00c3

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserAvatar:Landroid/widget/ImageView;

    .line 661
    const v2, 0x7f0d00c4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mDuration:Landroid/widget/Chronometer;

    .line 662
    const v2, 0x7f0d00a1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatus:Landroid/widget/TextView;

    .line 663
    const v2, 0x7f0d009f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallStatusBar:Landroid/view/View;

    .line 666
    const v2, 0x7f0d00c2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mEndCallButton:Landroid/view/View;

    .line 667
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mEndCallButton:Landroid/view/View;

    if-eqz v2, :cond_8b

    .line 668
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mEndCallButton:Landroid/view/View;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HermesActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$3;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    :cond_8b
    const v2, 0x7f0d00c1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/widget/SlidingTab;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSlidingTabControl:Lcom/google/android/apps/plus/widget/SlidingTab;

    .line 691
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSlidingTabControl:Lcom/google/android/apps/plus/widget/SlidingTab;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HermesActivity$4;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$4;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/widget/SlidingTab;->setOnTriggerListener(Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;)V

    .line 723
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mSlidingTabControl:Lcom/google/android/apps/plus/widget/SlidingTab;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/widget/SlidingTab;->resetView()V

    .line 724
    const v2, 0x7f0d00c0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mCallOptionsMenu:Landroid/view/View;

    .line 726
    const v2, 0x7f0d00c7

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToggleAudioMenuButton:Landroid/widget/ImageButton;

    .line 727
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToggleAudioMenuButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HermesActivity$5;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$5;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsSpeakerphoneOn:Z

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSpeakerPhone(Z)V

    .line 734
    const v2, 0x7f0d00c6

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToggleSpeakerphoneMenuButton:Landroid/widget/ImageButton;

    .line 735
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mToggleSpeakerphoneMenuButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HermesActivity$6;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$6;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    const v2, 0x7f0d00c8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;

    .line 746
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mUpgradeToHangoutMenuButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HermesActivity$7;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$7;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    new-instance v2, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/HermesActivity$1;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesActivityEventHandler:Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;

    .line 761
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 762
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 763
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 764
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAvatarLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HermesActivity$AvatarLoaderCallbacks;

    invoke-virtual {v2, v6, v0, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 765
    return-void

    .line 641
    .end local v0           #args:Landroid/os/Bundle;
    :cond_122
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z

    if-nez v2, :cond_187

    .line 642
    const-string v2, "hermes_inviter_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    .line 643
    const-string v2, "hermes_inviter_muc_jid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mInviterMucJid:Ljava/lang/String;

    .line 644
    const-string v2, "hermes_invite_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    .line 645
    const-string v2, "hermes_instance_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInstanceId:J

    .line 646
    new-instance v2, Lcom/google/android/apps/plus/service/Hangout$Info;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mInviterMucJid:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getMucJidFromUserMucJid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invited: RemoteUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". InviterMucJid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mInviterMucJid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". HangoutInviteId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 650
    :cond_187
    new-instance v2, Lcom/google/android/apps/plus/service/Hangout$Info;

    sget-object v3, Lcom/google/android/apps/plus/hangout/HermesActivity;->HANGOUT_TYPE:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    const-string v4, "hangout.com"

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getRoomName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 652
    const-string v2, "hermes_invitee_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    .line 653
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inviting: RemoteUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". HangoutRoomId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". HangoutInviteId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesInviteId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_3f
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 869
    if-ne p1, v2, :cond_49

    .line 870
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 871
    const v1, 0x7f0702d7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "inviter_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 873
    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 874
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 875
    const v1, 0x7f07016a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/hangout/HermesActivity$8;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$8;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 882
    const v1, 0x7f07016b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/hangout/HermesActivity$9;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HermesActivity$9;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 891
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 893
    :goto_48
    return-object v0

    :cond_49
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_48
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 845
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->setIntent(Landroid/content/Intent;)V

    .line 846
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 861
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 862
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 853
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 854
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 787
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 789
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 790
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v1, v2, :cond_18

    .line 791
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->finish()V

    .line 819
    :goto_17
    return-void

    .line 795
    :cond_18
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 796
    const-string v1, "Already in current hangout."

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_17

    .line 799
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 801
    const-string v1, "In another Hangout. Finishing activity"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 802
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mIsCaller:Z

    if-nez v1, :cond_47

    .line 803
    const-string v1, "Declining invitation"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 805
    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;->DECLINED:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HermesActivity;->sendInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$InviteeStatus;)V

    .line 807
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->finish()V

    goto :goto_17

    .line 811
    :cond_4b
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesActivityEventHandler:Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 814
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    .line 815
    .local v0, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-eq v0, v1, :cond_61

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v1, :cond_68

    .line 816
    :cond_61
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 818
    :cond_68
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_17
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 830
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStop()V

    .line 832
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v0, v1, :cond_c

    .line 838
    :goto_b
    return-void

    .line 836
    :cond_c
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getGCommApp()Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity;->mHermesActivityEventHandler:Lcom/google/android/apps/plus/hangout/HermesActivity$HermesActivityEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    goto :goto_b
.end method
