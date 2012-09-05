.class public Lcom/google/android/syncadapters/EntityReader;
.super Ljava/lang/Object;
.source "EntityReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

.field private final mEntityQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mForcedClosed:Z

.field private final mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

.field private final mIdQueryColumn:Ljava/lang/String;

.field private final mLogTag:Ljava/lang/String;

.field private mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    .registers 12
    .parameter "logTag"
    .parameter "provider"
    .parameter "account"
    .parameter
    .parameter
    .parameter
    .parameter "entityEndMarker"
    .parameter "handler"
    .parameter "idColumn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;",
            ">;",
            "Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, entryQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    .local p5, entryEndMarker:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    .local p6, entityQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;>;"
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    iput-object p1, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/android/syncadapters/EntityReader;->mProvider:Landroid/content/ContentProviderClient;

    .line 76
    iput-object p4, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    .line 77
    iput-object p6, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    .line 78
    iput-object p3, p0, Lcom/google/android/syncadapters/EntityReader;->mAccount:Landroid/accounts/Account;

    .line 79
    iput-object p5, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryEndMarker:Landroid/util/Pair;

    .line 80
    iput-object p7, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 81
    iput-object p8, p0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    .line 82
    iput-boolean v1, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    .line 83
    iput-object p9, p0, Lcom/google/android/syncadapters/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private readBatch(Ljava/util/List;)V
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 153
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 154
    .local v13, sb:Ljava/lang/StringBuilder;
    const-string v14, ""

    .line 155
    .local v14, separator:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 156
    .local v9, entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v14, ","

    .line 158
    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->idToSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_13

    .line 160
    .end local v9           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_36
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 163
    .local v7, entities:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/Entity;>;"
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 164
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querying batch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entities for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_6e
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mAccount:Landroid/accounts/Account;

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_7d} :catch_a9

    move-result-object v12

    .line 169
    .local v12, iterator:Landroid/content/EntityIterator;
    :goto_7e
    :try_start_7e
    iget-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_b0

    invoke-interface {v12}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 170
    iget-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_a4

    if-eqz v0, :cond_90

    .line 182
    :try_start_8c
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_8f} :catch_a9

    .line 187
    .end local v12           #iterator:Landroid/content/EntityIterator;
    :goto_8f
    return-void

    .line 173
    .restart local v12       #iterator:Landroid/content/EntityIterator;
    :cond_90
    :try_start_90
    invoke-interface {v12}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity;

    .line 174
    .local v8, entity:Landroid/content/Entity;
    invoke-virtual {v8}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 175
    .local v11, id:Ljava/lang/String;
    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_a4

    goto :goto_7e

    .line 182
    .end local v8           #entity:Landroid/content/Entity;
    .end local v11           #id:Ljava/lang/String;
    :catchall_a4
    move-exception v0

    :try_start_a5
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V

    throw v0
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_a9} :catch_a9

    .line 184
    .end local v12           #iterator:Landroid/content/EntityIterator;
    :catch_a9
    move-exception v6

    .line 185
    .local v6, e:Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_8f

    .line 177
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v12       #iterator:Landroid/content/EntityIterator;
    :cond_b0
    :try_start_b0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 178
    .restart local v9       #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->idToSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity;

    .line 179
    .restart local v8       #entity:Landroid/content/Entity;
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/wireless/gdata2/data/Entry;

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v0, v1, v8}, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;-><init>(Lcom/google/wireless/gdata2/data/Entry;ILandroid/content/Entity;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_ea
    .catchall {:try_start_b0 .. :try_end_ea} :catchall_a4

    goto :goto_b4

    .line 182
    .end local v8           #entity:Landroid/content/Entity;
    .end local v9           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_eb
    :try_start_eb
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_ee} :catch_a9

    goto :goto_8f
.end method

.method private readEntities()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 109
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 110
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    const-string v3, "readEntities"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 113
    .local v0, entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    :cond_15
    :goto_15
    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v2, :cond_41

    .line 114
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 115
    .local v1, idAndEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryEndMarker:Landroid/util/Pair;

    if-ne v1, v2, :cond_4d

    .line 116
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 117
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    const-string v3, "read idAndEntry end marker from queue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/EntityReader;->readBatch(Ljava/util/List;)V

    .line 121
    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-eqz v2, :cond_42

    .line 142
    .end local v1           #idAndEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_41
    :goto_41
    return-void

    .line 124
    .restart local v1       #idAndEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_42
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    :cond_45
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_41

    .line 129
    :cond_4d
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 130
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read idAndEntry from queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_6f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_15

    .line 136
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/EntityReader;->readBatch(Ljava/util/List;)V

    .line 137
    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v2, :cond_41

    .line 140
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_15
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 106
    :cond_c
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;

    .line 88
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    :try_start_c
    invoke-direct {p0}, Lcom/google/android/syncadapters/EntityReader;->readEntities()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_61
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_12} :catch_39

    .line 95
    iget-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 96
    :cond_1e
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_38
    :goto_38
    return-void

    .line 92
    :catch_39
    move-exception v0

    .line 95
    iget-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 96
    :cond_46
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 95
    :catchall_61
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 96
    :cond_6e
    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    throw v0
.end method
