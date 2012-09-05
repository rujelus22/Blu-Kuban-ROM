.class Ld/M;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field final synthetic a:Ld/L;


# direct methods
.method constructor <init>(Ld/L;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 17

    iput-object p1, p0, Ld/M;->a:Ld/L;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method


# virtual methods
.method protected terminated()V
    .registers 4

    iget-object v0, p0, Ld/M;->a:Ld/L;

    invoke-static {v0}, Ld/L;->a(Ld/L;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Ld/M;->a:Ld/L;

    iget-object v0, v0, Ld/L;->d:Ld/aq;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ld/M;->a:Ld/L;

    iget-object v1, p0, Ld/M;->a:Ld/L;

    iget-object v1, v1, Ld/L;->d:Ld/aq;

    invoke-virtual {v0, v1}, Ld/L;->a(Ld/aq;)V

    :cond_17
    :try_start_17
    invoke-static {}, Ld/ai;->a()Ld/ai;

    move-result-object v0

    iget-object v1, p0, Ld/M;->a:Ld/L;

    invoke-static {v1}, Ld/L;->b(Ld/L;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/ai;->b(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_36

    iget-object v0, p0, Ld/M;->a:Ld/L;

    iget-object v0, v0, Ld/L;->a:Ld/C;

    if-eqz v0, :cond_35

    iget-object v0, p0, Ld/M;->a:Ld/L;

    iget-object v0, v0, Ld/L;->a:Ld/C;

    iget-object v1, p0, Ld/M;->a:Ld/L;

    iget-object v1, v1, Ld/L;->d:Ld/aq;

    invoke-interface {v0, v1}, Ld/C;->a(Ld/aq;)V

    :cond_35
    return-void

    :catchall_36
    move-exception v0

    iget-object v1, p0, Ld/M;->a:Ld/L;

    iget-object v1, v1, Ld/L;->a:Ld/C;

    if-eqz v1, :cond_48

    iget-object v1, p0, Ld/M;->a:Ld/L;

    iget-object v1, v1, Ld/L;->a:Ld/C;

    iget-object v2, p0, Ld/M;->a:Ld/L;

    iget-object v2, v2, Ld/L;->d:Ld/aq;

    invoke-interface {v1, v2}, Ld/C;->a(Ld/aq;)V

    :cond_48
    throw v0
.end method
