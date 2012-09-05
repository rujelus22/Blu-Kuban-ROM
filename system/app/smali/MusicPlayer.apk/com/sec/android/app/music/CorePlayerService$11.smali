.class Lcom/sec/android/app/music/CorePlayerService$11;
.super Landroid/os/Handler;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$2200(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$2400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1693
    :cond_39
    :goto_39
    return-void

    .line 1692
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$11;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mServiceStartId:I
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2500(Lcom/sec/android/app/music/CorePlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->stopSelf(I)V

    goto :goto_39
.end method
