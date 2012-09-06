.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bj;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lcom/google/common/collect/bj;

.field private transient valueSet:Ljava/util/Set;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/bj;Ljava/lang/Object;Lcom/google/common/collect/bj;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1113
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1114
    iput-object p3, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/bj;

    .line 1115
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/bj;Ljava/lang/Object;Lcom/google/common/collect/bj;Lcom/google/common/collect/lv;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1106
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;Lcom/google/common/collect/bj;)V

    return-void
.end method


# virtual methods
.method delegate()Lcom/google/common/collect/bj;
    .registers 2

    .prologue
    .line 1118
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bj;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/bj;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/bj;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1133
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/bj;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 1134
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public inverse()Lcom/google/common/collect/bj;
    .registers 5

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1140
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/bj;

    if-nez v0, :cond_18

    .line 1141
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/bj;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/bj;->inverse()Lcom/google/common/collect/bj;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;Lcom/google/common/collect/bj;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/bj;

    .line 1144
    :cond_18
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lcom/google/common/collect/bj;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return-object v0

    .line 1145
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 4

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1123
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 1124
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/bj;->values()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    .line 1126
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 1127
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
