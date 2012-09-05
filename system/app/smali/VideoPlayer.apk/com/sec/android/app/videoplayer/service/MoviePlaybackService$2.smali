.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;
.super Landroid/telephony/PhoneStateListener;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v3, 0x1

    .line 291
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneStateListener() call state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$802(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v0

    if-nez v0, :cond_33

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 303
    :cond_32
    :goto_32
    return-void

    .line 296
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_44

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_32

    .line 298
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v0

    if-ne v0, v3, :cond_32

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 300
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 301
    :cond_57
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_32
.end method
