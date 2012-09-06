.class public Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
.super Landroid/widget/LinearLayout;
.source "TabletFilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;,
        Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;,
        Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContextMenuDialog:Landroid/app/Dialog;

.field private mCurrentOrientation:I

.field private mDismissMenuTimer:Landroid/os/CountDownTimer;

.field private mEnableStatusIcons:Z

.field private final mEventHandler:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;

.field private final mFilmStripMargin:I

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mIsResumed:Z

.field private mMeetingMembersByVideoView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/hangout/HangoutVideoView;",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private mTimersByMeetingMember:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            "Landroid/os/CountDownTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoViewsByMeetingMember:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            "Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v2, 0x1388

    .line 319
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 305
    new-instance v0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/TabletFilmStripView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mEventHandler:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mMeetingMembersByVideoView:Ljava/util/HashMap;

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mTimersByMeetingMember:Ljava/util/HashMap;

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mCurrentOrientation:I

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 322
    .local v6, res:Landroid/content/res/Resources;
    const v0, 0x7f0d015a

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mFilmStripMargin:I

    .line 324
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_FILMSTRIP_STATUS:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mEnableStatusIcons:Z

    .line 326
    new-instance v0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$1;-><init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;JJ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mDismissMenuTimer:Landroid/os/CountDownTimer;

    .line 336
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->unpinVideo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mDismissMenuTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mContextMenuDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->removeParticipantVideo(Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Lcom/google/android/apps/plus/hangout/HangoutTile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->updateVolume(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->onVideoClicked(Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->onVideoDoubleClicked(Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method private addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 12
    .parameter "member"

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v5, -0x2

    .line 534
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p1, v1, :cond_6a

    const/4 v9, 0x1

    .line 535
    .local v9, shouldPin:Z
    :goto_c
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    .line 536
    .local v7, existingVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;
    if-eqz v7, :cond_19

    .line 538
    invoke-direct {p0, v7, v9}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->removeParticipantVideo(Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;Z)V

    .line 541
    :cond_19
    new-instance v6, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v6, v1, v4, p1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 543
    .local v6, participantVideoView:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_35

    .line 544
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 547
    .local v8, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mFilmStripMargin:I

    iput v1, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 548
    invoke-virtual {v6, v8}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    .end local v8           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_35
    new-instance v1, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;

    invoke-direct {v1, p0, v6}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$TouchListener;-><init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/HangoutVideoView;)V

    invoke-virtual {v6, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 551
    invoke-virtual {v6, p1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->setTag(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->addView(Landroid/view/View;)V

    .line 553
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v6, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 554
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->onResume()V

    .line 557
    new-instance v0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$2;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$2;-><init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;JJLcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;)V

    .line 568
    .local v0, timer:Landroid/os/CountDownTimer;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mTimersByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    if-eqz v9, :cond_5c

    .line 572
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 575
    :cond_5c
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mMeetingMembersByVideoView:Ljava/util/HashMap;

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 578
    return-void

    .line 534
    .end local v0           #timer:Landroid/os/CountDownTimer;
    .end local v6           #participantVideoView:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;
    .end local v7           #existingVideo:Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;
    .end local v9           #shouldPin:Z
    :cond_6a
    const/4 v9, 0x0

    goto :goto_c
.end method

.method private onVideoClicked(Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 10
    .parameter "videoView"
    .parameter "member"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 514
    new-instance v3, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;

    invoke-direct {v3, p0, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;-><init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .local v3, contextMenuHelper:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$ParticipantContextMenuHelper;
    move-object v0, p1

    move-object v2, v1

    move-object v4, v3

    move v6, v5

    .line 515
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/util/QuickActions;->show(Landroid/view/View;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/MenuItem$OnMenuItemClickListener;ZZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mContextMenuDialog:Landroid/app/Dialog;

    .line 517
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mDismissMenuTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 518
    return-void
.end method

.method private onVideoDoubleClicked(Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "videoView"
    .parameter "member"

    .prologue
    .line 522
    if-eqz p2, :cond_e

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p2, v0, :cond_a

    .line 524
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->unpinVideo()V

    .line 531
    :goto_9
    return-void

    .line 526
    :cond_a
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_9

    .line 529
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->onVideoClicked(Lcom/google/android/apps/plus/hangout/HangoutVideoView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_9
.end method

.method private pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "newPinnedVideoMember"

    .prologue
    .line 430
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 431
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 433
    .local v0, oldPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 434
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateMainVideoStreaming()V

    .line 436
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 437
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 438
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 439
    return-void
.end method

.method private removeParticipantVideo(Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;Z)V
    .registers 5
    .parameter "videoView"
    .parameter "shouldUnpin"

    .prologue
    .line 582
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->onPause()V

    .line 583
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mMeetingMembersByVideoView:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 584
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v0, :cond_20

    .line 585
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mTimersByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    if-eqz p2, :cond_20

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne v0, v1, :cond_20

    .line 588
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->unpinVideo()V

    .line 591
    :cond_20
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->removeView(Landroid/view/View;)V

    .line 592
    return-void
.end method

.method private setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 5
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 469
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 485
    :cond_8
    :goto_8
    return-void

    .line 473
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    .line 474
    .local v0, videoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;
    if-eqz v0, :cond_8

    .line 475
    if-eqz p2, :cond_24

    .line 476
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mEnableStatusIcons:Z

    if-eqz v1, :cond_1c

    .line 477
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->showAudioMutedStatus()V

    .line 479
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->setVolume(I)V

    .line 480
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->hideVolumeBar()V

    goto :goto_8

    .line 482
    :cond_24
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->hideAudioMutedStatus()V

    goto :goto_8
.end method

.method private setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "member"

    .prologue
    .line 454
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 466
    :cond_8
    :goto_8
    return-void

    .line 458
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    .line 459
    .local v0, videoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;
    if-eqz v0, :cond_8

    .line 460
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne p1, v1, :cond_1b

    .line 461
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->showPinnedStatus()V

    goto :goto_8

    .line 463
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->hidePinnedStatus()V

    goto :goto_8
.end method

.method private unpinVideo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->setSelectedVideoSource(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 446
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateMainVideoStreaming()V

    .line 448
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 449
    .local v0, oldPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mPinnedVideoMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 450
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 451
    return-void
.end method

.method private updateVolume(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V
    .registers 6
    .parameter "member"
    .parameter "volume"

    .prologue
    .line 488
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 510
    :cond_8
    :goto_8
    return-void

    .line 493
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    .line 494
    .local v1, videoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;
    if-eqz v1, :cond_22

    .line 495
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->hideAudioMutedStatus()V

    .line 496
    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->setVolume(I)V

    .line 497
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->isVideoShowing()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 498
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->showVolumeBar()V

    .line 505
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mTimersByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CountDownTimer;

    .line 506
    .local v0, timer:Landroid/os/CountDownTimer;
    if-eqz v0, :cond_8

    .line 507
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 508
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_8

    .line 500
    .end local v0           #timer:Landroid/os/CountDownTimer;
    :cond_33
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->hideVolumeBar()V

    goto :goto_22
.end method


# virtual methods
.method public dismissParticipantMenuDialog()V
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mDismissMenuTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mContextMenuDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mContextMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mContextMenuDialog:Landroid/app/Dialog;

    .line 395
    :cond_11
    return-void
.end method

.method public isAudioMuted(Lcom/google/android/apps/plus/hangout/MeetingMember;)Z
    .registers 4
    .parameter "member"

    .prologue
    .line 408
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mVideoViewsByMeetingMember:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;

    .line 409
    .local v0, videoView:Lcom/google/android/apps/plus/hangout/HangoutVideoView;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->isAudioMuteStatusShowing()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_10

    .line 380
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mCurrentOrientation:I

    .line 381
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->dismissParticipantMenuDialog()V

    .line 383
    :cond_10
    return-void
.end method

.method public onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 357
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z

    if-nez v2, :cond_6

    .line 371
    :goto_5
    return-void

    .line 360
    :cond_6
    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z

    .line 362
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mEventHandler:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 363
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1f
    if-ltz v1, :cond_31

    .line 364
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    if-eqz v2, :cond_2e

    .line 366
    check-cast v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->removeParticipantVideo(Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;Z)V

    .line 363
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 369
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->removeAllViews()V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->dismissParticipantMenuDialog()V

    goto :goto_5
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 339
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z

    if-eqz v3, :cond_6

    .line 354
    :goto_5
    return-void

    .line 342
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z

    .line 343
    iput v6, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mCurrentOrientation:I

    .line 345
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v2

    .line 347
    .local v2, members:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 348
    .local v1, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v3

    if-nez v3, :cond_19

    .line 349
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_19

    .line 353
    .end local v1           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mEventHandler:Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    goto :goto_5
.end method

.method public requestPinVideo(Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;)V
    .registers 4
    .parameter "videoView"

    .prologue
    .line 417
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z

    if-eqz v1, :cond_13

    .line 418
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->getMember()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v0

    .line 419
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v1

    if-nez v1, :cond_13

    .line 420
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->pinVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 423
    .end local v0           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_13
    return-void
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 399
    return-void
.end method
