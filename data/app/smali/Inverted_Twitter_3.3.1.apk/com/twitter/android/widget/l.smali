.class final Lcom/twitter/android/widget/l;
.super Landroid/widget/MediaController;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/MediaPlayerView;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/MediaPlayerView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/widget/l;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-direct {p0, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .registers 2

    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    iget-object v0, p0, Lcom/twitter/android/widget/l;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-static {v0}, Lcom/twitter/android/widget/MediaPlayerView;->a(Lcom/twitter/android/widget/MediaPlayerView;)Lcom/twitter/android/widget/m;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/widget/l;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-static {v0}, Lcom/twitter/android/widget/MediaPlayerView;->a(Lcom/twitter/android/widget/MediaPlayerView;)Lcom/twitter/android/widget/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/widget/m;->a()V

    :cond_14
    return-void
.end method

.method public final show(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/MediaController;->show(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/l;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-static {v0}, Lcom/twitter/android/widget/MediaPlayerView;->a(Lcom/twitter/android/widget/MediaPlayerView;)Lcom/twitter/android/widget/m;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/widget/l;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-static {v0}, Lcom/twitter/android/widget/MediaPlayerView;->a(Lcom/twitter/android/widget/MediaPlayerView;)Lcom/twitter/android/widget/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/twitter/android/widget/m;->a(I)V

    :cond_14
    return-void
.end method
