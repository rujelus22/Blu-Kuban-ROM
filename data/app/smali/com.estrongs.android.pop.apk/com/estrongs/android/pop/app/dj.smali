.class Lcom/estrongs/android/pop/app/dj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_da

    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_da

    const/4 v1, 0x2

    if-ne v0, v1, :cond_cb

    :try_start_24
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_54

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_54
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_8d

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->invalidate()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput v0, p1, Landroid/os/Message;->arg1:I

    :cond_8d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c6
    .catchall {:try_start_24 .. :try_end_c6} :catchall_da
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_c6} :catch_c8

    goto/16 :goto_1d

    :catch_c8
    move-exception v0

    goto/16 :goto_1d

    :cond_cb
    :try_start_cb
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_dd

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
    :try_end_d8
    .catchall {:try_start_cb .. :try_end_d8} :catchall_da

    goto/16 :goto_1d

    :catchall_da
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_dd
    :try_start_dd
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_100
    .catchall {:try_start_dd .. :try_end_100} :catchall_da

    goto/16 :goto_1d
.end method
