.class Lcom/estrongs/android/pop/app/dw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/dw;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->g(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->dismissDialog(I)V

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->o(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->dismissDialog(I)V

    :cond_45
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-eqz v1, :cond_64

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->pause()V

    :cond_64
    iget-object v2, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->m(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_b2

    const/4 v0, 0x1

    :goto_98
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/dw;->b:Z

    if-nez v2, :cond_a0

    if-nez v1, :cond_a0

    if-eqz v0, :cond_10

    :cond_a0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->l(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;J)V

    goto/16 :goto_10

    :cond_b2
    const/4 v0, 0x0

    goto :goto_98
.end method
