.class public Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;
.super Lcom/google/android/apps/plus/hangout/HangoutTile;
.source "HangoutPhoneTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$14;,
        Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;,
        Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$OverlayMenuSlideOutAnimationListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mEmptyHangoutMessageView:Landroid/widget/TextView;

.field private final mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

.field private mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

.field private mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

.field private mHadConnectedParticipant:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHangoutLaunchJoinPanel:Landroid/view/ViewGroup;

.field private mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

.field private mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field private mHangoutSwitchMenuButton:Landroid/widget/ImageButton;

.field private mInnerActionBarEnabled:Z

.field private mInstructionsView:Landroid/view/View;

.field private mInstructionsViewFadeOutRunnable:Ljava/lang/Runnable;

.field private mInviteParticipantsMenuButton:Landroid/widget/ImageButton;

.field private mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

.field private mIsHangoutLite:Z

.field private mIsTileStarted:Z

.field private mJoinButton:Landroid/widget/Button;

.field private mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

.field private mMessageContainer:Landroid/view/View;

.field private mMessageView:Landroid/widget/TextView;

.field private mNeedToToastForInvite:Z

.field private mParticipantsView:Landroid/view/View;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

.field private mSelfVideoViewContainer:Landroid/widget/FrameLayout;

.field private mShowOverlayMenu:Z

.field private mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field private mStateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field private mSwitchCameraMenuItem:Landroid/widget/ImageButton;

.field private mTitleBarView:Landroid/view/View;

.field private mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

.field private mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

.field private mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

.field private mTopMenuView:Landroid/view/View;

.field private mTouchSensorView:Landroid/view/View;

.field private mUpButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 461
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 465
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 468
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/HangoutTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 437
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHandler:Landroid/os/Handler;

    .line 442
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsHangoutLite:Z

    .line 451
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    .line 457
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInnerActionBarEnabled:Z

    .line 469
    const-string v0, "HangoutPhoneTile(): this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/SelfVideoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateOverlayMenuAndMessageViews()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->checkAndDismissCallgrokLogUploadProgressDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->onExit(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->fadeOutInstructionsView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mShowOverlayMenu:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mShowOverlayMenu:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsHangoutLite:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHadConnectedParticipant:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->handleAuthenticationError()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showUpgradeClientDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    return-object v0
.end method

.method private addSelfVideoViewToRootView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 955
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 956
    .local v0, currentSelfVideoContainer:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    if-ne v0, v2, :cond_e

    .line 969
    :goto_d
    return-void

    .line 961
    :cond_e
    if-eqz v0, :cond_15

    .line 962
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 964
    :cond_15
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 967
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_d
.end method

.method private checkAndDismissCallgrokLogUploadProgressDialog()V
    .registers 4

    .prologue
    .line 1401
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "log_upload"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1403
    .local v0, callgrokLogUploadProgressDialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_15

    .line 1404
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1406
    :cond_15
    return-void
.end method

.method private fadeOutInstructionsView()V
    .registers 4

    .prologue
    .line 930
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_28

    .line 931
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 932
    .local v0, fadeOut:Landroid/view/animation/Animation;
    new-instance v1, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 933
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 935
    .end local v0           #fadeOut:Landroid/view/animation/Animation;
    :cond_28
    return-void
.end method

.method private getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 2

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    return-object v0
.end method

.method private getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    return-object v0
.end method

.method private handleAuthenticationError()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 896
    const-string v0, "HangoutLaunchActivity#handleAuthenticationError: state=%s appState=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v3, v1, v2

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->$assertionsDisabled:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 899
    :cond_28
    const v0, 0x7f08035d

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    .line 900
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 901
    return-void
.end method

.method private initializeHangoutAnimations()V
    .registers 10

    .prologue
    .line 972
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 974
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 976
    .local v5, slideInDown:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 978
    .local v2, slideOutUp:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 980
    .local v6, slideInUp:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 983
    .local v3, slideOutDown:Landroid/view/animation/Animation;
    const v0, 0x7f09010d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 984
    .local v4, overlayMenu:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_68

    const/4 v0, 0x1

    :goto_4a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mShowOverlayMenu:Z

    .line 986
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTouchSensorView:Landroid/view/View;

    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$11;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 1023
    .local v7, overlayMenuHeight:I
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setExtraBottomOffset(I)V

    .line 1024
    return-void

    .line 984
    .end local v7           #overlayMenuHeight:I
    :cond_68
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private onExit(Landroid/view/View;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutPhoneTile onExit with state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-nez v0, :cond_1d

    .line 952
    :goto_1c
    return-void

    .line 945
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 946
    const-string v0, "Setting userRequestedMeetingExit to true"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    goto :goto_1c

    .line 949
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 950
    const-string v0, "Did not set userRequestedMeetingExit"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private scheduleInstructionsViewFadeOut()V
    .registers 5

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 924
    return-void
.end method

.method private sendTransfer()V
    .registers 6

    .prologue
    .line 1390
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 1392
    .local v0, inviteAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v1, "Transfer hangout"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    const-string v2, "TRANSFER"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->inviteToMeeting(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;ZZ)V

    .line 1397
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v2, 0x7f08039c

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    .line 1398
    return-void
.end method

.method private setAndShowParticipantsInGreenRoom()V
    .registers 5

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->removeAllParticipants()V

    .line 905
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->greenRoomParticipants:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 907
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->greenRoomParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->addParticipants(Ljava/util/ArrayList;)V

    .line 909
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$10;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$10;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 919
    return-void
.end method

.method private setGreenRoomOnlyViewsToGone()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1027
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1031
    return-void
.end method

.method private setHangoutOnlyViewsToGone()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1034
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setVisibility(I)V

    .line 1037
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setVisibility(I)V

    .line 1038
    return-void
.end method

.method private setInHangoutState()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1185
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->$assertionsDisabled:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1187
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getIsHangoutLite()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsHangoutLite:Z

    .line 1191
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsHangoutLite:Z

    if-nez v0, :cond_30

    .line 1192
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteParticipantsMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1195
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v0, v1, :cond_67

    .line 1196
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsHangoutLite:Z

    if-nez v0, :cond_49

    .line 1198
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mParticipantsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setVisibility(I)V

    .line 1202
    :cond_49
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->initializeHangoutAnimations()V

    .line 1205
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setVisibility(I)V

    .line 1206
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->addSelfVideoViewToRootView()V

    .line 1209
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setVisibility(I)V

    .line 1223
    :goto_59
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateOverlayMenuAndMessageViews()V

    .line 1225
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$12;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setVisibleViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1245
    return-void

    .line 1212
    :cond_67
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mParticipantsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTouchSensorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1218
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setVisibility(I)V

    goto :goto_59
.end method

.method private setMessageViewState(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)V
    .registers 7
    .parameter "nativeWrapper"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1142
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v0

    if-le v0, v4, :cond_f

    .line 1143
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEmptyHangoutMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHasSomeConnectedParticipant()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1147
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    :cond_1a
    :goto_1a
    return-void

    .line 1151
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v0, v1, :cond_4c

    .line 1152
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v0

    if-ne v0, v4, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1154
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08038f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEmptyHangoutMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    .line 1161
    :cond_4c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v0

    if-nez v0, :cond_72

    .line 1162
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1163
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getWaitingMessage(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    :cond_6c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEmptyHangoutMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    .line 1171
    :cond_72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRingInvitees()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1174
    :cond_84
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMemberCount()I

    move-result v0

    if-ne v0, v4, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1176
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEmptyHangoutMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1a
.end method

.method private setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    .registers 7
    .parameter "state"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 1041
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

    .line 1042
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1043
    .local v0, previousState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 1044
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v2

    if-nez v2, :cond_9a

    .line 1045
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setHangoutOnlyViewsToGone()V

    .line 1046
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->addSelfVideoViewToRootView()V

    .line 1047
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->setVisibility(I)V

    .line 1049
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEmptyHangoutMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    sget-object v3, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V

    .line 1051
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$14;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f4

    .line 1109
    :cond_4a
    :goto_4a
    return-void

    .line 1054
    :pswitch_4b
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->skipGreenRoom:Z

    if-nez v2, :cond_55

    .line 1055
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setAndShowParticipantsInGreenRoom()V

    .line 1056
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->scheduleInstructionsViewFadeOut()V

    .line 1063
    :cond_55
    :pswitch_55
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1064
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f080379

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4a

    .line 1068
    :pswitch_68
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1069
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1070
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    invoke-static {}, Lcom/google/android/apps/plus/hangout/StressMode;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_7b

    const/4 v1, 0x1

    :cond_7b
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1071
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4a

    .line 1074
    :pswitch_84
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->fadeOutInstructionsView()V

    .line 1075
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1076
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f08037b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4a

    .line 1081
    :cond_9a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setGreenRoomOnlyViewsToGone()V

    .line 1082
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setVisibility(I)V

    .line 1083
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setInHangoutState()V

    .line 1085
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsTileStarted:Z

    if-eqz v1, :cond_4a

    .line 1086
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 1088
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne p1, v1, :cond_be

    .line 1089
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->onResume()V

    .line 1090
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onPause()V

    goto :goto_4a

    .line 1092
    :cond_be
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->onPause()V

    .line 1093
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onResume(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    goto :goto_4a

    .line 1097
    :cond_cb
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->onResume()V

    .line 1098
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setMainVideoRequestId(I)V

    .line 1100
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->startCapturing()V

    .line 1101
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne p1, v1, :cond_eb

    .line 1102
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->onResume()V

    goto/16 :goto_4a

    .line 1104
    :cond_eb
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onResume(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    goto/16 :goto_4a

    .line 1051
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_55
        :pswitch_55
        :pswitch_68
        :pswitch_84
    .end packed-switch
.end method

.method private showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    .registers 6
    .parameter "error"
    .parameter "finishOnOk"

    .prologue
    const v2, 0x7f08035b

    .line 1248
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$14;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 1268
    :goto_e
    return-void

    .line 1250
    :pswitch_f
    const v0, 0x7f08035d

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_e

    .line 1253
    :pswitch_16
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_e

    .line 1256
    :pswitch_1a
    invoke-virtual {p0, v2, p2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_e

    .line 1259
    :pswitch_1e
    const v0, 0x7f08035c

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_e

    .line 1262
    :pswitch_25
    const v0, 0x7f080376

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_e

    .line 1265
    :pswitch_2c
    const v0, 0x7f080375

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_e

    .line 1248
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

.method private showUpgradeClientDialog()V
    .registers 7

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080367

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080369

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08020a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x1080027

    invoke-static {v2, v1, v3, v4, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 1278
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setCancelable(Z)V

    .line 1279
    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$13;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$13;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V

    .line 1306
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1307
    return-void
.end method

.method private updateAudioMuteMenuButton(Z)V
    .registers 5
    .parameter "muted"

    .prologue
    .line 1333
    if-eqz p1, :cond_1b

    .line 1334
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1335
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1342
    :goto_1a
    return-void

    .line 1338
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1339
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method private updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "muted"

    .prologue
    .line 1311
    if-nez p1, :cond_13

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v0

    .line 1319
    .local v0, isMute:Z
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_18

    .line 1330
    :goto_12
    return-void

    .line 1314
    .end local v0           #isMute:Z
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .restart local v0       #isMute:Z
    goto :goto_e

    .line 1323
    :cond_18
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateAudioMuteMenuButton(Z)V

    .line 1327
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->hasAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_39
    const/4 v1, 0x1

    :goto_3a
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_12

    :cond_3e
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method private updateInviteesView(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)Z
    .registers 7
    .parameter "nativeWrapper"

    .prologue
    const/4 v3, 0x0

    .line 1409
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1410
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "audience"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v2

    if-nez v2, :cond_37

    .line 1412
    const-string v2, "audience"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1414
    .local v1, invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v2

    if-lez v2, :cond_37

    .line 1415
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->setInvitees(Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1416
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->setVisibility(I)V

    .line 1417
    const/4 v2, 0x1

    .line 1420
    .end local v1           #invitedAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :goto_36
    return v2

    :cond_37
    move v2, v3

    goto :goto_36
.end method

.method private updateOverlayMenuAndMessageViews()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    .line 1115
    .local v0, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v1, :cond_16

    .line 1139
    :cond_15
    :goto_15
    return-void

    .line 1120
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHadSomeConnectedParticipantInPast()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHadConnectedParticipant:Z

    .line 1121
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHadConnectedParticipant:Z

    if-eqz v1, :cond_49

    move v1, v2

    :goto_23
    invoke-virtual {v4, v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->setVisibility(I)V

    .line 1122
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHadConnectedParticipant:Z

    if-eqz v1, :cond_4b

    .line 1123
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mShowOverlayMenu:Z

    if-eqz v1, :cond_33

    .line 1124
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getHasSomeConnectedParticipant()Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    :goto_3d
    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V

    .line 1136
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->requestLayout()V

    .line 1138
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setMessageViewState(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)V

    goto :goto_15

    :cond_49
    move v1, v3

    .line 1121
    goto :goto_23

    .line 1127
    :cond_4b
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateInviteesView(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1129
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->setVisibility(I)V

    goto :goto_33

    .line 1134
    :cond_5c
    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    goto :goto_3d
.end method

.method private updateVideoMuteMenuButton(Z)V
    .registers 5
    .parameter "muted"

    .prologue
    .line 1362
    if-eqz p1, :cond_1b

    .line 1363
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08034a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1371
    :goto_1a
    return-void

    .line 1367
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1368
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method private updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "muted"

    .prologue
    .line 1346
    if-nez p1, :cond_13

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v0

    .line 1354
    .local v0, isOutgoingVideoMute:Z
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_18

    .line 1359
    :goto_12
    return-void

    .line 1349
    .end local v0           #isOutgoingVideoMute:Z
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .restart local v0       #isOutgoingVideoMute:Z
    goto :goto_e

    .line 1358
    :cond_18
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateVideoMuteMenuButton(Z)V

    goto :goto_12
.end method


# virtual methods
.method public isTileStarted()Z
    .registers 2

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsTileStarted:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1425
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onActivityResult(IILandroid/content/Intent;)V

    .line 1427
    if-nez p1, :cond_d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    if-eqz p3, :cond_d

    .line 1429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mNeedToToastForInvite:Z

    .line 1431
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 478
    const-string v0, "HangoutPhoneTile.onCreate: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    if-eqz p1, :cond_27

    .line 481
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->values()[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    const-string v1, "HangoutTile_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mStateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 483
    :cond_27
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 810
    const-string v0, "HangoutPhoneTile.onPause: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mStateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 815
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 669
    const-string v0, "HangoutPhoneTile.onResume: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 768
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-nez v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mStateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 769
    .local v0, stateToSave:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    :goto_6
    const-string v1, "HangoutPhoneTile.onSaveInstanceState: this=%s context=%s eventHandler=%s stateToSave:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    const-string v1, "HangoutTile_state"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    return-void

    .line 768
    .end local v0           #stateToSave:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_6
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 490
    const-string v0, "HangoutPhoneTile.onStart: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->startingHangoutActivity(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    .line 494
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 863
    const-string v0, "HangoutPhoneTile.onStop: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->stoppingHangoutActivity()V

    .line 867
    return-void
.end method

.method public onTilePause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 777
    const-string v0, "HangoutPhoneTile.onTilePause: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v0, v1, :cond_20

    .line 803
    :goto_1f
    return-void

    .line 783
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->onPause()V

    .line 785
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v0, v1, :cond_51

    .line 786
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->onPause()V

    .line 793
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onPause()V

    .line 794
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 795
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->onPause()V

    .line 800
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->checkAndDismissCallgrokLogUploadProgressDialog()V

    .line 802
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsTileStarted:Z

    goto :goto_1f

    .line 787
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mState:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v0, v1, :cond_3c

    .line 788
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onPause()V

    goto :goto_3c

    .line 791
    :cond_5d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3c
.end method

.method public onTileResume()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 675
    const-string v3, "HangoutPhoneTile.onTileResume: this=%s context=%s eventHandler=%s hangoutInfo=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    sget-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->$assertionsDisabled:Z

    if-nez v3, :cond_2b

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v3, :cond_2b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 681
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v9}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 682
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v3, v4, :cond_4f

    .line 683
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(Ljava/lang/String;Z)V

    .line 760
    :goto_4e
    return-void

    .line 687
    :cond_4f
    iput-boolean v7, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mIsTileStarted:Z

    .line 689
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 691
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onResume()V

    .line 692
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->onResume()V

    .line 694
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne v3, v4, :cond_75

    .line 695
    const v3, 0x7f080350

    invoke-virtual {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_4e

    .line 699
    :cond_75
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mNeedToToastForInvite:Z

    if-eqz v3, :cond_83

    .line 700
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v4, 0x7f08039a

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    .line 701
    iput-boolean v8, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mNeedToToastForInvite:Z

    .line 704
    :cond_83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->hasAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 708
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 715
    :cond_9a
    :goto_9a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 717
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.google.android.apps.plus.hangout.HangoutTile"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 718
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "filmStrip_"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 719
    .local v2, useFilmStrip:Z
    if-eqz v2, :cond_d9

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    :goto_be
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_4e

    .line 709
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #useFilmStrip:Z
    :cond_c2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 712
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v4, 0x7f080390

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    goto :goto_9a

    .line 719
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    .restart local v2       #useFilmStrip:Z
    :cond_d9
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_be

    .line 722
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #useFilmStrip:Z
    :cond_dc
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mStateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v3, :cond_138

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mStateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v3

    if-eqz v3, :cond_138

    .line 723
    iput-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mStateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 726
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->exitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 727
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 728
    const-string v3, "Stopping hangout tile. Exit from hangout already reported."

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 733
    :cond_104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->exitedNormally(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 734
    const v3, 0x7f080374

    invoke-virtual {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    .line 745
    :goto_116
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordExitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)V

    goto/16 :goto_4e

    .line 736
    :cond_121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->getError(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v0

    .line 737
    .local v0, error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    if-eqz v0, :cond_131

    .line 739
    invoke-direct {p0, v0, v7}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    goto :goto_116

    .line 742
    :cond_131
    const v3, 0x7f080373

    invoke-virtual {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto :goto_116

    .line 747
    .end local v0           #error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    :cond_138
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 748
    const v3, 0x7f08035a

    invoke-virtual {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showError(IZ)V

    goto/16 :goto_4e

    .line 752
    :cond_14e
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v3, v4, :cond_16d

    .line 753
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getUserJid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;->onSignedIn(Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 756
    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 757
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 758
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_4e
.end method

.method public onTileStart()V
    .registers 11

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 501
    const-string v3, "HangoutPhoneTile.onTileStart: this=%s context=%s eventHandler=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    sget-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->$assertionsDisabled:Z

    if-nez v3, :cond_28

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v3, :cond_28

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 511
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 513
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030050

    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->addView(Landroid/view/View;)V

    .line 516
    const v3, 0x7f090118

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;

    .line 517
    const v3, 0x7f09011c

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    .line 518
    const v3, 0x7f09011d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTitleBarView:Landroid/view/View;

    .line 519
    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTitleBarView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInnerActionBarEnabled:Z

    if-eqz v3, :cond_22d

    move v3, v4

    :goto_62
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 520
    const v3, 0x7f09011b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mParticipantsView:Landroid/view/View;

    .line 521
    const v3, 0x7f09011a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTouchSensorView:Landroid/view/View;

    .line 522
    const v3, 0x7f0900f4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    .line 523
    new-instance v3, Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, v9}, Lcom/google/android/apps/plus/hangout/SelfVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    .line 524
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 526
    const v3, 0x7f09011e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mUpButton:Landroid/view/View;

    .line 527
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mUpButton:Landroid/view/View;

    new-instance v6, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const v3, 0x7f09011f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteParticipantsMenuButton:Landroid/widget/ImageButton;

    .line 535
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteParticipantsMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 536
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteParticipantsMenuButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$2;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$2;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    .line 545
    .local v1, gCommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    const v3, 0x7f0900dc

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    .line 547
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateAudioMuteMenuButton(Z)V

    .line 548
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$3;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$3;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;Lcom/google/android/apps/plus/hangout/GCommApp;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    const v3, 0x7f0900dd

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    .line 560
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateVideoMuteMenuButton(Z)V

    .line 561
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$4;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$4;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    const v3, 0x7f0900db

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutSwitchMenuButton:Landroid/widget/ImageButton;

    .line 571
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutSwitchMenuButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_125

    sget-object v3, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_SWITCH:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 572
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutSwitchMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 573
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutSwitchMenuButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$5;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$5;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    :cond_125
    const v3, 0x7f0900de

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSwitchCameraMenuItem:Landroid/widget/ImageButton;

    .line 582
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSwitchCameraMenuItem:Landroid/widget/ImageButton;

    new-instance v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$6;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$6;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    const v3, 0x7f0900df

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, exitButton:Landroid/view/View;
    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$7;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$7;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V

    .line 600
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isAnyCameraAvailable()Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 601
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 602
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V

    .line 604
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v3

    if-eqz v3, :cond_16b

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isRearFacingCameraAvailable()Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 605
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSwitchCameraMenuItem:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 610
    :cond_16b
    const v3, 0x7f09010c

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    .line 611
    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$8;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$8;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    .line 617
    const v3, 0x7f09010e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    .line 618
    const v3, 0x7f09010f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    .line 619
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    new-instance v5, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$9;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$9;-><init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    const v3, 0x7f090120

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    .line 643
    const v3, 0x7f090117

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/ToastsView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    .line 644
    const v3, 0x7f090119

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    .line 645
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 646
    const v3, 0x7f090109

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/FilmStripView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    .line 647
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 648
    const v3, 0x7f090121

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    .line 650
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 651
    const v3, 0x7f09006c

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    .line 653
    const v3, 0x7f090116

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    .line 654
    const v3, 0x7f090113

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/HangoutInviteesView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    .line 655
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    const v5, 0x7f09018a

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEmptyHangoutMessageView:Landroid/widget/TextView;

    .line 658
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 659
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 661
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 662
    return-void

    .end local v0           #exitButton:Landroid/view/View;
    .end local v1           #gCommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    :cond_22d
    move v3, v5

    .line 519
    goto/16 :goto_62
.end method

.method public onTileStop()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 822
    const-string v0, "HangoutPhoneTile.onTileStop: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEventHandler:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$EventHandler;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 825
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTouchSensorView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 827
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->removeAllViews()V

    .line 830
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mRootView:Landroid/view/ViewGroup;

    .line 831
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTopMenuView:Landroid/view/View;

    .line 832
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTitleBarView:Landroid/view/View;

    .line 833
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mParticipantsView:Landroid/view/View;

    .line 834
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTouchSensorView:Landroid/view/View;

    .line 835
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    .line 836
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    .line 837
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSwitchCameraMenuItem:Landroid/widget/ImageButton;

    .line 838
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    .line 839
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    .line 842
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mGreenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    .line 843
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInstructionsView:Landroid/view/View;

    .line 844
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    .line 845
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mJoinButton:Landroid/widget/Button;

    .line 848
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    .line 849
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mToastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    .line 850
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    .line 851
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    .line 852
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageView:Landroid/widget/TextView;

    .line 853
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMessageContainer:Landroid/view/View;

    .line 854
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInviteesView:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    .line 855
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mEmptyHangoutMessageView:Landroid/widget/TextView;

    .line 856
    return-void
.end method

.method public setInnerActionBarEnabled(Z)Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1434
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mInnerActionBarEnabled:Z

    .line 1435
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTitleBarView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1436
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mTitleBarView:Landroid/view/View;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    :cond_e
    return-object p0

    .line 1436
    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method public setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V
    .registers 4
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
    .line 1378
    .local p1, participantList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .local p2, activeParticipantInAnyTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    if-eqz v0, :cond_9

    .line 1379
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mHangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 1382
    :cond_9
    return-void
.end method

.method public transfer()V
    .registers 1

    .prologue
    .line 1386
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->sendTransfer()V

    .line 1387
    return-void
.end method

.method public updateMainVideoStreaming()V
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->mMainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->updateVideoStreaming()V

    .line 893
    return-void
.end method
