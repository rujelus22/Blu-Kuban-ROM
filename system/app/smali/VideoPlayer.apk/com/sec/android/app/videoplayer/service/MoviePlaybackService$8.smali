.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;
.super Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;
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
    .line 1904
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIsDRM(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->checkIsDRM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getFullPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 5

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2202(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1961
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1962
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1964
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v1, 0x66

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->pause()V

    .line 1966
    return-void
.end method

.method public play()V
    .registers 5

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2202(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1973
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v1, 0x65

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1974
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    .line 1975
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->reset()V

    .line 1979
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->resume()V

    .line 2007
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public seekTo(II)J
    .registers 5
    .parameter "pos"
    .parameter "seekMode"

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->seek(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public setDisplay()V
    .registers 2

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->setDisplay()V

    .line 1999
    return-void
.end method

.method public setInternalEq(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->setInternalEq(I)V

    .line 1991
    return-void
.end method

.method public setWakeMode(Z)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->setWakeMode(Z)V

    .line 1987
    return-void
.end method

.method public startPlay(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->startPlay(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2202(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1952
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/16 v1, 0x67

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stop()V

    .line 1957
    return-void
.end method

.method public suspend()V
    .registers 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->suspend()V

    .line 2003
    return-void
.end method
