.class Lcom/google/android/music/MusicPlaybackService$13;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->switchToAtHomeDevicePlayback([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$config:[B

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$playbackService:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/MusicPlaybackService;[BLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$playbackService:Lcom/google/android/music/MusicPlaybackService;

    iput-object p3, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$config:[B

    iput-object p4, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$groupId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    monitor-enter v7

    .line 1615
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1617
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$playbackService:Lcom/google/android/music/MusicPlaybackService;

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;-><init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/jumper/MusicPreferences;)V

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1202(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    .line 1619
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->onCreate()V

    .line 1622
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$config:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$groupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->setConfig([BZLjava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v1

    if-ne v0, v1, :cond_b1

    .line 1624
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1625
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/LocalDevicePlayback;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/LocalDevicePlayback;->getQueuePosition()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v5}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/LocalDevicePlayback;->position()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->setLastLocalPlaybackInfo(JLcom/google/android/music/medialist/SongList;IJ)V

    .line 1630
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->pause()V

    .line 1632
    :cond_8a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->deactivate()V

    .line 1633
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->activate()V

    .line 1634
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1636
    :cond_b1
    monitor-exit v7
    :try_end_b2
    .catchall {:try_start_7 .. :try_end_b2} :catchall_d9

    .line 1637
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.queuechanged"

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V

    .line 1638
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v2, "com.android.music.metachanged"

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V

    .line 1639
    return-void

    .line 1636
    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v7
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v0
.end method
