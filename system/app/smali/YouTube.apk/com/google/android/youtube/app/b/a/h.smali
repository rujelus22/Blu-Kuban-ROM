.class final Lcom/google/android/youtube/app/b/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/b/a/e;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/b/a/e;Ljava/net/Socket;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/youtube/app/b/a/h;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/google/android/youtube/app/b/a/h;->b:Ljava/net/Socket;

    .line 192
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 195
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 196
    new-instance v1, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    .line 199
    :try_start_8
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/h;->b:Ljava/net/Socket;

    iget-object v2, p0, Lcom/google/android/youtube/app/b/a/h;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-static {v2}, Lcom/google/android/youtube/app/b/a/e;->c(Lcom/google/android/youtube/app/b/a/e;)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 200
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 202
    :goto_18
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 203
    iget-object v2, p0, Lcom/google/android/youtube/app/b/a/h;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-static {v2}, Lcom/google/android/youtube/app/b/a/e;->d(Lcom/google/android/youtube/app/b/a/e;)Lorg/apache/http/protocol/HttpService;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_68
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_8 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2d} :catch_3c
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_2d} :catch_6d

    goto :goto_18

    .line 205
    :catch_2e
    move-exception v0

    .line 206
    :try_start_2f
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_68

    .line 219
    :try_start_32
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_79

    .line 223
    :goto_35
    return-void

    .line 219
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_35

    .line 223
    :catch_3a
    move-exception v0

    goto :goto_35

    .line 207
    :catch_3c
    move-exception v0

    .line 208
    :try_start_3d
    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_62

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Connection reset by peer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Socket closed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 211
    :cond_59
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_68

    .line 219
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_35

    .line 223
    :catch_60
    move-exception v0

    goto :goto_35

    .line 213
    :cond_62
    :try_start_62
    const-string v2, "IOException when handling a request"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_68

    goto :goto_5c

    .line 218
    :catchall_68
    move-exception v0

    .line 219
    :try_start_69
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_7b

    .line 222
    :goto_6c
    throw v0

    .line 215
    :catch_6d
    move-exception v0

    .line 216
    :try_start_6e
    const-string v2, "HTTP protocol violation"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_68

    .line 219
    :try_start_73
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_35

    .line 223
    :catch_77
    move-exception v0

    goto :goto_35

    :catch_79
    move-exception v0

    goto :goto_35

    :catch_7b
    move-exception v1

    goto :goto_6c
.end method
