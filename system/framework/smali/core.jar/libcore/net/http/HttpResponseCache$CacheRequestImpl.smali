.class final Llibcore/net/http/HttpResponseCache$CacheRequestImpl;
.super Ljava/net/CacheRequest;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Ljava/io/OutputStream;

.field private cacheOut:Ljava/io/OutputStream;

.field private done:Z

.field private final editor:Llibcore/io/DiskLruCache$Editor;

.field final synthetic this$0:Llibcore/net/http/HttpResponseCache;


# direct methods
.method public constructor <init>(Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V
    .registers 5
    .parameter
    .parameter "editor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 251
    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->editor:Llibcore/io/DiskLruCache$Editor;

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    .line 253
    new-instance v0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;

    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;-><init>(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    .line 266
    return-void
.end method

.method static synthetic access$100(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 244
    iget-boolean v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$102(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    iput-boolean p1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3

    .prologue
    .line 269
    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    monitor-enter v1

    .line 270
    :try_start_3
    iget-boolean v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_9

    .line 271
    monitor-exit v1

    .line 281
    :goto_8
    return-void

    .line 273
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    .line 274
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    invoke-static {v0}, Llibcore/net/http/HttpResponseCache;->access$308(Llibcore/net/http/HttpResponseCache;)I

    .line 275
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 276
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 278
    :try_start_17
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->editor:Llibcore/io/DiskLruCache$Editor;

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_8

    .line 279
    :catch_1d
    move-exception v0

    goto :goto_8

    .line 275
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    return-object v0
.end method
