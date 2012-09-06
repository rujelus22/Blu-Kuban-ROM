.class final Lcom/mobfox/video/sdk/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bj;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxVideoView surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0, p3}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0, p4}, Lcom/mobfox/video/sdk/bj;->e(Lcom/mobfox/video/sdk/bj;I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bj;)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "Surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bj;Z)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->j(Lcom/mobfox/video/sdk/bj;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->k(Lcom/mobfox/video/sdk/bj;)V

    :cond_23
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "Surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/bj;->a(Lcom/mobfox/video/sdk/bj;Z)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->d(Lcom/mobfox/video/sdk/bj;)Lcom/mobfox/video/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/z;->b()V

    :cond_27
    iget-object v0, p0, Lcom/mobfox/video/sdk/bp;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->l(Lcom/mobfox/video/sdk/bj;)V

    return-void
.end method
