.class Lcom/google/android/music/player/AsyncMediaPlayer$2;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/player/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/player/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 776
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

    .line 777
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    const/4 v1, 0x4

    #calls: Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$200(Lcom/google/android/music/player/AsyncMediaPlayer;I)V

    .line 778
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;
    invoke-static {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$300(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/StopWatch;->pause()V

    .line 779
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;
    invoke-static {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$400(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->reportTrackEnded()V

    .line 780
    return-void
.end method
