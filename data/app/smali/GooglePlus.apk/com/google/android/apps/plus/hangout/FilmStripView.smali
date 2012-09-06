.class public Lcom/google/android/apps/plus/hangout/FilmStripView;
.super Landroid/widget/LinearLayout;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;
    }
.end annotation


# instance fields
.field private final eventHandler:Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;

.field private hangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private isResumed:Z

.field private final size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/FilmStripView;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->eventHandler:Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->size:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/FilmStripView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->isResumed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/FilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    return-void
.end method

.method private addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "member"

    .prologue
    .line 106
    new-instance v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 108
    .local v1, participantVideoView:Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->size:I

    iget v3, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->size:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->addView(Landroid/view/View;)V

    .line 111
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->hangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V

    .line 112
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->onResume()V

    .line 113
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 89
    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->isResumed:Z

    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 92
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;

    if-eqz v2, :cond_17

    .line 94
    check-cast v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->onPause()V

    .line 91
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 97
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->removeAllViews()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->eventHandler:Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 99
    return-void
.end method

.method public onResume(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V
    .registers 10
    .parameter "selfVideoView"

    .prologue
    .line 65
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->isResumed:Z

    .line 67
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 68
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    :cond_12
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->hangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getMeetingMembersOrderedByEntry()Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, members:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 74
    .local v2, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 75
    sget-object v4, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V

    .line 76
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->size:I

    iget v5, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->size:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->addView(Landroid/view/View;)V

    goto :goto_20

    .line 81
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_47
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/FilmStripView;->addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_20

    .line 85
    .end local v2           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->eventHandler:Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 86
    return-void
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/FilmStripView;->hangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 103
    return-void
.end method
