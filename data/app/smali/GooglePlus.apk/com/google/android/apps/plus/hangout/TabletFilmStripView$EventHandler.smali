.class Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "TabletFilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/TabletFilmStripView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)V

    return-void
.end method


# virtual methods
.method public onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 4
    .parameter "member"
    .parameter "muted"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onAudioMuteStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$500(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 85
    return-void
.end method

.method public onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onMediaBlock(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$300(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$300(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$400(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Lcom/google/android/apps/plus/hangout/HangoutTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->updateMainVideoStreaming()V

    .line 73
    return-void
.end method

.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "member"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$000(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$100(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 49
    :cond_d
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "member"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->mIsResumed:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$000(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 57
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_10
    if-ltz v1, :cond_32

    .line 58
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2f

    instance-of v2, v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    if-eqz v2, :cond_2f

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->getMember()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v2

    if-ne v2, p1, :cond_2f

    .line 61
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    check-cast v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;

    .end local v0           #child:Landroid/view/View;
    const/4 v3, 0x1

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->removeParticipantVideo(Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;Z)V
    invoke-static {v2, v0, v3}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$200(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;Z)V

    .line 57
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 65
    .end local v1           #i:I
    :cond_32
    return-void
.end method

.method public onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "mutee"
    .parameter "muter"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onRemoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    const/4 v1, 0x1

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setAudioMutedOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$500(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 91
    return-void
.end method

.method public onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V
    .registers 4
    .parameter "member"
    .parameter "paused"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVideoPauseStateChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->setOverlay(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$300(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 79
    return-void
.end method

.method public onVolumeChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V
    .registers 4
    .parameter "member"
    .parameter "volume"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;->onVolumeChanged(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/TabletFilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->updateVolume(Lcom/google/android/apps/plus/hangout/MeetingMember;I)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/hangout/TabletFilmStripView;->access$600(Lcom/google/android/apps/plus/hangout/TabletFilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;I)V

    .line 97
    return-void
.end method
