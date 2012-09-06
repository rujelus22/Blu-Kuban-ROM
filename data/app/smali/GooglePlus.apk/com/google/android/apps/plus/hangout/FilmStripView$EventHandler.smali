.class Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "FilmStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/FilmStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/FilmStripView;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeetingMemberEntered(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "member"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/FilmStripView;->isResumed:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->access$000(Lcom/google/android/apps/plus/hangout/FilmStripView;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;

    #calls: Lcom/google/android/apps/plus/hangout/FilmStripView;->addParticipantVideo(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->access$100(Lcom/google/android/apps/plus/hangout/FilmStripView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 29
    :cond_d
    return-void
.end method

.method public onMeetingMemberExited(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter "member"

    .prologue
    .line 36
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;

    #getter for: Lcom/google/android/apps/plus/hangout/FilmStripView;->isResumed:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/FilmStripView;->access$000(Lcom/google/android/apps/plus/hangout/FilmStripView;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 38
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/FilmStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_31

    instance-of v2, v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;

    if-eqz v2, :cond_31

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->getMember()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v2

    if-ne v2, p1, :cond_31

    move-object v2, v0

    .line 41
    check-cast v2, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->onPause()V

    .line 42
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/FilmStripView$EventHandler;->this$0:Lcom/google/android/apps/plus/hangout/FilmStripView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/hangout/FilmStripView;->removeView(Landroid/view/View;)V

    .line 37
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 46
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_34
    return-void
.end method
