.class Lcom/google/android/music/AsyncMediaPlayer$2;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer OnCompletion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;
    invoke-static {v0}, Lcom/google/android/music/AsyncMediaPlayer;->access$100(Lcom/google/android/music/AsyncMediaPlayer;)Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->pause()V

    .line 721
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;
    invoke-static {v0}, Lcom/google/android/music/AsyncMediaPlayer;->access$200(Lcom/google/android/music/AsyncMediaPlayer;)Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->reportTrackEnded()V

    .line 722
    return-void
.end method
