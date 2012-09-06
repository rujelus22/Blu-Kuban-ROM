.class final Lcom/google/android/ytremote/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/b/k;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/b/k;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .prologue
    .line 504
    const-wide/16 v0, 0x3e8

    .line 506
    iget-object v2, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v2}, Lcom/google/android/ytremote/b/k;->a(Lcom/google/android/ytremote/b/k;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_58

    .line 523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
    iget-object v0, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->b(Lcom/google/android/ytremote/b/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 530
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 534
    iget-object v0, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->d(Lcom/google/android/ytremote/b/k;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 535
    iget-object v0, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->c(Lcom/google/android/ytremote/b/k;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 536
    iget-object v0, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->e(Lcom/google/android/ytremote/b/k;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 537
    iget-object v0, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/ytremote/b/k;->a(Lcom/google/android/ytremote/b/k;Z)V

    .line 538
    return-void

    .line 506
    :cond_58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 508
    :try_start_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 509
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 511
    const-wide/16 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v5

    sub-long v5, v1, v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_74} :catch_77
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5e .. :try_end_74} :catch_82
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5e .. :try_end_74} :catch_8d

    move-result-wide v0

    move-wide v1, v0

    .line 510
    goto :goto_d

    .line 512
    :catch_77
    move-exception v0

    .line 513
    invoke-static {}, Lcom/google/android/ytremote/b/k;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error waiting for reading device response task to complete"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 514
    :catch_82
    move-exception v0

    .line 515
    invoke-static {}, Lcom/google/android/ytremote/b/k;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error waiting for reading device response task to complete"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 516
    :catch_8d
    move-exception v3

    .line 517
    invoke-static {}, Lcom/google/android/ytremote/b/k;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Timed out while waiting for reading device response task to complete"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_d

    .line 524
    :cond_9d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->b(Lcom/google/android/ytremote/b/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/b;

    .line 526
    iget-object v4, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v4}, Lcom/google/android/ytremote/b/k;->c(Lcom/google/android/ytremote/b/k;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 527
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    .line 530
    :cond_c1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 531
    iget-object v2, p0, Lcom/google/android/ytremote/b/o;->a:Lcom/google/android/ytremote/b/k;

    invoke-static {v2}, Lcom/google/android/ytremote/b/k;->b(Lcom/google/android/ytremote/b/k;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30
.end method
