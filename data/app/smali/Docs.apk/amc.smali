.class public final Lamc;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"


# direct methods
.method public static a(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 214
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_f

    move-result-object v1

    .line 220
    if-eqz v0, :cond_e

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object v1

    .line 215
    :catch_f
    move-exception v0

    .line 216
    const/4 v0, 0x1

    .line 217
    goto :goto_1

    .line 220
    :catchall_12
    move-exception v1

    if-eqz v0, :cond_1c

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    throw v1
.end method

.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 132
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_f

    move-result-object v1

    .line 138
    if-eqz v0, :cond_e

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object v1

    .line 133
    :catch_f
    move-exception v0

    .line 134
    const/4 v0, 0x1

    .line 135
    goto :goto_1

    .line 138
    :catchall_12
    move-exception v1

    if-eqz v0, :cond_1c

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1c
    throw v1
.end method

.method public static a(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;TE;)V"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 235
    :goto_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_e

    .line 242
    if-eqz v0, :cond_d

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    .line 237
    :catch_e
    move-exception v0

    .line 238
    const/4 v0, 0x1

    .line 239
    goto :goto_1

    .line 242
    :catchall_11
    move-exception v1

    if-eqz v0, :cond_1b

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1b
    throw v1
.end method
