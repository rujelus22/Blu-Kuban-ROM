.class Lcom/google/android/music/MusicPlaybackService$13;
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
    .line 1275
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1279
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2800(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-boolean v0, v0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1289
    :cond_2b
    :goto_2b
    return-void

    .line 1287
    :cond_2c
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$2900(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->stopSelf(I)V

    goto :goto_2b
.end method
