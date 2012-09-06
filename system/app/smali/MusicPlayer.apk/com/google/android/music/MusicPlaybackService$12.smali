.class Lcom/google/android/music/MusicPlaybackService$12;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->switchToLocalDevicePlayback()V
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
    .line 1581
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1584
    const/4 v0, 0x0

    .line 1585
    .local v0, switched:Z
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    monitor-enter v2

    .line 1586
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v1

    if-nez v1, :cond_41

    .line 1588
    const-string v1, "MediaPlaybackService"

    const-string v3, "Can\'t switch to local playback. It is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_17
    :goto_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_7e

    .line 1599
    if-eqz v0, :cond_40

    .line 1600
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v3, "com.android.music.queuechanged"

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V

    .line 1601
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v3, "com.android.music.metachanged"

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V

    .line 1604
    :cond_40
    return-void

    .line 1589
    :cond_41
    :try_start_41
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 1590
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 1591
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->deactivate()V

    .line 1593
    :cond_64
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/LocalDevicePlayback;->activate()V

    .line 1594
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1595
    const/4 v0, 0x1

    goto :goto_17

    .line 1597
    :catchall_7e
    move-exception v1

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_41 .. :try_end_80} :catchall_7e

    throw v1
.end method
