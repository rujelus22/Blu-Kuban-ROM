.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 7
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 1793
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I
    invoke-static {v1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1502(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1794
    const-string v1, "MoviePlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBufferingUpdateListener - total download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1798
    .local v0, MediaHubProgressintent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.videoplayer.ACTION_MEDIA_HUB_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    const-string v1, "PROGRESS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1803
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_40

    .line 1804
    if-nez p2, :cond_41

    .line 1805
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->bufferstate()V

    .line 1809
    :cond_40
    :goto_40
    return-void

    .line 1806
    :cond_41
    const/16 v1, 0x64

    if-ne p2, v1, :cond_40

    .line 1807
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopBufferingChecker()V

    goto :goto_40
.end method
