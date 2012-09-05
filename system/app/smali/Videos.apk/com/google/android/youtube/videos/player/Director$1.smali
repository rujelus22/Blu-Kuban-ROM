.class Lcom/google/android/youtube/videos/player/Director$1;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->onDownloadProgress(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;

.field final synthetic val$percentDownloaded:I


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    iput p2, p0, Lcom/google/android/youtube/videos/player/Director$1;->val$percentDownloaded:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$000(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 605
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->resumeTime:I
    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$100(Lcom/google/android/youtube/videos/player/Director;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;
    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$000(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v2, v2, 0x3e8

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director$1;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;
    invoke-static {v3}, Lcom/google/android/youtube/videos/player/Director;->access$000(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v3

    iget v3, v3, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v3, v3, 0x3e8

    iget v4, p0, Lcom/google/android/youtube/videos/player/Director$1;->val$percentDownloaded:I

    invoke-static {v3, v4}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getSeekToPercent(II)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setTimes(III)V

    .line 608
    :cond_31
    return-void
.end method
