.class public Lcom/google/android/apps/plus/hangout/HangoutTile;
.super Landroid/widget/RelativeLayout;
.source "HangoutTile.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Tile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutTile$11;,
        Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;,
        Lcom/google/android/apps/plus/hangout/HangoutTile$OverlayMenuSlideOutAnimationListener;,
        Lcom/google/android/apps/plus/hangout/HangoutTile$State;,
        Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

.field private filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

.field private fromHermes:Z

.field private greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

.field private final handler:Landroid/os/Handler;

.field private hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

.field private hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

.field private instructionsView:Landroid/view/View;

.field private instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

.field private isTileStarted:Z

.field private joinButton:Landroid/widget/Button;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

.field private mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

.field private participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private participantsListUnavailableView:Landroid/widget/TextView;

.field private participantsView:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressText:Landroid/widget/TextView;

.field private rootView:Landroid/view/ViewGroup;

.field private selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

.field private selfVideoViewContainer:Landroid/widget/FrameLayout;

.field private skipGreenRoom:Z

.field private state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field private stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field private switchCameraMenuItem:Landroid/widget/ImageButton;

.field private toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

.field private toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

.field private toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

.field private userRequestedMeetingExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 400
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->handler:Landroid/os/Handler;

    .line 406
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->fromHermes:Z

    .line 407
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->skipGreenRoom:Z

    .line 414
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    .line 426
    const-string v0, "HangoutTile(): this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/SelfVideoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->fromHermes:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/HangoutTile;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->userRequestedMeetingExit:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->checkAndDismissCallgrokLogUploadProgressDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/hangout/HangoutTile;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/hangout/HangoutTile;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->fadeOutInstructionsView()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HangoutTile;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HangoutTile;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/HangoutTile;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->skipGreenRoom:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/HangoutTile;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participants:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/HangoutTile;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    return-void
.end method

.method private addSelfVideoViewToRootView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 881
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 882
    .local v0, currentSelfVideoContainer:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoViewContainer:Landroid/widget/FrameLayout;

    if-ne v0, v2, :cond_e

    .line 895
    :goto_d
    return-void

    .line 887
    :cond_e
    if-eqz v0, :cond_15

    .line 888
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 890
    :cond_15
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 893
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_d
.end method

.method private checkAndDismissCallgrokLogUploadProgressDialog()V
    .registers 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    if-eqz v0, :cond_c

    .line 1277
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->dismiss()V

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    .line 1280
    :cond_c
    return-void
.end method

.method private fadeOutInstructionsView()V
    .registers 4

    .prologue
    .line 859
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_28

    .line 860
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 861
    .local v0, fadeOut:Landroid/view/animation/Animation;
    new-instance v1, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/hangout/HideViewAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 862
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 864
    .end local v0           #fadeOut:Landroid/view/animation/Animation;
    :cond_28
    return-void
.end method

.method private getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 2

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    return-object v0
.end method

.method private getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
    .registers 2

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    return-object v0
.end method

.method private getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    return-object v0
.end method

.method private getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    .registers 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    return-object v0
.end method

.method private initializeHangoutAnimations()V
    .registers 10

    .prologue
    .line 898
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 900
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 902
    .local v5, slideInDown:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 904
    .local v2, slideOutUp:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 906
    .local v6, slideInUp:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 909
    .local v3, slideOutDown:Landroid/view/animation/Animation;
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 911
    .local v4, overlayMenu:Landroid/view/View;
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/hangout/HangoutTile$8;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 942
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 944
    .local v7, overlayMenuHeight:I
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setExtraBottomOffset(I)V

    .line 945
    return-void
.end method

.method private scheduleInstructionsViewFadeOut()V
    .registers 5

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 853
    return-void
.end method

.method private setAndShowParticipantsInGreenRoom()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 825
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->removeAllParticipants()V

    .line 826
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participants:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    .line 827
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participants:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    .line 829
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->addParticipants(Ljava/util/ArrayList;)V

    .line 831
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTile$7;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$7;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 848
    :goto_2a
    return-void

    .line 845
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsListUnavailableView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a
.end method

.method private setGreenRoomOnlyViewsToGone()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsListUnavailableView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->joinButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    return-void
.end method

.method private setHangoutOnlyViewsToGone()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 958
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setVisibility(I)V

    .line 962
    return-void
.end method

.method private setInHangoutState()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1033
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1035
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v0, v1, :cond_47

    .line 1037
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setVisibility(I)V

    .line 1039
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->initializeHangoutAnimations()V

    .line 1042
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setVisibility(I)V

    .line 1043
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->addSelfVideoViewToRootView()V

    .line 1044
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->INSET:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V

    .line 1047
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setVisibility(I)V

    .line 1061
    :goto_3c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTile$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$9;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setVisibleViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1081
    return-void

    .line 1050
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1055
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setVisibility(I)V

    goto :goto_3c
.end method

.method private setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 967
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 968
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 969
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setHangoutOnlyViewsToGone()V

    .line 970
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->addSelfVideoViewToRootView()V

    .line 971
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    sget-object v1, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V

    .line 972
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 973
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutTile$State:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_de

    .line 1030
    :cond_40
    :goto_40
    return-void

    .line 976
    :pswitch_41
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->skipGreenRoom:Z

    if-nez v0, :cond_4b

    .line 977
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setAndShowParticipantsInGreenRoom()V

    .line 978
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->scheduleInstructionsViewFadeOut()V

    .line 985
    :cond_4b
    :pswitch_4b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->joinButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    const v1, 0x7f0702a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 991
    :pswitch_63
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->joinButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_40

    .line 996
    :pswitch_73
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->fadeOutInstructionsView()V

    .line 997
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->joinButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 998
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    const v1, 0x7f0702a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_40

    .line 1004
    :cond_8e
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setGreenRoomOnlyViewsToGone()V

    .line 1005
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setVisibility(I)V

    .line 1006
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setInHangoutState()V

    .line 1008
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->isTileStarted:Z

    if-eqz v1, :cond_40

    .line 1009
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1011
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne p1, v0, :cond_b2

    .line 1012
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->onResume()V

    .line 1013
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onPause()V

    goto :goto_40

    .line 1015
    :cond_b2
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->onPause()V

    .line 1016
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onResume(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    goto :goto_40

    .line 1020
    :cond_bf
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->onResume()V

    .line 1021
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->startCapturing()V

    .line 1022
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne p1, v0, :cond_d4

    .line 1023
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->onResume()V

    goto/16 :goto_40

    .line 1025
    :cond_d4
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onResume(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    goto/16 :goto_40

    .line 973
    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_41
        :pswitch_4b
        :pswitch_4b
        :pswitch_63
        :pswitch_73
    .end packed-switch
.end method

.method private showError(IZ)V
    .registers 4
    .parameter "messageId"
    .parameter "finishOnOk"

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(Ljava/lang/String;Z)V

    .line 1116
    return-void
.end method

.method private showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const v2, 0x7f070297

    .line 1084
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$11;->$SwitchMap$com$google$android$apps$plus$hangout$GCommNativeWrapper$Error:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 1104
    :goto_e
    return-void

    .line 1086
    :pswitch_f
    const v0, 0x7f070299

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_e

    .line 1089
    :pswitch_16
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_e

    .line 1092
    :pswitch_1a
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_e

    .line 1095
    :pswitch_1e
    const v0, 0x7f070298

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_e

    .line 1098
    :pswitch_25
    const v0, 0x7f0702a4

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_e

    .line 1101
    :pswitch_2c
    const v0, 0x7f0702a3

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_e

    .line 1084
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

.method private showError(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1108
    const-string v0, "com.google.android.apps.plus.hangout.HangoutTile.TAG_MESSAGE"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v0, "com.google.android.apps.plus.hangout.HangoutTile.TAG_FINISH"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In show error for activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1112
    return-void
.end method

.method private updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V
    .registers 5
    .parameter

    .prologue
    .line 1120
    if-nez p1, :cond_13

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isAudioMute()Z

    move-result v0

    .line 1128
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_18

    .line 1147
    :goto_12
    return-void

    .line 1123
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_e

    .line 1132
    :cond_18
    if-eqz v0, :cond_55

    .line 1133
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1134
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1144
    :goto_32
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->hasAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_50
    const/4 v0, 0x1

    :goto_51
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_12

    .line 1137
    :cond_55
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1138
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 1144
    :cond_6e
    const/4 v0, 0x0

    goto :goto_51
.end method

.method private updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V
    .registers 5
    .parameter

    .prologue
    .line 1151
    if-nez p1, :cond_13

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isOutgoingVideoMute()Z

    move-result v0

    .line 1159
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_18

    .line 1172
    :goto_12
    return-void

    .line 1154
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_e

    .line 1163
    :cond_18
    if-eqz v0, :cond_33

    .line 1164
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1165
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070289

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1168
    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1169
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070288

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method


# virtual methods
.method public addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1188
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    .line 1191
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    return-void
.end method

.method public blockPerson(Ljava/io/Serializable;)V
    .registers 12
    .parameter "callbackData"

    .prologue
    .line 1222
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1225
    .local v0, blockedMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    .line 1226
    .local v1, gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v4

    .line 1229
    .local v4, members:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1230
    .local v3, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1231
    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->blockMedia(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 1237
    .end local v3           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/apps/plus/fragments/BlockFragment;->startBlock(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZZ)V

    .line 1239
    return-void
.end method

.method public createDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1242
    const-string v0, "com.google.android.apps.plus.hangout.HangoutTile.TAG_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    const-string v1, "com.google.android.apps.plus.hangout.HangoutTile.TAG_FINISH"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1244
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1245
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1246
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1247
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070168

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/plus/hangout/HangoutTile$10;

    invoke-direct {v4, p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$10;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1256
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1257
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getActiveParticipantIds()Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1206
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1208
    .local v0, activeParticipantIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1209
    .local v2, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1212
    .end local v2           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_25
    return-object v0
.end method

.method public getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    return-object v0
.end method

.method handleAuthenticationError()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 817
    const-string v0, "HangoutLaunchActivity#handleAuthenticationError: state=%s appState=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v3, v1, v2

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isSigningIn()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 820
    :cond_28
    const v0, 0x7f070299

    invoke-direct {p0, v0, v4}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    .line 821
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 822
    return-void
.end method

.method public isTileStarted()Z
    .registers 2

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->isTileStarted:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 434
    const-string v0, "HangoutTile.onCreate: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    if-eqz p1, :cond_27

    .line 437
    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->values()[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v0

    const-string v1, "HangoutTile_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 439
    :cond_27
    return-void
.end method

.method public onExit(Landroid/view/View;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HangoutTile onExit with state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-nez v0, :cond_1d

    .line 878
    :goto_1c
    return-void

    .line 870
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 871
    const-string v0, "Setting userRequestedMeetingExit to true"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->userRequestedMeetingExit:Z

    .line 873
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    goto :goto_1c

    .line 875
    :cond_39
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 876
    const-string v0, "Did not set userRequestedMeetingExit"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 735
    const-string v0, "HangoutTile.onPause: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 740
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 586
    const-string v0, "HangoutTile.onResume: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "outState"

    .prologue
    .line 691
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-nez v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 692
    .local v0, stateToSave:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    :goto_6
    const-string v1, "HangoutTile.onSaveInstanceState: this=%s context=%s eventHandler=%s stateToSave:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    const-string v1, "HangoutTile_state"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 696
    return-void

    .line 691
    .end local v0           #stateToSave:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_6
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 446
    const-string v0, "HangoutTile.onStart: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 784
    const-string v0, "HangoutTile.onStop: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    return-void
.end method

.method public onTilePause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 700
    const-string v0, "HangoutTile.onTilePause: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v0, v1, :cond_20

    .line 728
    :goto_1f
    return-void

    .line 706
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 707
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->onPause()V

    .line 708
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v0, v1, :cond_58

    .line 709
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->onPause()V

    .line 716
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onPause()V

    .line 717
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 718
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->onPause()V

    .line 723
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->checkAndDismissCallgrokLogUploadProgressDialog()V

    .line 725
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->stoppingHangoutTile()V

    .line 727
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->isTileStarted:Z

    goto :goto_1f

    .line 710
    :cond_58
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v0, v1, :cond_38

    .line 711
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onPause()V

    goto :goto_38

    .line 714
    :cond_64
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_38
.end method

.method public onTileResume()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 592
    const-string v3, "HangoutTile.onTileResume: this=%s context=%s eventHandler=%s hangoutInfo=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    sget-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    if-nez v3, :cond_2b

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v3, :cond_2b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 597
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v9}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mHangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    .line 598
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v3, v4, :cond_4f

    .line 599
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutSupportStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(Ljava/lang/String;Z)V

    .line 683
    :cond_4e
    :goto_4e
    return-void

    .line 603
    :cond_4f
    iput-boolean v7, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->isTileStarted:Z

    .line 605
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getEsFragmentActivity()Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->startingHangoutTile(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    .line 606
    sget-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->callgrokLogUploadProgressDialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    if-eqz v3, :cond_6e

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 608
    :cond_6e
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 610
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onResume()V

    .line 611
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->onResume()V

    .line 613
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v3

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    if-ne v3, v4, :cond_9a

    .line 615
    :cond_93
    const v3, 0x7f07028f

    invoke-direct {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_4e

    .line 619
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 621
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.google.android.apps.plus.hangout.HangoutTile"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 622
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "filmStrip_"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 623
    .local v2, useFilmStrip:Z
    if-eqz v2, :cond_c2

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    :goto_be
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    goto :goto_4e

    :cond_c2
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    goto :goto_be

    .line 626
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #useFilmStrip:Z
    :cond_c5
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eqz v3, :cond_121

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v3

    if-eqz v3, :cond_121

    .line 627
    iput-object v9, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->stateBeforeStop:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 630
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->exitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 631
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 632
    const-string v3, "Stopping hangout tile. Exit from hangout already reported."

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 637
    :cond_ed
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->exitedNormally(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 638
    const v3, 0x7f0702a2

    invoke-direct {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    .line 649
    :goto_ff
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordExitReported(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)V

    goto/16 :goto_4e

    .line 640
    :cond_10a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/ExitHistory;->getError(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v0

    .line 641
    .local v0, error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    if-eqz v0, :cond_11a

    .line 643
    invoke-direct {p0, v0, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    goto :goto_ff

    .line 646
    :cond_11a
    const v3, 0x7f0702a1

    invoke-direct {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto :goto_ff

    .line 651
    .end local v0           #error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    :cond_121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangout()Z

    move-result v3

    if-eqz v3, :cond_137

    .line 652
    const v3, 0x7f070296

    invoke-direct {p0, v3, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(IZ)V

    goto/16 :goto_4e

    .line 656
    :cond_137
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAppState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v3, v4, :cond_175

    .line 657
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 664
    :goto_144
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->hasAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_195

    .line 668
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 675
    :cond_15b
    :goto_15b
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->isInMeeting()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 676
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->onResume()V

    .line 677
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v4, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v3, v4, :cond_1ac

    .line 678
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->onResume()V

    goto/16 :goto_4e

    .line 659
    :cond_175
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 660
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 661
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_144

    .line 669
    :cond_195
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInAHangoutWithMedia()Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 672
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    const v4, 0x7f0702b7

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(I)V

    goto :goto_15b

    .line 679
    :cond_1ac
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v4, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne v3, v4, :cond_4e

    .line 680
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/FilmStripView;->onResume(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    goto/16 :goto_4e
.end method

.method public onTileStart()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 455
    const-string v2, "HangoutTile.onTileStart: this=%s context=%s eventHandler=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    sget-boolean v2, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v2, :cond_26

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 464
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 466
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030031

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->addView(Landroid/view/View;)V

    .line 469
    const v2, 0x7f0d00ad

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;

    .line 470
    const v2, 0x7f0d00af

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;

    .line 471
    const v2, 0x7f0d00a6

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoViewContainer:Landroid/widget/FrameLayout;

    .line 472
    new-instance v2, Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v7}, Lcom/google/android/apps/plus/hangout/SelfVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    .line 473
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 475
    const v2, 0x7f0d008e

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    .line 477
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutTile$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    const v2, 0x7f0d008f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    .line 490
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutTile$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$2;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    const v2, 0x7f0d0090

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->switchCameraMenuItem:Landroid/widget/ImageButton;

    .line 499
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->switchCameraMenuItem:Landroid/widget/ImageButton;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutTile$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$3;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    const v2, 0x7f0d0091

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, exitButton:Landroid/view/View;
    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutTile$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$4;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateAudioMuteMenuButtonState(Ljava/lang/Boolean;)V

    .line 517
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isAnyCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 518
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 519
    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateVideoMuteMenuButtonState(Ljava/lang/Boolean;)V

    .line 521
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isRearFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 522
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->switchCameraMenuItem:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 527
    :cond_db
    const v2, 0x7f0d00b3

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    .line 528
    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutTile$5;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$5;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsViewFadeOutRunnable:Ljava/lang/Runnable;

    .line 534
    const v2, 0x7f0d00b6

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    .line 535
    const v2, 0x7f0d00b7

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->joinButton:Landroid/widget/Button;

    .line 536
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->joinButton:Landroid/widget/Button;

    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutTile$6;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$6;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    const v2, 0x7f0d00b8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressBar:Landroid/widget/ProgressBar;

    .line 547
    const v2, 0x7f0d00b9

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    .line 548
    const v2, 0x7f0d00b2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsListUnavailableView:Landroid/widget/TextView;

    .line 551
    const v2, 0x7f0d00b0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    .line 555
    const v2, 0x7f0d00b4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/ToastsView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    .line 556
    const v2, 0x7f0d00ae

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    .line 557
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 558
    const v2, 0x7f0d00ba

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/FilmStripView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    .line 559
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 560
    const v2, 0x7f0d00b1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    .line 562
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 564
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 565
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 567
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 568
    return-void
.end method

.method public onTileStop()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 747
    const-string v0, "HangoutTile.onTileStop: this=%s context=%s eventHandler=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->eventHandler:Lcom/google/android/apps/plus/hangout/HangoutTile$EventHandler;

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 750
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 752
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->removeAllViews()V

    .line 755
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->rootView:Landroid/view/ViewGroup;

    .line 756
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsView:Landroid/view/View;

    .line 757
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    .line 758
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    .line 759
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->switchCameraMenuItem:Landroid/widget/ImageButton;

    .line 760
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoViewContainer:Landroid/widget/FrameLayout;

    .line 761
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->selfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    .line 764
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participantsListUnavailableView:Landroid/widget/TextView;

    .line 765
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->greenRoomParticipantsGalleryView:Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    .line 766
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->instructionsView:Landroid/view/View;

    .line 767
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutLaunchJoinPanel:Landroid/view/ViewGroup;

    .line 768
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->joinButton:Landroid/widget/Button;

    .line 769
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressBar:Landroid/widget/ProgressBar;

    .line 770
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->progressText:Landroid/widget/TextView;

    .line 773
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    .line 774
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->toastsView:Lcom/google/android/apps/plus/hangout/ToastsView;

    .line 775
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    .line 776
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->filmStripView:Lcom/google/android/apps/plus/hangout/FilmStripView;

    .line 777
    return-void
.end method

.method public removeParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1200
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1202
    :cond_9
    return-void
.end method

.method public setFromHermes(Z)V
    .registers 2
    .parameter "fromHermes"

    .prologue
    .line 1272
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->fromHermes:Z

    .line 1273
    return-void
.end method

.method public setHangoutInfo(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "account"
    .parameter "hangoutInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/service/Hangout$Info;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p3, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTile;->$assertionsDisabled:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/service/Hangout$Info;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 574
    :cond_16
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 575
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 576
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->participants:Ljava/util/ArrayList;

    .line 578
    const-string v0, "setHangoutInfo: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    return-void
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
    .line 1217
    .local p1, participantList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .local p2, activeParticipantInAnyTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->hangoutParticipantsGalleryView:Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutParticipantsGalleryView;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 1219
    return-void
.end method

.method public setSkipGreenRoom(Z)V
    .registers 2
    .parameter "skipGreenRoom"

    .prologue
    .line 1283
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->skipGreenRoom:Z

    .line 1284
    return-void
.end method

.method public updateMainVideoStreaming()V
    .registers 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mainVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->updateVideoStreaming()V

    .line 814
    return-void
.end method
