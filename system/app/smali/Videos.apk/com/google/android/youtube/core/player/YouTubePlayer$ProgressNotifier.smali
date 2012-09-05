.class Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
.super Ljava/lang/Thread;
.source "YouTubePlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private final bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final duration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 766
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 767
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 768
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 769
    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 796
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_66

    move v4, v5

    .line 827
    :goto_8
    return v4

    .line 798
    :pswitch_9
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v5}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$3000(Lcom/google/android/youtube/core/player/YouTubePlayer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    .line 799
    .local v2, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v2, :cond_54

    .line 801
    :try_start_17
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    .line 802
    .local v3, p:I
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 803
    .local v0, d:I
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 804
    if-lez v3, :cond_44

    .line 805
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-le v3, v5, :cond_34

    .line 807
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v6, 0x0

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I
    invoke-static {v5, v6}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2602(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I

    .line 809
    :cond_34
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 810
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v6, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyProgress(III)V
    invoke-static {v5, v3, v6, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2300(Lcom/google/android/youtube/core/player/YouTubePlayer;III)V

    .line 812
    :cond_44
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_4c} :catch_4d

    goto :goto_8

    .line 813
    .end local v0           #d:I
    .end local v3           #p:I
    :catch_4d
    move-exception v1

    .line 815
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v5, "Error calling mediaPlayer"

    invoke-static {v5, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 818
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->stopNotifying()V

    goto :goto_8

    .line 823
    .end local v2           #mediaPlayer:Landroid/media/MediaPlayer;
    :pswitch_58
    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 824
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    goto :goto_8

    .line 796
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_9
        :pswitch_58
    .end packed-switch
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 793
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 773
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 774
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    .line 775
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 776
    return-void
.end method

.method public startNotifying()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 779
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2700(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 780
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 783
    :cond_13
    return-void
.end method

.method public stopNotifying()V
    .registers 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2700(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 787
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    :cond_e
    return-void
.end method
