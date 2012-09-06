.class public Lcom/google/android/apps/plus/hangout/HangoutTabletTile;
.super Lcom/google/android/apps/plus/hangout/HangoutTile;
.source "HangoutTabletTile.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;,
        Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;,
        Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;,
        Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;,
        Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bradyLayoutContainer:Landroid/widget/RelativeLayout;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

.field private final handler:Landroid/os/Handler;

.field private hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

.field private instructionsView:Landroid/view/View;

.field private instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

.field private isRegistered:Z

.field private isTileStarted:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarDismissalTimer:Landroid/os/CountDownTimer;

.field private mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

.field private mCenterStageContainer:Landroid/widget/RelativeLayout;

.field private mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

.field private mCurrentStageMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

.field private mEnableStageIcons:Z

.field private mFilmStripAnimOut:Landroid/view/animation/Animation;

.field private mFilmStripContainer:Landroid/view/View;

.field private mFilmStripIsPaused:Z

.field private mFilmStripPauseTimer:Landroid/os/CountDownTimer;

.field private mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

.field private mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field private mInset:Lcom/google/android/apps/plus/views/ScaledLayout;

.field private mInsetVideo:Landroid/widget/FrameLayout;

.field private mInviteesContainer:Landroid/view/View;

.field private mInviteesMessageView:Landroid/widget/TextView;

.field private mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

.field private mIsAudioEnabled:Z

.field private mIsAudioMuted:Z

.field private mIsHangoutLite:Z

.field private mIsVideoMuted:Z

.field private mJoinButton:Landroid/widget/Button;

.field private mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

.field private mMessageContainer:Landroid/view/View;

.field private mMessageView:Landroid/widget/TextView;

.field private mNeedToToastForInvite:Z

.field private mSlideInUp:Landroid/view/animation/Animation;

.field private mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

.field private mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressText:Landroid/widget/TextView;

.field private stageLayoutContainer:Landroid/widget/RelativeLayout;

.field private state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field private stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 585
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 589
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 592
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/HangoutTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 556
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioEnabled:Z

    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handler:Landroid/os/Handler;

    .line 567
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripIsPaused:Z

    .line 572
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsHangoutLite:Z

    .line 579
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    .line 593
    const-string v0, "HangoutTabletTile(): this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateHangoutViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->memberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showFilmStrip()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->checkAndDismissCallgrokLogUploadProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->toggleActionBar()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handleHorizontalTwoSwipe(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showActionBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->fadeOutInstructionsView()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->pauseFilmStrip()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripPauseTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->resumeFilmStrip()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateMainVideoOverlayStatus(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handleAuthenticationError()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showUpgradeClientDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method private addVideoToCenterStage(Lcom/google/android/apps/plus/hangout/HangoutVideoView;)V
    .registers 4
    .parameter "video"

    .prologue
    .line 1395
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1396
    .local v0, currentVideoContainer:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_b

    .line 1410
    :goto_a
    return-void

    .line 1401
    :cond_b
    if-eqz v0, :cond_10

    .line 1402
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1405
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1407
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;)V

    .line 1408
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1409
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_a
.end method

.method private addVideoToInset(Lcom/google/android/apps/plus/hangout/HangoutVideoView;)V
    .registers 4
    .parameter "video"

    .prologue
    .line 1376
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1377
    .local v0, currentVideoContainer:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInsetVideo:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_b

    .line 1392
    :goto_a
    return-void

    .line 1382
    :cond_b
    if-eqz v0, :cond_10

    .line 1383
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1385
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInsetVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1386
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInsetVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1388
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;)V

    .line 1389
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInsetVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1390
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInsetVideo:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_a
.end method

.method private checkAndDismissCallgrokLogUploadProgressDialog()V
    .registers 4

    .prologue
    .line 1793
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "log_upload"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1795
    .local v0, callgrokLogUploadProgressDialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_13

    .line 1796
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1798
    :cond_13
    return-void
.end method

.method private exitHangout()V
    .registers 3

    .prologue
    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutTabletTile onExit with state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-nez v0, :cond_1d

    .line 1373
    :goto_1c
    return-void

    .line 1366
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1367
    const-string v0, "Setting userRequestedMeetingExit to true"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    goto :goto_1c

    .line 1370
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 1371
    const-string v0, "Did not set userRequestedMeetingExit"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private fadeOutInstructionsView()V
    .registers 4

    .prologue
    .line 1351
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_28

    .line 1352
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1353
    .local v0, fadeOut:Landroid/view/animation/Animation;
    new-instance v1, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsView:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1354
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1356
    .end local v0           #fadeOut:Landroid/view/animation/Animation;
    :cond_28
    return-void
.end method

.method private getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 2

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    return-object v0
.end method

.method private getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    return-object v0
.end method

.method private handleAuthenticationError()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1335
    const-string v0, "HangoutLaunchActivity#handleAuthenticationError: state=%s appState=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v3, v1, v2

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1337
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->$assertionsDisabled:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1338
    :cond_28
    const v0, 0x7f08035d

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    .line 1339
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 1340
    return-void
.end method

.method private handleHorizontalTwoSwipe(Z)V
    .registers 2
    .parameter "isLeftToRight"

    .prologue
    .line 901
    return-void
.end method

.method private hideActionBar()V
    .registers 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_5

    .line 1074
    :cond_4
    :goto_4
    return-void

    .line 1062
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/util/AccessibilityUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1070
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1072
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_4
.end method

.method private hideFilmStrip()V
    .registers 3

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 1831
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1833
    :cond_f
    return-void
.end method

.method private memberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "member"

    .prologue
    .line 1899
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v1, v2, :cond_20

    .line 1902
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripIsPaused:Z

    if-eqz v1, :cond_1f

    .line 1903
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 1904
    .local v0, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v1

    if-ne v1, p1, :cond_1f

    .line 1906
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 1907
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateMainVideoStreaming()V

    .line 1913
    .end local v0           #gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    :cond_1f
    :goto_1f
    return-void

    .line 1910
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v1, v2, :cond_1f

    goto :goto_1f
.end method

.method private pauseFilmStrip()V
    .registers 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripPauseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1838
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripIsPaused:Z

    if-nez v0, :cond_11

    .line 1839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripIsPaused:Z

    .line 1840
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->onPause()V

    .line 1842
    :cond_11
    return-void
.end method

.method private registerInteractionHandlers()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x7530

    const-wide/16 v2, 0x1388

    const-wide/16 v8, 0x1f4

    .line 693
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$3;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$3;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;JJ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;

    .line 707
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$4;

    move-object v1, p0

    move-wide v2, v10

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$4;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;JJ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripPauseTimer:Landroid/os/CountDownTimer;

    .line 721
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_27

    .line 722
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$5;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 735
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripAnimOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$6;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 752
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mSlideInUp:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$7;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 771
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInsetVideo:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$8;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$9;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 852
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    .line 853
    .local v7, animOut:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 854
    .local v6, animIn:Landroid/view/animation/Animation;
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 855
    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 856
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;

    invoke-direct {v1, p0, v7, v6}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$10;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setVideoChangeListener(Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;)V

    .line 897
    return-void
.end method

.method private resumeFilmStrip()V
    .registers 2

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripPauseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1847
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripIsPaused:Z

    if-eqz v0, :cond_11

    .line 1848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripIsPaused:Z

    .line 1849
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->onResume()V

    .line 1851
    :cond_11
    return-void
.end method

.method private scheduleInstructionsViewFadeOut()V
    .registers 5

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1345
    return-void
.end method

.method private sendTransfer()V
    .registers 6

    .prologue
    .line 1782
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 1784
    .local v0, inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v1, "Transfer hangout"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    const-string v2, "TRANSFER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->inviteToMeeting(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;ZZ)V

    .line 1789
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v2, 0x7f08039c

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    .line 1790
    return-void
.end method

.method private setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 5
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 1801
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1816
    :cond_8
    :goto_8
    return-void

    .line 1805
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_29

    .line 1806
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mEnableStageIcons:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getCurrentVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 1807
    if-eqz p2, :cond_23

    .line 1808
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->showAudioMutedStatus()V

    goto :goto_8

    .line 1810
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->hideAudioMutedStatus()V

    goto :goto_8

    .line 1813
    :cond_29
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_8

    goto :goto_8
.end method

.method private setGreenRoomOnlyViewsToGone()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1413
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1414
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1415
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1416
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1417
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1418
    return-void
.end method

.method private setHangoutOnlyViewsToGone()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1421
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->setVisibility(I)V

    .line 1422
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInset:Lcom/google/android/apps/plus/views/ScaledLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ScaledLayout;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->bradyLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1424
    return-void
.end method

.method private setInHangoutState()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1622
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->$assertionsDisabled:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1624
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_36

    .line 1625
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stageLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1626
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->bradyLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1629
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->setVisibility(I)V

    .line 1630
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setVisibility(I)V

    .line 1633
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showFilmStrip()V

    .line 1639
    :cond_32
    :goto_32
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateHangoutViews()V

    .line 1640
    return-void

    .line 1634
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_32

    .line 1636
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stageLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_32
.end method

.method private setStageViewMode(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;)V
    .registers 5
    .parameter "newMode"

    .prologue
    const/4 v2, 0x0

    .line 1501
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCurrentStageMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    if-ne p1, v0, :cond_c

    .line 1526
    :cond_b
    :goto_b
    return-void

    .line 1505
    :cond_c
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTabletTile$StageViewMode:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown stage layout mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    goto :goto_b

    .line 1507
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1508
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->addVideoToCenterStage(Lcom/google/android/apps/plus/hangout/HangoutVideoView;)V

    .line 1509
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInset:Lcom/google/android/apps/plus/views/ScaledLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ScaledLayout;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1525
    :goto_44
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCurrentStageMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    goto :goto_b

    .line 1514
    :pswitch_47
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1515
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->addVideoToCenterStage(Lcom/google/android/apps/plus/hangout/HangoutVideoView;)V

    .line 1516
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->addVideoToInset(Lcom/google/android/apps/plus/hangout/HangoutVideoView;)V

    .line 1517
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInset:Lcom/google/android/apps/plus/views/ScaledLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/ScaledLayout;->setVisibility(I)V

    .line 1518
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_44

    .line 1505
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_47
    .end packed-switch
.end method

.method private setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    .registers 7
    .parameter "state"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1429
    .local v0, previousState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1430
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v2

    if-nez v2, :cond_a9

    .line 1431
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setHangoutOnlyViewsToGone()V

    .line 1432
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v2, v3, :cond_4c

    .line 1433
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_ONLY:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setStageViewMode(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;)V

    .line 1437
    :cond_31
    :goto_31
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1440
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f2

    .line 1497
    :cond_4b
    :goto_4b
    return-void

    .line 1434
    :cond_4c
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v2, v3, :cond_31

    goto :goto_31

    .line 1443
    :pswitch_53
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->skipGreenRoom:Z

    if-nez v2, :cond_5a

    .line 1444
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->scheduleInstructionsViewFadeOut()V

    .line 1451
    :cond_5a
    :pswitch_5a
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1452
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1453
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1454
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressText:Landroid/widget/TextView;

    const v2, 0x7f080379

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4b

    .line 1457
    :pswitch_72
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1458
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    invoke-static {}, Lcom/google/android/apps/plus/hangout/StressMode;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_80

    const/4 v1, 0x1

    :cond_80
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1459
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1460
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b

    .line 1463
    :pswitch_8e
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->fadeOutInstructionsView()V

    .line 1464
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1465
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1466
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1467
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressText:Landroid/widget/TextView;

    const v2, 0x7f08037b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4b

    .line 1471
    :cond_a9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setGreenRoomOnlyViewsToGone()V

    .line 1472
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setInHangoutState()V

    .line 1474
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isTileStarted:Z

    if-eqz v1, :cond_4b

    .line 1475
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1477
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v1, v2, :cond_c8

    .line 1478
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->onResume()V

    .line 1480
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->resumeFilmStrip()V

    goto :goto_4b

    .line 1481
    :cond_c8
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v1, v2, :cond_4b

    goto/16 :goto_4b

    .line 1486
    :cond_d0
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v1, v2, :cond_ea

    .line 1487
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->onResume()V

    .line 1488
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->onResume()V

    .line 1489
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->resumeFilmStrip()V

    .line 1490
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->onResume()V

    goto/16 :goto_4b

    .line 1491
    :cond_ea
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v1, v2, :cond_4b

    goto/16 :goto_4b

    .line 1440
    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_53
        :pswitch_5a
        :pswitch_5a
        :pswitch_72
        :pswitch_8e
    .end packed-switch
.end method

.method private showActionBar()V
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_5

    .line 1054
    :goto_4
    return-void

    .line 1052
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1053
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_4
.end method

.method private showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    .registers 6
    .parameter "error"
    .parameter "finishOnOk"

    .prologue
    const v2, 0x7f08035b

    .line 1643
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$12;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 1663
    :goto_e
    return-void

    .line 1645
    :pswitch_f
    const v0, 0x7f08035d

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_e

    .line 1648
    :pswitch_16
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_e

    .line 1651
    :pswitch_1a
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_e

    .line 1654
    :pswitch_1e
    const v0, 0x7f08035c

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_e

    .line 1657
    :pswitch_25
    const v0, 0x7f080376

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_e

    .line 1660
    :pswitch_2c
    const v0, 0x7f080375

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_e

    .line 1643
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_f
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method private showFilmStrip()V
    .registers 4

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v0

    .line 1822
    .local v0, memberCount:I
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsHangoutLite:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_26

    .line 1824
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mSlideInUp:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1826
    :cond_26
    return-void
.end method

.method private showUpgradeClientDialog()V
    .registers 7

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080367

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1669
    .local v1, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080369

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08020a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x1080027

    invoke-static {v2, v1, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1673
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setCancelable(Z)V

    .line 1674
    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$11;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$11;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V

    .line 1701
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1702
    return-void
.end method

.method private toggleActionBar()V
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    .line 1038
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1039
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V

    .line 1044
    :cond_f
    :goto_f
    return-void

    .line 1041
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showActionBar()V

    goto :goto_f
.end method

.method private updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "muted"

    .prologue
    .line 1706
    if-nez p1, :cond_13

    .line 1707
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v1

    .line 1714
    .local v1, isAudioMuted:Z
    :goto_e
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z

    if-nez v3, :cond_18

    .line 1747
    :cond_12
    :goto_12
    return-void

    .line 1709
    .end local v1           #isAudioMuted:Z
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .restart local v1       #isAudioMuted:Z
    goto :goto_e

    .line 1721
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->hasAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_5b

    :cond_34
    const/4 v0, 0x1

    .line 1724
    .local v0, isAudioEnabled:Z
    :goto_35
    const/4 v2, 0x0

    .line 1725
    .local v2, needInvalidate:Z
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioMuted:Z

    if-eq v3, v1, :cond_3d

    .line 1726
    const/4 v2, 0x1

    .line 1727
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioMuted:Z

    .line 1729
    :cond_3d
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioEnabled:Z

    if-eq v3, v0, :cond_44

    .line 1730
    const/4 v2, 0x1

    .line 1731
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioEnabled:Z

    .line 1733
    :cond_44
    if-eqz v2, :cond_4b

    .line 1734
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->invalidateOptionsMenu()V

    .line 1738
    :cond_4b
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v4, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v3, v4, :cond_63

    .line 1739
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioMuted:Z

    if-eqz v3, :cond_5d

    .line 1740
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->showAudioMutedStatus()V

    goto :goto_12

    .line 1721
    .end local v0           #isAudioEnabled:Z
    .end local v2           #needInvalidate:Z
    :cond_5b
    const/4 v0, 0x0

    goto :goto_35

    .line 1742
    .restart local v0       #isAudioEnabled:Z
    .restart local v2       #needInvalidate:Z
    :cond_5d
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->hideAudioMutedStatus()V

    goto :goto_12

    .line 1744
    :cond_63
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v4, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v3, v4, :cond_12

    goto :goto_12
.end method

.method private updateHangoutViews()V
    .registers 12

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1529
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    .line 1534
    .local v4, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIsHangoutLite()Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsHangoutLite:Z

    .line 1536
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->invalidateOptionsMenu()V

    .line 1538
    if-eqz v4, :cond_2d

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v9, :cond_33

    .line 1539
    :cond_2d
    sget-object v7, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_ONLY:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setStageViewMode(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;)V

    .line 1604
    :cond_32
    :goto_32
    return-void

    .line 1543
    :cond_33
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v2

    .line 1544
    .local v2, memberCount:I
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v0

    .line 1545
    .local v0, hadParticipants:Z
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v9

    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Creation:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v9, v10, :cond_7d

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRingInvitees()Z

    move-result v9

    if-eqz v9, :cond_7d

    move v5, v7

    .line 1548
    .local v5, showInvitees:Z
    :goto_4e
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v9, :cond_7f

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v9

    if-eqz v9, :cond_7f

    move v1, v7

    .line 1551
    .local v1, inMeeting:Z
    :goto_5b
    if-eqz v0, :cond_81

    .line 1552
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesContainer:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1565
    :cond_62
    :goto_62
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v9}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1567
    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHasSomeConnectedParticipant()Z

    move-result v9

    if-eqz v9, :cond_91

    .line 1568
    sget-object v7, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_AND_REMOTE:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setStageViewMode(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;)V

    .line 1569
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1570
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesContainer:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32

    .end local v1           #inMeeting:Z
    .end local v5           #showInvitees:Z
    :cond_7d
    move v5, v8

    .line 1545
    goto :goto_4e

    .restart local v5       #showInvitees:Z
    :cond_7f
    move v1, v8

    .line 1548
    goto :goto_5b

    .line 1553
    .restart local v1       #inMeeting:Z
    :cond_81
    if-eqz v5, :cond_62

    if-eqz v1, :cond_62

    .line 1554
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateInviteesView(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)Z

    move-result v5

    .line 1555
    if-eqz v5, :cond_62

    .line 1556
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesContainer:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_62

    .line 1573
    :cond_91
    sget-object v9, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_LOCAL_ONLY:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setStageViewMode(Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;)V

    .line 1575
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v9

    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v9, v10, :cond_bb

    .line 1576
    if-ne v2, v7, :cond_32

    if-nez v0, :cond_32

    .line 1577
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08038f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1578
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_32

    .line 1583
    :cond_bb
    if-eqz v0, :cond_ea

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v9

    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-eq v9, v10, :cond_cf

    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRingInvitees()Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 1587
    :cond_cf
    if-ne v2, v7, :cond_32

    if-nez v0, :cond_32

    .line 1588
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08038e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_32

    .line 1594
    :cond_ea
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getWaitingMessage(Z)Ljava/lang/String;

    move-result-object v3

    .line 1595
    .local v3, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v7, :cond_fb

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v7

    if-eqz v7, :cond_fb

    move v6, v8

    .line 1596
    .local v6, visibility:I
    :cond_fb
    if-eqz v1, :cond_32

    .line 1597
    if-eqz v5, :cond_106

    .line 1598
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_32

    .line 1600
    :cond_106
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1601
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_32
.end method

.method private updateInviteesView(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)Z
    .registers 7
    .parameter "nativeWrapper"

    .prologue
    const/4 v3, 0x0

    .line 1607
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1608
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "audience"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1610
    const-string v2, "audience"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1612
    .local v1, invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->setInvitees(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1613
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getAvatarCount()I

    move-result v2

    if-lez v2, :cond_39

    .line 1614
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->setVisibility(I)V

    .line 1615
    const/4 v2, 0x1

    .line 1618
    .end local v1           #invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :goto_38
    return v2

    :cond_39
    move v2, v3

    goto :goto_38
.end method

.method private updateMainVideoOverlayStatus(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_2a

    .line 1317
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mEnableStageIcons:Z

    if-eqz v0, :cond_2a

    .line 1318
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1320
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->hidePinnedStatus()V

    .line 1325
    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->isAudioMuted(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1326
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->showAudioMutedStatus()V

    .line 1332
    :cond_2a
    :goto_2a
    return-void

    .line 1323
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->showPinnedStatus()V

    goto :goto_1d

    .line 1328
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->hideAudioMutedStatus()V

    goto :goto_2a
.end method

.method private updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 1751
    if-nez p1, :cond_13

    .line 1752
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v0

    .line 1759
    .local v0, isOutgoingVideoMute:Z
    :goto_e
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z

    if-nez v1, :cond_18

    .line 1767
    :cond_12
    :goto_12
    return-void

    .line 1754
    .end local v0           #isOutgoingVideoMute:Z
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .restart local v0       #isOutgoingVideoMute:Z
    goto :goto_e

    .line 1763
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsVideoMuted:Z

    if-eq v1, v0, :cond_12

    .line 1764
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsVideoMuted:Z

    .line 1765
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->invalidateOptionsMenu()V

    goto :goto_12
.end method


# virtual methods
.method public final hideChild(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    if-ne p1, v0, :cond_7

    .line 1860
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideFilmStrip()V

    .line 1862
    :cond_7
    return-void
.end method

.method public isTileStarted()Z
    .registers 2

    .prologue
    .line 1293
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isTileStarted:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1029
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onActivityResult(IILandroid/content/Intent;)V

    .line 1030
    if-nez p1, :cond_d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    if-eqz p3, :cond_d

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mNeedToToastForInvite:Z

    .line 1034
    :cond_d
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    if-ne p1, v0, :cond_7

    .line 1882
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showFilmStrip()V

    .line 1884
    :cond_7
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_f

    .line 1893
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideFilmStrip()V

    .line 1895
    :cond_f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 602
    const-string v1, "HangoutTabletTile.onCreate: this=%s context=%s eventHandler=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    if-eqz p1, :cond_28

    .line 605
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->values()[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    const-string v2, "HangoutTile_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 608
    :cond_28
    sget-object v1, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_STAGE_STATUS:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mEnableStageIcons:Z

    .line 610
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    .line 611
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBar:Landroid/app/ActionBar;

    .line 613
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 615
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03004f

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 618
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    .line 619
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_INVALID:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCurrentStageMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    .line 622
    const v1, 0x7f090102

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stageLayoutContainer:Landroid/widget/RelativeLayout;

    .line 623
    const v1, 0x7f09010b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->bradyLayoutContainer:Landroid/widget/RelativeLayout;

    .line 624
    const v1, 0x7f0900fd

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ScaledLayout;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInset:Lcom/google/android/apps/plus/views/ScaledLayout;

    .line 625
    const v1, 0x7f090105

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInsetVideo:Landroid/widget/FrameLayout;

    .line 626
    new-instance v1, Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/google/android/apps/plus/hangout/LocalVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    .line 627
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 628
    const v1, 0x7f090107

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripContainer:Landroid/view/View;

    .line 630
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V

    .line 631
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isAnyCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 632
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V

    .line 636
    :cond_a9
    const v1, 0x7f09010c

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsView:Landroid/view/View;

    .line 637
    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    .line 643
    const v1, 0x7f09010e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    .line 644
    const v1, 0x7f09010f

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    .line 645
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mJoinButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    const v1, 0x7f090110

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressBar:Landroid/widget/ProgressBar;

    .line 666
    const v1, 0x7f090111

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->progressText:Landroid/widget/TextView;

    .line 669
    const v1, 0x7f090117

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/ToastsView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    .line 670
    const v1, 0x7f090103

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageContainer:Landroid/widget/RelativeLayout;

    .line 671
    new-instance v1, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    .line 672
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 673
    const v1, 0x7f090109

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    .line 674
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 675
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 677
    const v1, 0x7f090116

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageContainer:Landroid/view/View;

    .line 678
    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mMessageView:Landroid/widget/TextView;

    .line 679
    const v1, 0x7f090112

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesContainer:Landroid/view/View;

    .line 680
    const v1, 0x7f090115

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesMessageView:Landroid/widget/TextView;

    .line 681
    const v1, 0x7f090113

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/HangoutInviteesView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    .line 683
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mSlideInUp:Landroid/view/animation/Animation;

    .line 684
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripAnimOut:Landroid/view/animation/Animation;

    .line 687
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->registerInteractionHandlers()V

    .line 688
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 908
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 911
    const v2, 0x7f100016

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 912
    const v2, 0x7f100014

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 913
    const v2, 0x7f100012

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 914
    const v2, 0x7f10001c

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 915
    const v2, 0x7f100017

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 918
    const v2, 0x7f0902e2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 919
    .local v1, videoItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isAnyCameraAvailable()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 922
    const v2, 0x7f0902d4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 923
    .local v0, cameraItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isRearFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x1

    :goto_43
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 925
    return-void

    .line 923
    :cond_47
    const/4 v2, 0x0

    goto :goto_43
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 985
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 988
    .local v1, itemId:I
    const v2, 0x7f0902d8

    if-ne v1, v2, :cond_11

    .line 989
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V

    .line 990
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->exitHangout()V

    .line 1024
    :goto_10
    return v3

    .line 995
    :cond_11
    const v2, 0x7f0902d4

    if-ne v1, v2, :cond_23

    .line 997
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xc9

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 998
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V

    goto :goto_10

    .line 1003
    :cond_23
    const v2, 0x7f0902ce

    if-ne v1, v2, :cond_40

    .line 1004
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 1005
    .local v0, app:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v2

    if-nez v2, :cond_3e

    move v2, v3

    :goto_37
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->setAudioMute(Z)V

    .line 1006
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V

    goto :goto_10

    .line 1005
    :cond_3e
    const/4 v2, 0x0

    goto :goto_37

    .line 1011
    .end local v0           #app:Lcom/google/android/apps/plus/hangout/GCommApp;
    :cond_40
    const v2, 0x7f0902e2

    if-ne v1, v2, :cond_52

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xca

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 1013
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V

    goto :goto_10

    .line 1018
    :cond_52
    const v2, 0x7f0902d9

    if-ne v1, v2, :cond_5e

    .line 1019
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->inviteMoreParticipants()V

    goto :goto_10

    .line 1024
    :cond_5e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_10
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 1253
    const-string v0, "HangoutTabletTile.onPause: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1256
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1258
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    .line 932
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 935
    const v5, 0x7f0902e2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 936
    .local v4, videoItem:Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 939
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsVideoMuted:Z

    .line 940
    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsVideoMuted:Z

    if-eqz v5, :cond_6e

    .line 942
    const v1, 0x7f02007f

    .line 943
    .local v1, iconId:I
    const v3, 0x7f08034a

    .line 949
    .local v3, titleId:I
    :goto_28
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 950
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 954
    .end local v1           #iconId:I
    .end local v3           #titleId:I
    :cond_2e
    const v5, 0x7f0902ce

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 955
    .local v0, audioItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 958
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioMuted:Z

    .line 960
    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioMuted:Z

    if-eqz v5, :cond_75

    .line 962
    const v1, 0x7f020079

    .line 963
    .restart local v1       #iconId:I
    const v3, 0x7f080347

    .line 969
    .restart local v3       #titleId:I
    :goto_53
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 970
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 972
    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsAudioEnabled:Z

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 976
    .end local v1           #iconId:I
    .end local v3           #titleId:I
    :cond_5e
    const v5, 0x7f0902d9

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 977
    .local v2, inviteItem:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mIsHangoutLite:Z

    if-nez v5, :cond_7c

    const/4 v5, 0x1

    :goto_6a
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 978
    return-void

    .line 946
    .end local v0           #audioItem:Landroid/view/MenuItem;
    .end local v2           #inviteItem:Landroid/view/MenuItem;
    :cond_6e
    const v1, 0x7f02007e

    .line 947
    .restart local v1       #iconId:I
    const v3, 0x7f080349

    .restart local v3       #titleId:I
    goto :goto_28

    .line 966
    .end local v1           #iconId:I
    .end local v3           #titleId:I
    .restart local v0       #audioItem:Landroid/view/MenuItem;
    :cond_75
    const v1, 0x7f020078

    .line 967
    .restart local v1       #iconId:I
    const v3, 0x7f080346

    .restart local v3       #titleId:I
    goto :goto_53

    .line 977
    .end local v1           #iconId:I
    .end local v3           #titleId:I
    .restart local v2       #inviteItem:Landroid/view/MenuItem;
    :cond_7c
    const/4 v5, 0x0

    goto :goto_6a
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 1109
    const-string v0, "HangoutTabletTile.onResume: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-nez v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1206
    .local v0, stateToSave:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    :goto_6
    const-string v1, "HangoutTabletTile.onSaveInstanceState: this=%s context=%s eventHandler=%s stateToSave:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    const-string v1, "HangoutTile_state"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    return-void

    .line 1205
    .end local v0           #stateToSave:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_6
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 1081
    const-string v0, "HangoutTabletTile.onStart: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActivity:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->startingHangoutActivity(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    .line 1085
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 1278
    const-string v0, "HangoutTabletTile.onStop: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->stoppingHangoutActivity()V

    .line 1282
    return-void
.end method

.method public onTilePause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1214
    const-string v0, "HangoutTabletTile.onTilePause: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v0, v1, :cond_20

    .line 1246
    :goto_1f
    return-void

    .line 1220
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1221
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_59

    .line 1222
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->onPause()V

    .line 1223
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->onPause()V

    .line 1224
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->pauseFilmStrip()V

    .line 1232
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_68

    .line 1233
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mLocalVideoView:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->onPause()V

    .line 1234
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->dismissParticipantMenuDialog()V

    .line 1235
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;->STAGE_MODE_INVALID:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCurrentStageMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$StageViewMode;

    .line 1243
    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->checkAndDismissCallgrokLogUploadProgressDialog()V

    .line 1245
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isTileStarted:Z

    goto :goto_1f

    .line 1225
    :cond_59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_3f

    goto :goto_3f

    .line 1229
    :cond_60
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3f

    .line 1236
    :cond_68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_BRADY_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_53

    goto :goto_53
.end method

.method public onTileResume()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1115
    const-string v1, "HangoutTabletTile.onTileResume: this=%s context=%s eventHandler=%s hangoutInfo=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->$assertionsDisabled:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_2b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1122
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showActionBar()V

    .line 1124
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v7}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 1125
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v1, v2, :cond_52

    .line 1126
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(Ljava/lang/String;Z)V

    .line 1197
    :goto_51
    return-void

    .line 1130
    :cond_52
    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isTileStarted:Z

    .line 1132
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 1134
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne v1, v2, :cond_6e

    .line 1135
    const v1, 0x7f080350

    invoke-virtual {p0, v1, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_51

    .line 1139
    :cond_6e
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mNeedToToastForInvite:Z

    if-eqz v1, :cond_7c

    .line 1140
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v2, 0x7f08039a

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    .line 1141
    iput-boolean v6, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mNeedToToastForInvite:Z

    .line 1144
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->hasAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1148
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1155
    :cond_93
    :goto_93
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1157
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_51

    .line 1149
    :cond_a9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1152
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v2, 0x7f080390

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    goto :goto_93

    .line 1159
    :cond_c0
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v1, :cond_11c

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 1160
    iput-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/ExitHistory;->exitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 1164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 1165
    const-string v1, "Stopping hangout tile. Exit from hangout already reported."

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 1170
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/ExitHistory;->exitedNormally(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 1171
    const v1, 0x7f080374

    invoke-virtual {p0, v1, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    .line 1182
    :goto_fa
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordExitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)V

    goto/16 :goto_51

    .line 1173
    :cond_105
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/ExitHistory;->getError(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v0

    .line 1174
    .local v0, error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    if-eqz v0, :cond_115

    .line 1176
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    goto :goto_fa

    .line 1179
    :cond_115
    const v1, 0x7f080373

    invoke-virtual {p0, v1, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto :goto_fa

    .line 1184
    .end local v0           #error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    :cond_11c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v1

    if-eqz v1, :cond_132

    .line 1185
    const v1, 0x7f08035a

    invoke-virtual {p0, v1, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showError(IZ)V

    goto/16 :goto_51

    .line 1189
    :cond_132
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v1, v2, :cond_151

    .line 1190
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getUserJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;->onSignedIn(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 1193
    :cond_151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 1194
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_51
.end method

.method public onTileStart()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1092
    const-string v0, "HangoutTabletTile.onTileStart: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v0, :cond_23

    .line 1095
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setHangoutInfo must be called before switching to HangoutTabletTile"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 1101
    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z

    .line 1102
    return-void
.end method

.method public onTileStop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1266
    const-string v0, "HangoutTabletTile.onTileStop: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mActionBarDismissalTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1269
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->isRegistered:Z

    .line 1270
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$EventHandler;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 1271
    return-void
.end method

.method public setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1773
    .local p1, participantList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .local p2, activeParticipantInAnyTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    return-void
.end method

.method public showChild(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    if-ne p1, v0, :cond_7

    .line 1871
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showFilmStrip()V

    .line 1873
    :cond_7
    return-void
.end method

.method public transfer()V
    .registers 1

    .prologue
    .line 1777
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->sendTransfer()V

    .line 1778
    return-void
.end method

.method public updateMainVideoStreaming()V
    .registers 3

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mViewMode:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;->MODE_STAGE_VIEW:Lcom/google/android/apps/plus/hangout/HangoutTabletTile$ViewMode;

    if-ne v0, v1, :cond_17

    .line 1308
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1309
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mCenterStageVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->updateVideoStreaming()V

    .line 1312
    :cond_17
    return-void
.end method
