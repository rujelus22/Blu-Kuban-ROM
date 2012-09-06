.class final Lcom/mobfox/video/sdk/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bj;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const/4 v2, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxVideoView onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bj;I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->b(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->b(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v1}, Lcom/mobfox/video/sdk/bj;->c(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_2d
    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/z;->setEnabled(Z)V

    :cond_3f
    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->e(Lcom/mobfox/video/sdk/bj;)I

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v1, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/bj;->a(I)V

    :cond_4c
    iget-object v1, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v1}, Lcom/mobfox/video/sdk/bj;->f(Lcom/mobfox/video/sdk/bj;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v0, "MOBFOX"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxVideoView onPrepared surface not ready yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_63
    return-void

    :cond_64
    iget-object v1, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v1}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bj;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v1}, Lcom/mobfox/video/sdk/bj;->g(Lcom/mobfox/video/sdk/bj;)I

    move-result v1

    if-ne v1, v2, :cond_77

    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/bj;->a()V

    goto :goto_63

    :cond_77
    iget-object v1, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v1}, Lcom/mobfox/video/sdk/bj;->e()Z

    move-result v1

    if-nez v1, :cond_63

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/bj;->d()I

    move-result v0

    if-lez v0, :cond_63

    :cond_89
    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/mobfox/video/sdk/bl;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/z;->a(I)V

    goto :goto_63
.end method
