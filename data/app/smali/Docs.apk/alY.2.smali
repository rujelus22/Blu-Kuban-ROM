.class final LalY;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic a:Ljava/util/concurrent/TimeUnit;


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, LalY;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 140
    iget-object v0, p0, LalY;->a:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, LalY;->a:J

    iget-object v3, p0, LalY;->a:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 144
    :goto_e
    return-void

    .line 141
    :catch_f
    move-exception v0

    goto :goto_e
.end method
