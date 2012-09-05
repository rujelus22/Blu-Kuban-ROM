.class public Lcom/vlingo/client/core/tts/TTSCacheImpl;
.super Ljava/lang/Object;
.source "TTSCacheImpl.java"

# interfaces
.implements Lcom/vlingo/client/core/tts/TTSCache;


# instance fields
.field private final fileCache:Lcom/vlingo/client/core/tts/TTSCache;

.field private final persistentCache:Lcom/vlingo/client/core/tts/TTSCache;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/tts/TTSCache;Lcom/vlingo/client/core/tts/TTSCache;)V
    .registers 3
    .parameter "persistentCache"
    .parameter "fileCache"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->persistentCache:Lcom/vlingo/client/core/tts/TTSCache;

    .line 15
    iput-object p2, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized addToCache(Lcom/vlingo/client/core/tts/TTSRequest2;[B)Z
    .registers 4
    .parameter "mutableRequest"
    .parameter "data"

    .prologue
    .line 19
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1, p2}, Lcom/vlingo/client/core/tts/TTSCache;->addToCache(Lcom/vlingo/client/core/tts/TTSRequest2;[B)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanup()V
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0}, Lcom/vlingo/client/core/tts/TTSCache;->cleanup()V

    .line 24
    return-void
.end method

.method public declared-synchronized containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    .registers 3
    .parameter "immutableRequest"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->persistentCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0}, Lcom/vlingo/client/core/tts/TTSCache;->delete()V

    .line 32
    return-void
.end method

.method public declared-synchronized getCache(Lcom/vlingo/client/core/tts/TTSRequest2;)[B
    .registers 3
    .parameter "immutableRequest"

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->persistentCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->persistentCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->getCache(Lcom/vlingo/client/core/tts/TTSRequest2;)[B
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    move-result-object v0

    .line 41
    :goto_f
    monitor-exit p0

    return-object v0

    .line 38
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 39
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->getCache(Lcom/vlingo/client/core/tts/TTSRequest2;)[B
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    move-result-object v0

    goto :goto_f

    .line 41
    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    .line 35
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 3
    .parameter "immutableRequest"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->persistentCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 46
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->persistentCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->updateRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    .line 51
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 48
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->containsKey(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 49
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSCacheImpl;->fileCache:Lcom/vlingo/client/core/tts/TTSCache;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/tts/TTSCache;->updateRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_e

    .line 45
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
