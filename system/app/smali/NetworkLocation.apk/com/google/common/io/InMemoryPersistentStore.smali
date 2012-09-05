.class public Lcom/google/common/io/InMemoryPersistentStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/PersistentStore;


# instance fields
.field private blocks:Ljava/util/Hashtable;

.field private final prefs:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public readBlock(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public readPreference(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public savePreferences()V
    .registers 1

    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .registers 4

    if-nez p2, :cond_9

    iget-object v0, p0, Lcom/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    const/4 v0, 0x1

    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public declared-synchronized writeBlock([BLjava/lang/String;)I
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :try_start_4
    new-array p1, v0, [B

    :cond_6
    iget-object v0, p0, Lcom/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
