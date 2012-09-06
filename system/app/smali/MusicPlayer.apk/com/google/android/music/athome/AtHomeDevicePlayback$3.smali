.class Lcom/google/android/music/athome/AtHomeDevicePlayback$3;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewSession(Lcom/google/android/music/athome/api/AtHomeSessionInfo;)V
    .registers 7
    .parameter "session"

    .prologue
    .line 1523
    const/4 v0, 0x1

    .line 1524
    .local v0, success:Z
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    monitor-enter v2

    .line 1525
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v1

    if-nez v1, :cond_12

    monitor-exit v2

    .line 1546
    :cond_11
    :goto_11
    return-void

    .line 1527
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_46

    .line 1528
    const-string v1, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state in onNewSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    monitor-exit v2

    goto :goto_11

    .line 1536
    :catchall_43
    move-exception v1

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_43

    throw v1

    .line 1532
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v3, 0x1

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->processSessionInfoLocked(Lcom/google/android/music/athome/api/AtHomeSessionInfo;Z)Z
    invoke-static {v1, p1, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5000(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeSessionInfo;Z)Z

    move-result v0

    .line 1533
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->isShuffle()Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeUtils;->getShuffleMode(Z)I

    move-result v3

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateShuffleModeLocked(I)Z
    invoke-static {v1, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5100(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z

    .line 1534
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getRepeatMode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeUtils;->atHomeToPlaybackServiceRepeatMode(I)I

    move-result v3

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateRepeatModeLocked(I)Z
    invoke-static {v1, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5200(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z

    .line 1536
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_43

    .line 1541
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-string v2, "com.google.android.music.shufflemodechanged"

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5600(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V

    .line 1542
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-string v2, "com.google.android.music.repeatmodechanged"

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$5700(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V

    .line 1543
    if-nez v0, :cond_11

    .line 1544
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    goto :goto_11
.end method
