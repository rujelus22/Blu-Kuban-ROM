.class final Lcom/mobfox/video/sdk/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bj;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bj;I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/bj;->b(Lcom/mobfox/video/sdk/bj;I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/z;->a(I)V

    :cond_1d
    iget-object v0, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->h(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->h(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/bm;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v1}, Lcom/mobfox/video/sdk/bj;->c(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_34
    return-void
.end method
