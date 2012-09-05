.class public Lcom/google/android/street/HttpCache$Aborter;
.super Ljava/lang/Object;
.source "HttpCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/HttpCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aborter"
.end annotation


# instance fields
.field private mAbort:Z

.field private final mRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/client/methods/AbortableHttpRequest;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mRequests:Ljava/util/Map;

    .line 90
    return-void
.end method


# virtual methods
.method declared-synchronized aborted()Z
    .registers 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mAbort:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized add(Lorg/apache/http/client/methods/AbortableHttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mAbort:Z

    if-eqz v0, :cond_a

    .line 94
    invoke-interface {p1}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 98
    :goto_8
    monitor-exit p0

    return-void

    .line 96
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mRequests:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_8

    .line 93
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized remove(Lorg/apache/http/client/methods/AbortableHttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 101
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 102
    :try_start_3
    iget-object v0, p0, Lcom/google/android/street/HttpCache$Aborter;->mRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 104
    :cond_8
    monitor-exit p0

    return-void

    .line 101
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
