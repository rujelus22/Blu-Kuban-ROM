.class Lcom/google/android/music/MusicPlaybackService$6;
.super Landroid/os/Handler;
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
    .line 473
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$6;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$6;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$6;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-boolean v0, v0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$6;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getState()Lcom/google/android/music/DevicePlayback$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback$State;->playingOrWillPlay()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 485
    :cond_24
    :goto_24
    return-void

    .line 483
    :cond_25
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$6;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->saveState()V

    .line 484
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$6;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$6;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->stopSelf(I)V

    goto :goto_24
.end method
