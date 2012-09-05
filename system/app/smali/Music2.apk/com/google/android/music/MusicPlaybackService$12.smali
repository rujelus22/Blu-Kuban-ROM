.class Lcom/google/android/music/MusicPlaybackService$12;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$12;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1182
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->val$intent:Landroid/content/Intent;

    if-eqz v2, :cond_49

    .line 1183
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->val$intent:Landroid/content/Intent;

    const-string v3, "command"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, cmd:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1187
    const-string v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1188
    :cond_44
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 1227
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 1189
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_4a
    const-string v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1190
    :cond_5a
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    goto :goto_49

    .line 1191
    :cond_60
    const-string v2, "togglepause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 1192
    :cond_70
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1193
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 1194
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->val$intent:Landroid/content/Intent;

    const-string v3, "removeNotification"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1195
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1196
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1197
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean v4, v2, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto :goto_49

    .line 1200
    :cond_96
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v2

    if-eqz v2, :cond_a8

    .line 1201
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_49

    .line 1203
    :cond_a8
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->setShuffleMode(I)V

    .line 1204
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    new-instance v3, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v3, v4}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    goto :goto_49

    .line 1208
    :cond_b9
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1209
    :cond_c9
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 1210
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1211
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1212
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean v4, v2, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto/16 :goto_49

    .line 1213
    :cond_de
    const-string v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 1214
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto/16 :goto_49

    .line 1215
    :cond_ed
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 1216
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->stop()V

    .line 1217
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1218
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1219
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean v4, v2, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto/16 :goto_49

    .line 1220
    :cond_10a
    const-string v2, "com.android.music.musicservicecommand.veto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1222
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 1223
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1224
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean v4, v2, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto/16 :goto_49
.end method

.method public taskCompleted()V
    .registers 5

    .prologue
    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2700(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1234
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2700(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1235
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2700(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_29

    .line 1237
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1239
    return-void

    .line 1237
    .end local v0           #msg:Landroid/os/Message;
    :catchall_29
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method
