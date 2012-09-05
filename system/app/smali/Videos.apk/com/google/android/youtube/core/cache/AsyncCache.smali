.class public final Lcom/google/android/youtube/core/cache/AsyncCache;
.super Lcom/google/android/youtube/core/cache/AbstractCache;
.source "AsyncCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/cache/AbstractCache",
        "<TK;TE;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final pending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TE;>;"
        }
    .end annotation
.end field

.field private final target:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/cache/Cache;)V
    .registers 4
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    .local p2, target:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;TE;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/AbstractCache;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->executor:Ljava/util/concurrent/Executor;

    .line 43
    iput-object p2, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/cache/AsyncCache;)Lcom/google/android/youtube/core/cache/Cache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/cache/AsyncCache;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    monitor-enter v2

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, value:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_30

    .line 73
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->hit()V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hit (put pending). [ratio="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->ratio()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 83
    :goto_2e
    monitor-exit v2

    return-object v0

    .line 76
    :cond_30
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->target:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v1, p1}, Lcom/google/android/youtube/core/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_3f

    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->hit()V

    goto :goto_2e

    .line 84
    .end local v0           #value:Ljava/lang/Object;,"TE;"
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1

    .line 80
    .restart local v0       #value:Ljava/lang/Object;,"TE;"
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/AsyncCache;->miss()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3c

    goto :goto_2e
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache;,"Lcom/google/android/youtube/core/cache/AsyncCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    monitor-enter v1

    .line 52
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->pending:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/cache/AsyncCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/core/cache/AsyncCache$1;-><init>(Lcom/google/android/youtube/core/cache/AsyncCache;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void

    .line 53
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method
