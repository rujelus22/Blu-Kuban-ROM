.class Lcom/google/android/music/MusicPlaybackService$1;
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
    .line 100
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, action:Ljava/lang/String;
    const-string v4, "command"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, cmd:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIntentReceiver.onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 107
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->shouldIgnoreCommand(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, p2, v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$000(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 142
    :cond_32
    :goto_32
    return-void

    .line 110
    :cond_33
    const-string v4, "next"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "com.android.music.musicservicecommand.next"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 111
    :cond_43
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->next()V

    goto :goto_32

    .line 112
    :cond_49
    const-string v4, "previous"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 113
    :cond_59
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    goto :goto_32

    .line 114
    :cond_5f
    const-string v4, "togglepause"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    const-string v4, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 115
    :cond_6f
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 116
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    goto :goto_32

    .line 118
    :cond_7d
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_32

    .line 120
    :cond_83
    const-string v4, "pause"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    const-string v4, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 121
    :cond_93
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    goto :goto_32

    .line 122
    :cond_99
    const-string v4, "play"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 123
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_32

    .line 124
    :cond_a7
    const-string v4, "stop"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 125
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 126
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    goto/16 :goto_32

    .line 127
    :cond_bd
    const-string v4, "appwidgetupdate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 130
    invoke-static {}, Lcom/google/android/music/MusicPlaybackService;->access$100()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 131
    const-string v4, "MediaPlaybackService"

    const-string v5, "onReceive() with appwidgetupdate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_d2
    const-string v4, "appWidgetIds"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 134
    .local v1, appWidgetIds:[I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, nowPlaying:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v4, v3}, Lcom/google/android/music/MusicPlaybackService;->populateExtrasFromSharedPreferences(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 136
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v5, "com.android.music.metachanged"

    invoke-static {v4, v3, v5}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->notifyChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_32

    .line 138
    .end local v1           #appWidgetIds:[I
    .end local v3           #nowPlaying:Landroid/content/Intent;
    :cond_ed
    const-string v4, "com.android.music.playstatusrequest"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 139
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v6, "com.android.music.playstatusresponse"

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V

    goto/16 :goto_32
.end method
