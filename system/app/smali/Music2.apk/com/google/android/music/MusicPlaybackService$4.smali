.class Lcom/google/android/music/MusicPlaybackService$4;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 771
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, cmd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver.onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 774
    const-string v3, "next"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 775
    :cond_3b
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 800
    :cond_41
    :goto_41
    return-void

    .line 776
    :cond_42
    const-string v3, "previous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 777
    :cond_52
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    goto :goto_41

    .line 778
    :cond_58
    const-string v3, "togglepause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 779
    :cond_68
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 780
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 781
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v5}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    goto :goto_41

    .line 783
    :cond_7b
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_41

    .line 785
    :cond_81
    const-string v3, "pause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 786
    :cond_91
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 787
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v5}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    goto :goto_41

    .line 788
    :cond_9c
    const-string v3, "play"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 789
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_41

    .line 790
    :cond_aa
    const-string v3, "stop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 791
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 792
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v5}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 793
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    goto/16 :goto_41

    .line 794
    :cond_c5
    const-string v3, "appwidgetupdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 797
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 798
    .local v1, appWidgetIds:[I
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1900(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MediaAppWidgetProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$4;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V

    goto/16 :goto_41
.end method
