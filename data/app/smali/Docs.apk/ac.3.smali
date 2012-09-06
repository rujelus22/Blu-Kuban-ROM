.class Lac;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LZ;


# direct methods
.method constructor <init>(LZ;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lac;->a:LZ;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 4

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lac;->get()Ljava/lang/Object;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lac;->a:LZ;

    invoke-static {v1, v0}, LZ;->a(LZ;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_26

    .line 145
    :goto_9
    return-void

    .line 134
    :catch_a
    move-exception v0

    .line 135
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 136
    :catch_11
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :catch_1e
    move-exception v0

    .line 140
    iget-object v0, p0, Lac;->a:LZ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LZ;->a(LZ;Ljava/lang/Object;)V

    goto :goto_9

    .line 141
    :catch_26
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
