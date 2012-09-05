.class Lcom/google/android/youtube/core/player/YouTubePlayer$2;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$2;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newMediaPlayer(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .registers 3
    .parameter "stream"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$2;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    #getter for: Lcom/google/android/youtube/core/player/YouTubePlayer;->enableAwfulPlayer:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/android/youtube/core/player/AwfulPlayer;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    goto :goto_d
.end method
