.class Lcom/google/android/music/MediaPlaybackActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    .line 1980
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1981
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1984
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1300(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1985
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1200(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1986
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$1600(Lcom/google/android/music/MediaPlaybackActivity;J)V

    .line 1987
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1400(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 2012
    :cond_23
    :goto_23
    const-string v3, "com.android.music.playbackfailed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2013
    const-string v3, "errorType"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2016
    .local v2, failureType:I
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->getErrorMessage(I)Ljava/lang/CharSequence;
    invoke-static {v3, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$2100(Lcom/google/android/music/MediaPlaybackActivity;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2018
    .local v1, errorMessage:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    sget-object v4, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V
    invoke-static {v3, v4, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$2200(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    .line 2020
    .end local v1           #errorMessage:Ljava/lang/CharSequence;
    .end local v2           #failureType:I
    :cond_3e
    return-void

    .line 1988
    :cond_3f
    const-string v3, "com.android.music.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1989
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1200(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1990
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1400(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1992
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$1600(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_23

    .line 1993
    :cond_57
    const-string v3, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "com.android.music.playbackfailed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1997
    :cond_6f
    const-string v3, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 1998
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$2000(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2006
    :goto_80
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const-wide/16 v4, -0x1

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$102(Lcom/google/android/music/MediaPlaybackActivity;J)J

    .line 2007
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1200(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 2008
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1400(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 2009
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1300(Lcom/google/android/music/MediaPlaybackActivity;)V

    goto :goto_23

    .line 1999
    :cond_97
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 2000
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$1600(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_80

    .line 2003
    :cond_a3
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$12;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1500(Lcom/google/android/music/MediaPlaybackActivity;)J

    goto :goto_80
.end method
