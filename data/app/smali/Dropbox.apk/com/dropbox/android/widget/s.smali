.class final Lcom/dropbox/android/widget/s;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxVideoView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 283
    iget-object v0, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 284
    iget-object v0, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v0

    if-eqz v0, :cond_37

    .line 285
    iget-object v0, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/DbxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->a(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/dropbox/android/widget/s;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v2}, Lcom/dropbox/android/widget/DbxVideoView;->b(Lcom/dropbox/android/widget/DbxVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 287
    :cond_37
    return-void
.end method
