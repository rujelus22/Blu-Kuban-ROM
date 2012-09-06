.class Lcom/google/common/collect/Synchronized$SynchronizedAsMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMapEntrySet:Ljava/util/Set;

.field transient asMapValues:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1157
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1158
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 5

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    if-nez v0, :cond_18

    .line 1171
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    .line 1174
    :cond_18
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return-object v0

    .line 1175
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1151
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .parameter

    .prologue
    .line 1161
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1162
    :try_start_3
    invoke-super {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1163
    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_c
    monitor-exit v1

    return-object v0

    :cond_e
    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    move-result-object v0

    goto :goto_c

    .line 1165
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .registers 5

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1180
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    if-nez v0, :cond_18

    .line 1181
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    .line 1184
    :cond_18
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return-object v0

    .line 1185
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
