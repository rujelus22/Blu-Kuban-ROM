.class Lcom/google/android/music/player/AsyncMediaPlayer$4;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
    .line 818
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;
    invoke-static {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$000(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/CompatMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/player/CompatMediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    #setter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J
    invoke-static {v0, v1, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$702(Lcom/google/android/music/player/AsyncMediaPlayer;J)J

    .line 821
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;
    invoke-static {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$300(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/StopWatch;->reset()V

    .line 822
    return-void
.end method
