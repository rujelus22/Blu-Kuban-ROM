.class final Lcom/mobfox/video/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/i;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/i;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v4, 0x3

    :goto_1
    invoke-static {}, Lcom/mobfox/video/sdk/ci;->a()Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "MOBFOX"

    const-string v1, "starting request thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :try_start_16
    new-instance v0, Lcom/mobfox/video/sdk/ce;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/ce;-><init>()V

    iget-object v1, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v1}, Lcom/mobfox/video/sdk/i;->a(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/cf;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/ce;->a(Lcom/mobfox/video/sdk/cf;)Lcom/mobfox/video/sdk/cl;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mobfox/video/sdk/i;->a(Lcom/mobfox/video/sdk/i;Lcom/mobfox/video/sdk/cl;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "MOBFOX"

    const-string v1, "response OK received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget-object v0, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->d(Lcom/mobfox/video/sdk/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mobfox/video/sdk/k;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/k;-><init>(Lcom/mobfox/video/sdk/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_5c} :catch_a0

    :cond_5c
    :goto_5c
    const-string v0, "MOBFOX"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "MOBFOX"

    const-string v1, "finishing ad request thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    iget-object v0, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->e(Lcom/mobfox/video/sdk/i;)V

    return-void

    :cond_71
    const-wide/16 v0, 0xc8

    :try_start_73
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_1

    :catch_77
    move-exception v0

    goto :goto_1

    :cond_79
    :try_start_79
    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v0, "MOBFOX"

    const-string v1, "response NO AD received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    iget-object v0, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->d(Lcom/mobfox/video/sdk/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mobfox/video/sdk/l;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/l;-><init>(Lcom/mobfox/video/sdk/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_9f} :catch_a0

    goto :goto_5c

    :catch_a0
    move-exception v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    new-instance v2, Lcom/mobfox/video/sdk/cl;

    invoke-direct {v2}, Lcom/mobfox/video/sdk/cl;-><init>()V

    invoke-static {v1, v2}, Lcom/mobfox/video/sdk/i;->a(Lcom/mobfox/video/sdk/i;Lcom/mobfox/video/sdk/cl;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v1}, Lcom/mobfox/video/sdk/i;->b(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/cl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/mobfox/video/sdk/cl;->a(I)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v1}, Lcom/mobfox/video/sdk/i;->c(Lcom/mobfox/video/sdk/i;)Lcom/mobfox/video/sdk/h;

    move-result-object v1

    if-eqz v1, :cond_5c

    const-string v1, "MOBFOX"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_dc

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad Load failed. Reason:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_dc
    new-instance v1, Lcom/mobfox/video/sdk/cg;

    invoke-direct {v1, v0}, Lcom/mobfox/video/sdk/cg;-><init>(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/j;->a:Lcom/mobfox/video/sdk/i;

    invoke-static {v0}, Lcom/mobfox/video/sdk/i;->d(Lcom/mobfox/video/sdk/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/mobfox/video/sdk/m;

    invoke-direct {v2, p0, v1}, Lcom/mobfox/video/sdk/m;-><init>(Lcom/mobfox/video/sdk/j;Lcom/mobfox/video/sdk/cg;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5c
.end method
