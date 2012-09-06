.class final Lcom/google/android/youtube/app/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/b/a/e;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/b/a/e;)V
    .registers 3
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/youtube/app/b/a/g;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a/g;->b:Ljava/util/concurrent/ExecutorService;

    .line 164
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 168
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_37

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/g;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/a/e;->b(Lcom/google/android/youtube/app/b/a/e;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/youtube/app/b/a/h;

    iget-object v3, p0, Lcom/google/android/youtube/app/b/a/g;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-direct {v2, v3, v0}, Lcom/google/android/youtube/app/b/a/h;-><init>(Lcom/google/android/youtube/app/b/a/e;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_43
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_0

    .line 172
    :catch_1d
    move-exception v0

    .line 173
    :try_start_1e
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Socket closed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 175
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_43

    .line 180
    :goto_31
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 181
    :goto_36
    return-void

    .line 180
    :cond_37
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_36

    .line 177
    :cond_3d
    :try_start_3d
    const-string v1, "IOException when accepting a new connection"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    goto :goto_31

    .line 180
    :catchall_43
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v0
.end method
