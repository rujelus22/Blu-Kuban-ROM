.class final Lcom/mobfox/video/sdk/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bj;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bq;->a:Lcom/mobfox/video/sdk/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v6, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "Time Event Thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bq;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->c(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/mobfox/video/sdk/bq;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->m(Lcom/mobfox/video/sdk/bj;)I

    move-result v0

    if-ne v0, v6, :cond_49

    :try_start_20
    iget-object v0, p0, Lcom/mobfox/video/sdk/bq;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->c(Lcom/mobfox/video/sdk/bj;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v3, v0, 0x3e8

    iget-object v0, p0, Lcom/mobfox/video/sdk/bq;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->n(Lcom/mobfox/video/sdk/bj;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_49

    const/4 v1, 0x0

    move v2, v1

    :goto_40
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v2, v1, :cond_5f

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_49} :catch_75

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/mobfox/video/sdk/bq;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bj;->o(Lcom/mobfox/video/sdk/bj;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "Time Event Thread stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5f
    :try_start_5f
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobfox/video/sdk/bt;

    iget-object v4, p0, Lcom/mobfox/video/sdk/bq;->a:Lcom/mobfox/video/sdk/bj;

    iget-object v4, v4, Lcom/mobfox/video/sdk/bj;->a:Landroid/os/Handler;

    new-instance v5, Lcom/mobfox/video/sdk/br;

    invoke-direct {v5, p0, v1, v3}, Lcom/mobfox/video/sdk/br;-><init>(Lcom/mobfox/video/sdk/bq;Lcom/mobfox/video/sdk/bt;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_71} :catch_75

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_40

    :catch_75
    move-exception v0

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Time Event Thread error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method
