.class Lcom/sec/android/app/videoplayer/view/VideoSurface$1;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V
    .registers 2
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 299
    const-string v0, "VideoSurface"

    const-string v1, ">>>>>>>>requestLayout<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 301
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 304
    const-string v0, "VideoSurface"

    const-string v1, ">>>>>>>>surfaceCreated<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$002(Lcom/sec/android/app/videoplayer/view/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$102(Lcom/sec/android/app/videoplayer/view/VideoSurface;Z)Z

    .line 307
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 6
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    .line 310
    const-string v1, "VideoSurface"

    const-string v2, ">>>>>>>>surfaceDestroyed<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$002(Lcom/sec/android/app/videoplayer/view/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 314
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3f

    .line 315
    const-string v1, "VideoSurface"

    const-string v2, "surfaceDestroyed. real pause. not suspend state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_24
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_3f

    .line 318
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$300(Lcom/sec/android/app/videoplayer/view/VideoSurface;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->broadcastPausedPosition(Landroid/content/Context;)V

    .line 319
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateResumePos(Z)V

    .line 320
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V

    .line 321
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->reset()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3f} :catch_46

    .line 327
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoSurface;->mSurfaceExists:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->access$102(Lcom/sec/android/app/videoplayer/view/VideoSurface;Z)Z

    .line 328
    return-void

    .line 323
    :catch_46
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VideoSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed - RemoteException occured:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
