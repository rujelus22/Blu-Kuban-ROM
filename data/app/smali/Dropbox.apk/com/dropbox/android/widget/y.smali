.class final Lcom/dropbox/android/widget/y;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxVideoView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, p3}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 461
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, p4}, Lcom/dropbox/android/widget/DbxVideoView;->g(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 462
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->j(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4b

    move v0, v1

    .line 463
    :goto_16
    iget-object v3, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v3}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v3

    if-ne v3, p3, :cond_4d

    iget-object v3, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v3}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v3

    if-ne v3, p4, :cond_4d

    .line 464
    :goto_26
    iget-object v2, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxVideoView;->e(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_4a

    if-eqz v0, :cond_4a

    if-eqz v1, :cond_4a

    .line 465
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->g(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v0

    if-eqz v0, :cond_45

    .line 466
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    iget-object v1, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->g(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->a(I)V

    .line 468
    :cond_45
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->a()V

    .line 470
    :cond_4a
    return-void

    :cond_4b
    move v0, v2

    .line 462
    goto :goto_16

    :cond_4d
    move v1, v2

    .line 463
    goto :goto_26
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, p1}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 476
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->m(Lcom/dropbox/android/widget/DbxVideoView;)V

    .line 477
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 484
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    .line 485
    :cond_17
    iget-object v0, p0, Lcom/dropbox/android/widget/y;->a:Lcom/dropbox/android/widget/DbxVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->e(Lcom/dropbox/android/widget/DbxVideoView;Z)V

    .line 486
    return-void
.end method
