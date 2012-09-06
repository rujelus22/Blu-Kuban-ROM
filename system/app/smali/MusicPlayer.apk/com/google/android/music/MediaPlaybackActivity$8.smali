.class Lcom/google/android/music/MediaPlaybackActivity$8;
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
    .line 1277
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v2, 0x1

    .line 1280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1282
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateQueue(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1500(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V

    .line 1283
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->refreshTrackListFromService()V
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1314
    :cond_18
    :goto_18
    return-void

    .line 1284
    :cond_19
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1287
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1600(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V

    .line 1288
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$600(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/PlaybackControls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 1289
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;J)V

    .line 1290
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)V

    goto :goto_18

    .line 1291
    :cond_3a
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1292
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$600(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/PlaybackControls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 1293
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1295
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_18

    .line 1296
    :cond_56
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1300
    :cond_6e
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1301
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$1700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    :goto_80
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const-wide/16 v2, -0x1

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v1, v2, v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$302(Lcom/google/android/music/MediaPlaybackActivity;J)J

    .line 1310
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$600(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/PlaybackControls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 1311
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1312
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1600(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V

    goto/16 :goto_18

    .line 1302
    :cond_9c
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1303
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v1, v2, v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_80

    .line 1306
    :cond_a8
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #calls: Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)J

    goto :goto_80
.end method
