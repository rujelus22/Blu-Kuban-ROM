.class final Lcom/dropbox/android/widget/u;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxVideoView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 346
    iget-object v0, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->c(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 347
    iget-object v0, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->d(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 348
    iget-object v0, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 349
    iget-object v0, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->f(Lcom/dropbox/android/widget/DbxVideoView;)Lcom/dropbox/android/widget/DbxMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxMediaController;->d()V

    .line 351
    :cond_1c
    iget-object v0, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->k(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 352
    iget-object v0, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->k(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/u;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->e(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 354
    :cond_33
    return-void
.end method
