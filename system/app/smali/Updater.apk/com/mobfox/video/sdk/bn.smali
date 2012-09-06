.class final Lcom/mobfox/video/sdk/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bj;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0, v3}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bj;I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0, v3}, Lcom/mobfox/video/sdk/bj;->b(Lcom/mobfox/video/sdk/bj;I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->b()V

    :cond_44
    iget-object v0, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->i(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->i(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/bn;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v1}, Lcom/mobfox/video/sdk/bj;->c(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5e
    return v4
.end method
