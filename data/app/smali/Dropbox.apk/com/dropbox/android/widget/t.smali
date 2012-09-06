.class final Lcom/dropbox/android/widget/t;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxVideoView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 293
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->c(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 295
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, v3}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;Z)Z

    .line 296
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    iget-object v2, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxVideoView;->c(Lcom/dropbox/android/widget/DbxVideoView;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/dropbox/android/widget/DbxVideoView;->c(Lcom/dropbox/android/widget/DbxVideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;Z)Z

    .line 297
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, v3}, Lcom/dropbox/android/widget/DbxVideoView;->d(Lcom/dropbox/android/widget/DbxVideoView;Z)Z

    .line 299
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->d(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 300
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->d(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->e(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 302
    :cond_3a
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 303
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dropbox/android/widget/DbxMediaController;->setEnabled(Z)V

    .line 305
    :cond_4b
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 306
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 308
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->g(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v0

    .line 309
    if-eqz v0, :cond_6a

    .line 310
    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/widget/DbxVideoView;->a(I)V

    .line 312
    :cond_6a
    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v1

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v1

    if-eqz v1, :cond_ef

    .line 314
    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/DbxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v3}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 315
    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->h(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_c9

    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->i(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_c9

    .line 319
    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->j(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v1

    if-ne v1, v4, :cond_ca

    .line 320
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->a()V

    .line 321
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 322
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->b()V

    .line 339
    :cond_c9
    :goto_c9
    return-void

    .line 324
    :cond_ca
    iget-object v1, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/DbxVideoView;->e()Z

    move-result v1

    if-nez v1, :cond_c9

    if-nez v0, :cond_dc

    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->d()I

    move-result v0

    if-lez v0, :cond_c9

    .line 326
    :cond_dc
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 328
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxMediaController;->a(I)V

    goto :goto_c9

    .line 335
    :cond_ef
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->j(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v0

    if-ne v0, v4, :cond_c9

    .line 336
    iget-object v0, p0, Lcom/dropbox/android/widget/t;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->a()V

    goto :goto_c9
.end method
