.class public final Lcom/google/common/util/concurrent/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 3
    .parameter

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

    .line 134
    :catch_f
    move-exception v0

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
