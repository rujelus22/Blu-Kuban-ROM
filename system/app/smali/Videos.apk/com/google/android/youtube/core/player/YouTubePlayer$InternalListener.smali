.class Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 5
    .parameter "mediaPlayer"
    .parameter "newPercent"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$2200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 677
    .local v0, percent:I
    const/16 v1, 0x5a

    if-le p2, v1, :cond_1a

    if-eq v0, p2, :cond_18

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1a

    .line 678
    :cond_18
    const/16 p2, 0x64

    .line 680
    :cond_1a
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$2200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 681
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter "mediaPlayer"

    .prologue
    const/4 v3, 0x0

    .line 689
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 691
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->stopNotifying()V

    .line 692
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 693
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$500(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 694
    .local v0, duration:I
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/16 v2, 0x64

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyProgress(III)V
    invoke-static {v1, v0, v2, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2300(Lcom/google/android/youtube/core/player/YouTubePlayer;III)V

    .line 695
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z
    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 696
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/16 v2, 0x8

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V
    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$300(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V

    .line 697
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 10
    .parameter "mediaPlayer"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 700
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z
    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1400(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v3

    if-nez v3, :cond_9b

    .line 701
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 702
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z
    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1602(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer error during prepare [what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 710
    :goto_3b
    if-ne p2, v1, :cond_cd

    invoke-static {}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2500()Ljava/util/Set;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    move v0, v1

    .line 713
    .local v0, fatal:Z
    :goto_4c
    if-nez v0, :cond_ea

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2608(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v3

    if-ge v3, v5, :cond_ea

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying MediaPlayer error [retry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I
    invoke-static {v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2600(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 715
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->enableAwfulPlayer:Z
    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$202(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 716
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->live:Z
    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2700(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 717
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;
    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadLiveVideo(Lcom/google/android/youtube/core/model/Stream;)V

    .line 733
    :goto_9a
    return v1

    .line 705
    .end local v0           #fatal:Z
    :cond_9b
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z
    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 706
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z
    invoke-static {v3, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1602(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer error during playback [what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_cd
    move v0, v2

    .line 710
    goto/16 :goto_4c

    .line 719
    .restart local v0       #fatal:Z
    :cond_d0
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;
    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    invoke-static {v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v4

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_9a

    .line 722
    :cond_ea
    const-string v3, "Reporting MediaPlayer error"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 723
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 726
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->setInternalForceScreenOn(Z)V
    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1800(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 728
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z
    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 729
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z
    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1602(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 730
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I
    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2602(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I

    .line 731
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyError(II)V
    invoke-static {v2, p2, p3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2900(Lcom/google/android/youtube/core/player/YouTubePlayer;II)V

    goto :goto_9a
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter "mediaPlayer"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media player info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 738
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_4f

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffering data from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x1

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 742
    :cond_4f
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_58

    .line 743
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V
    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 745
    :cond_58
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mediaPlayer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 649
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 650
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z
    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 651
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1500(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1600(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 652
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V
    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$300(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V

    .line 654
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 655
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 658
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->setInternalForceScreenOn(Z)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1800(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 660
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 661
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mediaPlayer"

    .prologue
    .line 686
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 9
    .parameter "mediaPlayer"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 664
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 665
    if-lez p2, :cond_53

    move v0, v1

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video width must be positive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 666
    if-lez p3, :cond_21

    move v2, v1

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video height must be positive "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->playerView:Lcom/google/android/youtube/core/player/PlayerView;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/youtube/core/player/PlayerView;->setVideoSize(II)V

    .line 668
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2000(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 669
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2002(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 670
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 672
    :cond_52
    return-void

    :cond_53
    move v0, v2

    .line 665
    goto :goto_8
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 637
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 638
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 628
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 629
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceCreated:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1102(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 630
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1200(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 631
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1200(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->load(Lcom/google/android/youtube/core/model/Stream;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1300(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)V

    .line 632
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1202(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;

    .line 634
    :cond_22
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 643
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 644
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideo()V

    .line 645
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceCreated:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1102(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 646
    return-void
.end method
