.class public Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;


# instance fields
.field private blocks:Ljava/util/Hashtable;

.field private nextWriteFailureCode:I

.field private final prefs:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    return-void
.end method

.method private checkFailure()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->nextWriteFailureCode:I

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->nextWriteFailureCode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->nextWriteFailureCode:I

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;

    const-string v2, "FORCED ERROR"

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearPreferences()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public declared-synchronized deleteAllBlocks(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_c

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    :try_start_2b
    iput-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteBlock(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteBlockX(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBlockSize(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->getDataSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataSize(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public getFreeSpace(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public declared-synchronized listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_c

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    monitor-exit p0

    return-object v0
.end method

.method public readBlock(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public readPreference(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public savePreferences()V
    .registers 1

    return-void
.end method

.method public declared-synchronized setNextFailureCode(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->nextWriteFailureCode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .registers 4

    if-nez p2, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    const/4 v0, 0x1

    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public declared-synchronized writeBlock([BLjava/lang/String;)I
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_11

    const/4 v0, 0x0

    :try_start_4
    new-array v0, v0, [B

    :goto_6
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    move-object v0, p1

    goto :goto_6
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/InMemoryPersistentStore;->writeBlock([BLjava/lang/String;)I

    move-result v0

    return v0
.end method
