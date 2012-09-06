.class final Lcom/dropbox/android/widget/w;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/v;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/v;)V
    .registers 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/dropbox/android/widget/w;->a:Lcom/dropbox/android/widget/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dropbox/android/widget/w;->a:Lcom/dropbox/android/widget/v;

    iget-object v0, v0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->k(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 400
    iget-object v0, p0, Lcom/dropbox/android/widget/w;->a:Lcom/dropbox/android/widget/v;

    iget-object v0, v0, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0}, Lcom/dropbox/android/widget/DbxVideoView;->k(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/widget/w;->a:Lcom/dropbox/android/widget/v;

    iget-object v1, v1, Lcom/dropbox/android/widget/v;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v1}, Lcom/dropbox/android/widget/DbxVideoView;->e(Lcom/dropbox/android/widget/DbxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 402
    :cond_1d
    return-void
.end method
