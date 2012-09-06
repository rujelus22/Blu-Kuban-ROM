.class public Lcom/google/android/music/sync/google/MusicUpstreamSender;
.super Lcom/google/android/music/sync/common/UpstreamSender;
.source "MusicUpstreamSender.java"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAccountHash:I

.field private final mClient:Lcom/google/android/music/sync/api/MusicApiClient;

.field private final mContext:Landroid/content/Context;

.field private final mEnableTrackStatsUpSync:Z

.field private final mProtocolState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStore:Lcom/google/android/music/store/Store;

.field private final mTag:Ljava/lang/String;

.field private final mUseVerboseLogging:Z

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/music/sync/api/MusicApiClient;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/music/sync/api/MusicApiClient;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/music/sync/common/UpstreamSender;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;ILjava/lang/String;)V

    .line 91
    iput-object p5, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    .line 92
    invoke-static {p5}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    .line 93
    iput-object p3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    .line 95
    iput-object p6, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    .line 97
    iput-object p4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mProtocolState:Ljava/util/Map;

    .line 98
    const-class v0, Landroid/accounts/Account;

    const-string v1, "account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    .line 99
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccountHash:I

    .line 100
    iput-boolean p7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mEnableTrackStatsUpSync:Z

    .line 101
    return-void
.end method

.method private cleanupBatchMutations(Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 161
    .local p1, subBlock:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;>;"
    .local p2, batchMutateResponse:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;>;"
    const/4 v4, 0x0

    .line 162
    .local v4, isTxnSuccessful:Z
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v9}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 163
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 164
    .local v1, conflictCount:I
    const/4 v8, 0x0

    .line 166
    .local v8, tooManyItemsCount:I
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 167
    .local v5, listSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v5, :cond_70

    .line 168
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 169
    .local v6, mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;

    .line 170
    .local v7, response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    sget-object v9, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->TOO_MANY_ITEMS:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    iget-object v10, v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;->mResponseCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 174
    add-int/lit8 v8, v8, 0x1

    .line 175
    instance-of v9, v6, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v9, :cond_4e

    .line 176
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v9

    invoke-static {v2, v9, v10}, Lcom/google/android/music/store/PlayList$Item;->deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 182
    :cond_33
    :goto_33
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->isDeleted()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 183
    invoke-direct {p0, v6, v2}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    :goto_3c
    sget-object v9, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->CONFLICT:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    iget-object v10, v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;->mResponseCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 196
    :cond_48
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 178
    :cond_4e
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v10, "TOO_MANY_ITEMS response code returned for track or playlist mutation? Likely a server side error."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_56

    goto :goto_33

    .line 200
    .end local v3           #i:I
    .end local v5           #listSize:I
    .end local v6           #mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v7           #response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    :catchall_56
    move-exception v9

    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v10, v2, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v9

    .line 184
    .restart local v3       #i:I
    .restart local v5       #listSize:I
    .restart local v6       #mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .restart local v7       #response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    :cond_5d
    :try_start_5d
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_67

    .line 185
    invoke-direct {p0, v6, v2}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3c

    .line 188
    :cond_67
    iget-object v9, v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;->mId:Ljava/lang/String;

    invoke-interface {v6, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setRemoteId(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v6, v2}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_56

    goto :goto_3c

    .line 198
    .end local v6           #mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v7           #response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    :cond_70
    const/4 v4, 0x1

    .line 200
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v9, v2, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 202
    if-lez v8, :cond_95

    .line 203
    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a0

    const-string v9, "1 entry"

    :goto_84
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " rejected due to the constituent entity being too large."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_95
    if-eqz v1, :cond_b4

    .line 207
    new-instance v0, Lcom/google/android/music/sync/api/ConflictException;

    invoke-direct {v0}, Lcom/google/android/music/sync/api/ConflictException;-><init>()V

    .line 208
    .local v0, ce:Lcom/google/android/music/sync/api/ConflictException;
    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/api/ConflictException;->setConflictCount(I)V

    .line 209
    throw v0

    .line 203
    .end local v0           #ce:Lcom/google/android/music/sync/api/ConflictException;
    :cond_a0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " entries"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_84

    .line 211
    :cond_b4
    return-void
.end method

.method private cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "mutation"
    .parameter "db"

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, tombstoneTable:Ljava/lang/String;
    const/4 v0, 0x0

    .line 259
    .local v0, idColName:Ljava/lang/String;
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_3a

    .line 260
    const-string v1, "LIST_TOMBSTONES"

    .line 261
    const-string v0, "Id"

    .line 269
    :cond_a
    :goto_a
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_15

    .line 270
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Upstream sender: Removing playlist entity."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    return-void

    .line 262
    :cond_3a
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_43

    .line 263
    const-string v1, "LISTITEM_TOMBSTONES"

    .line 264
    const-string v0, "Id"

    goto :goto_a

    .line 265
    :cond_43
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/TrackTombstone;

    if-eqz v2, :cond_a

    .line 266
    const-string v1, "MUSIC_TOMBSTONES"

    .line 267
    const-string v0, "Id"

    goto :goto_a
.end method

.method private cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter "mutation"
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, table:Ljava/lang/String;
    const/4 v0, 0x0

    .line 216
    .local v0, idColName:Ljava/lang/String;
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_64

    .line 217
    const-string v1, "LISTS"

    .line 218
    const-string v0, "Id"

    .line 223
    :cond_b
    :goto_b
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_16

    .line 224
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Upstream sender: Undirtying inserted entity."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_16
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 227
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_dirty"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "SourceId"

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "SourceAccount"

    iget v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccountHash:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    return-void

    .line 219
    :cond_64
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_b

    .line 220
    const-string v1, "LISTITEMS"

    .line 221
    const-string v0, "Id"

    goto :goto_b
.end method

.method private cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter "mutation"
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, table:Ljava/lang/String;
    const/4 v0, 0x0

    .line 237
    .local v0, idColName:Ljava/lang/String;
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_4c

    .line 238
    const-string v1, "LISTS"

    .line 239
    const-string v0, "Id"

    .line 247
    :cond_b
    :goto_b
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_16

    .line 248
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Upstream sender: Undirtying updated entity."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_16
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 251
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_dirty"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    return-void

    .line 240
    :cond_4c
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_55

    .line 241
    const-string v1, "LISTITEMS"

    .line 242
    const-string v0, "Id"

    goto :goto_b

    .line 243
    :cond_55
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v2, :cond_b

    .line 244
    const-string v1, "MUSIC"

    .line 245
    const-string v0, "Id"

    goto :goto_b
.end method

.method private deletePlaylist(J)V
    .registers 8
    .parameter "localId"

    .prologue
    const/4 v4, 0x1

    .line 568
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 569
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 571
    .local v1, deleteStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_8
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_14

    .line 573
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 574
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 576
    return-void

    .line 573
    :catchall_14
    move-exception v2

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 574
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method private deletePlaylistEntry(J)V
    .registers 8
    .parameter "localId"

    .prologue
    const/4 v4, 0x1

    .line 579
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 580
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 582
    .local v1, deleteStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_8
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList$Item;->deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_14

    .line 584
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 585
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 587
    return-void

    .line 584
    :catchall_14
    move-exception v2

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 585
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method private fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z
    .registers 6
    .parameter "entry"

    .prologue
    .line 553
    new-instance v1, Lcom/google/android/music/store/PlayList;

    invoke-direct {v1}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 554
    .local v1, parentPlaylist:Lcom/google/android/music/store/PlayList;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 556
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_b
    iget-object v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList$Item;->getListId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 557
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getSourceId()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_30

    move-result-object v2

    if-nez v2, :cond_23

    .line 558
    :cond_1c
    const/4 v2, 0x0

    .line 562
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 564
    :goto_22
    return v2

    .line 560
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_30

    .line 562
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 564
    const/4 v2, 0x1

    goto :goto_22

    .line 562
    :catchall_30
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method private handleDeleteEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v0, :cond_b

    .line 899
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Upstream sender: Sending deleted playlist entry to cloud."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_14
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_b .. :try_end_14} :catch_25
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_b .. :try_end_14} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_52
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_b .. :try_end_14} :catch_5b
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_b .. :try_end_14} :catch_64
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_b .. :try_end_14} :catch_6d

    .line 921
    :goto_14
    const/4 v0, 0x0

    .line 922
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 924
    :try_start_1b
    invoke-direct {p0, p1, v1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_76

    .line 925
    const/4 v0, 0x1

    .line 927
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 929
    return-void

    .line 903
    :catch_25
    move-exception v0

    .line 905
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v2, "Invalid data on playlist entry delete.  Skipping item."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 906
    :catch_2e
    move-exception v0

    .line 907
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on upstream playlist entry delete."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 909
    :catch_52
    move-exception v0

    .line 910
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v2, "IO error on upstream playlist entry delete."

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 911
    :catch_5b
    move-exception v0

    .line 912
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a bad request (400) error code for a playlist entry delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 914
    :catch_64
    move-exception v0

    .line 915
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a forbidden (401) error code for a playlist entry delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 917
    :catch_6d
    move-exception v0

    .line 918
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a not found (404) error code for a playlist entry delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 927
    :catchall_76
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method private handleDeletePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v0, :cond_b

    .line 863
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Upstream sender: Sending deleted playlist to cloud."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_14
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_b .. :try_end_14} :catch_25
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_b .. :try_end_14} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_52
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_b .. :try_end_14} :catch_5b
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_b .. :try_end_14} :catch_64
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_b .. :try_end_14} :catch_6d

    .line 885
    :goto_14
    const/4 v0, 0x0

    .line 886
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 888
    :try_start_1b
    invoke-direct {p0, p1, v1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_76

    .line 889
    const/4 v0, 0x1

    .line 891
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 893
    return-void

    .line 867
    :catch_25
    move-exception v0

    .line 869
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v2, "Invalid data on playlist delete.  Skipping item."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 870
    :catch_2e
    move-exception v0

    .line 871
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on upstream playlist delete."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 873
    :catch_52
    move-exception v0

    .line 874
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v2, "IO error on upstream playlist delete."

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 875
    :catch_5b
    move-exception v0

    .line 876
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a bad request (400) error code for a playlist delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 878
    :catch_64
    move-exception v0

    .line 879
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a forbidden (401) error code for a playlist delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 881
    :catch_6d
    move-exception v0

    .line 882
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a not found (404) error code for a playlist delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 891
    :catchall_76
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method private handleDeleteTrack(Lcom/google/android/music/sync/google/model/TrackTombstone;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v0, :cond_b

    .line 935
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Upstream sender: Sending deleted track to cloud."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_14
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_b .. :try_end_14} :catch_25
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_b .. :try_end_14} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_52
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_b .. :try_end_14} :catch_5b
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_b .. :try_end_14} :catch_64
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_b .. :try_end_14} :catch_6d

    .line 956
    :goto_14
    const/4 v0, 0x0

    .line 957
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 959
    :try_start_1b
    invoke-direct {p0, p1, v1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_76

    .line 960
    const/4 v0, 0x1

    .line 962
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 964
    return-void

    .line 939
    :catch_25
    move-exception v0

    .line 940
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v2, "Invalid data on track delete.  Skipping item."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 941
    :catch_2e
    move-exception v0

    .line 942
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on upstream track delete."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 944
    :catch_52
    move-exception v0

    .line 945
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v2, "IO error on upstream track delete."

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 946
    :catch_5b
    move-exception v0

    .line 947
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a bad request (400) error code for a track delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 949
    :catch_64
    move-exception v0

    .line 950
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a forbidden (401) error code for a track delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 952
    :catch_6d
    move-exception v0

    .line 953
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v1, "Server returned a not found (404) error code for a track delete.  Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 962
    :catchall_76
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method private handleInsertEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V
    .registers 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 710
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_26

    .line 711
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upstream sender: Found an inserted playlist entry whose parent has no remote id.  Skipping it until the next sync."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_26
    :goto_26
    return-void

    .line 716
    :cond_27
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    .line 717
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_35

    .line 718
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending inserted playlist entry to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_35
    :try_start_35
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_3e
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_35 .. :try_end_3e} :catch_4a
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_35 .. :try_end_3e} :catch_6e
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_77
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_35 .. :try_end_3e} :catch_80
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_35 .. :try_end_3e} :catch_92
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_35 .. :try_end_3e} :catch_a4

    .line 746
    :goto_3e
    iget-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    if-nez v3, :cond_ae

    .line 747
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "An inserted playlist entry was returned without a server id.  Skipping."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 722
    :catch_4a
    move-exception v1

    .line 723
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist entry insert."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 725
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_6e
    move-exception v1

    .line 727
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist entry insert.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 728
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_77
    move-exception v1

    .line 729
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist entry insert."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 730
    .end local v1           #e:Ljava/io/IOException;
    :catch_80
    move-exception v1

    .line 731
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_8c

    .line 732
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    :cond_8c
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylistEntry(J)V

    goto :goto_3e

    .line 736
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_92
    move-exception v1

    .line 737
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_9e

    .line 738
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    :cond_9e
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylistEntry(J)V

    goto :goto_3e

    .line 742
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_a4
    move-exception v1

    .line 743
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Unexpected 404 on playlist entry insert.  Skipping."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 750
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :cond_ae
    const/4 v2, 0x0

    .line 751
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 753
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_b5
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_c0

    .line 754
    const/4 v2, 0x1

    .line 756
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_26

    :catchall_c0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleInsertPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    .registers 8
    .parameter "playlist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 662
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_b

    .line 663
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending inserted playlist to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_14
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_b .. :try_end_14} :catch_20
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_b .. :try_end_14} :catch_44
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_4d
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_b .. :try_end_14} :catch_56
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_b .. :try_end_14} :catch_68
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_b .. :try_end_14} :catch_7a

    .line 691
    :goto_14
    iget-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    if-nez v3, :cond_83

    .line 692
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "An inserted playlist was returned without a server id.  Skipping."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_1f
    return-void

    .line 667
    :catch_20
    move-exception v1

    .line 668
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist insert."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 670
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_44
    move-exception v1

    .line 672
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist insert.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 673
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_4d
    move-exception v1

    .line 674
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist insert."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 675
    .end local v1           #e:Ljava/io/IOException;
    :catch_56
    move-exception v1

    .line 676
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_62

    .line 677
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    :cond_62
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylist(J)V

    goto :goto_14

    .line 681
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_68
    move-exception v1

    .line 682
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_74

    .line 683
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    :cond_74
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylist(J)V

    goto :goto_14

    .line 687
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_7a
    move-exception v1

    .line 688
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Unexpected 404 on playlist insert.  Skipping."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 695
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :cond_83
    const/4 v2, 0x0

    .line 696
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 698
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_8a
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_94

    .line 699
    const/4 v2, 0x1

    .line 701
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1f

    :catchall_94
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleMutations(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 336
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->validateEntryParents(Ljava/util/List;)V

    .line 339
    const/4 v2, 0x0

    .line 341
    :try_start_6
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {v1, v4, p1}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItems(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;
    :try_end_d
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_6 .. :try_end_d} :catch_15
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_6 .. :try_end_d} :catch_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_44
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_6 .. :try_end_d} :catch_4d
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_6 .. :try_end_d} :catch_58
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_6 .. :try_end_d} :catch_63

    move-result-object v1

    move v2, v0

    .line 361
    :goto_f
    if-nez v2, :cond_6e

    .line 362
    invoke-direct {p0, p1, v1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupBatchMutations(Ljava/util/List;Ljava/util/List;)V

    .line 406
    :cond_14
    return-void

    .line 342
    :catch_15
    move-exception v1

    .line 343
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "At least one record was found with invalid data while handling a batched mutations."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    move v2, v3

    .line 360
    goto :goto_f

    .line 346
    :catch_20
    move-exception v0

    .line 347
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on handling batched playlist mutations."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 349
    :catch_44
    move-exception v0

    .line 350
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v2, "IO error on handing batched mutations."

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 351
    :catch_4d
    move-exception v1

    .line 352
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v5, "Bad-request returned while handling batched mutations."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    move v2, v3

    .line 360
    goto :goto_f

    .line 354
    :catch_58
    move-exception v1

    .line 355
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v5, "Forbidden returned while handling batched mutations."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    move v2, v3

    .line 360
    goto :goto_f

    .line 357
    :catch_63
    move-exception v1

    .line 358
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v5, "Not-found returned while handling batched mutations."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    move v2, v3

    .line 359
    goto :goto_f

    .line 365
    :cond_6e
    iget-boolean v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v1, :cond_79

    .line 366
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v2, "Handling entity mutations individually due to one or more errors."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 371
    :try_start_8a
    instance-of v3, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v3, :cond_b3

    .line 372
    const-class v3, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 373
    iget-boolean v3, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    if-eqz v3, :cond_a0

    .line 374
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleDeletePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V

    :cond_9d
    :goto_9d
    move v0, v1

    :goto_9e
    move v1, v0

    .line 398
    goto :goto_7e

    .line 375
    :cond_a0
    iget-object v3, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    if-eqz v3, :cond_af

    .line 376
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleUpdatePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    :try_end_a7
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_8a .. :try_end_a7} :catch_a8

    goto :goto_9d

    .line 396
    :catch_a8
    move-exception v0

    .line 397
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/ConflictException;->getConflictCount()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_9e

    .line 378
    :cond_af
    :try_start_af
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleInsertPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V

    goto :goto_9d

    .line 380
    :cond_b3
    instance-of v3, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v3, :cond_d3

    .line 381
    const-class v3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 382
    iget-boolean v3, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    if-eqz v3, :cond_c7

    .line 383
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleDeleteEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V

    goto :goto_9d

    .line 384
    :cond_c7
    iget-object v3, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    if-eqz v3, :cond_cf

    .line 385
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleUpdateEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V

    goto :goto_9d

    .line 387
    :cond_cf
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleInsertEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V

    goto :goto_9d

    .line 389
    :cond_d3
    instance-of v3, v0, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v3, :cond_e3

    .line 390
    const-class v3, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    .line 391
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleUpdateTrack(Lcom/google/android/music/sync/google/model/Track;)V

    goto :goto_9d

    .line 392
    :cond_e3
    instance-of v3, v0, Lcom/google/android/music/sync/google/model/TrackTombstone;

    if-eqz v3, :cond_9d

    .line 393
    const-class v3, Lcom/google/android/music/sync/google/model/TrackTombstone;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackTombstone;

    .line 394
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleDeleteTrack(Lcom/google/android/music/sync/google/model/TrackTombstone;)V
    :try_end_f2
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_af .. :try_end_f2} :catch_a8

    goto :goto_9d

    .line 400
    :cond_f3
    if-lez v1, :cond_14

    .line 401
    new-instance v0, Lcom/google/android/music/sync/api/ConflictException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts detected during individual mutations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/music/sync/api/ConflictException;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/api/ConflictException;->setConflictCount(I)V

    .line 404
    new-instance v1, Lcom/google/android/music/sync/api/ConflictException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/api/ConflictException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleUpdateEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V
    .registers 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 810
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_26

    .line 811
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upstream sender: Found an updated playlist entry whose parent has no remote id.  Skipping it until the next sync."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_26
    :goto_26
    return-void

    .line 816
    :cond_27
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    .line 817
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_35

    .line 818
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending updated playlist entry to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_35
    :try_start_35
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_3e
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_35 .. :try_end_3e} :catch_4f
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_35 .. :try_end_3e} :catch_58
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3e} :catch_7c
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_35 .. :try_end_3e} :catch_85
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_35 .. :try_end_3e} :catch_95
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_35 .. :try_end_3e} :catch_a5

    .line 849
    :goto_3e
    const/4 v2, 0x0

    .line 850
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 852
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_45
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_b7

    .line 853
    const/4 v2, 0x1

    .line 855
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_26

    .line 822
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isTxnSuccessful:Z
    :catch_4f
    move-exception v1

    .line 824
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist entry update.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 825
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_58
    move-exception v1

    .line 826
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist entry update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 828
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_7c
    move-exception v1

    .line 829
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist entry update."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 830
    .end local v1           #e:Ljava/io/IOException;
    :catch_85
    move-exception v1

    .line 831
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_91

    .line 832
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    :cond_91
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_3e

    .line 836
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_95
    move-exception v1

    .line 837
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_a1

    .line 838
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    :cond_a1
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_3e

    .line 842
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_a5
    move-exception v1

    .line 843
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_b1

    .line 844
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 404 on update. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    :cond_b1
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylistEntry(J)V

    goto :goto_3e

    .line 855
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isTxnSuccessful:Z
    :catchall_b7
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleUpdatePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    .registers 8
    .parameter "playlist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 763
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_b

    .line 764
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending updated playlist to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_14
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_b .. :try_end_14} :catch_25
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_b .. :try_end_14} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_52
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_b .. :try_end_14} :catch_5b
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_b .. :try_end_14} :catch_6b
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_b .. :try_end_14} :catch_7b

    .line 795
    :goto_14
    const/4 v2, 0x0

    .line 796
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 798
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1b
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_8d

    .line 799
    const/4 v2, 0x1

    .line 801
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 803
    return-void

    .line 768
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isTxnSuccessful:Z
    :catch_25
    move-exception v1

    .line 770
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist update.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 771
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_2e
    move-exception v1

    .line 772
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 774
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_52
    move-exception v1

    .line 775
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist update."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 776
    .end local v1           #e:Ljava/io/IOException;
    :catch_5b
    move-exception v1

    .line 777
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_67

    .line 778
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    :cond_67
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_14

    .line 782
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_6b
    move-exception v1

    .line 783
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_77

    .line 784
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    :cond_77
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_14

    .line 788
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_7b
    move-exception v1

    .line 789
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_87

    .line 790
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 404 on update. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    :cond_87
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylist(J)V

    goto :goto_14

    .line 801
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isTxnSuccessful:Z
    :catchall_8d
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleUpdateTrack(Lcom/google/android/music/sync/google/model/Track;)V
    .registers 9
    .parameter "track"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 411
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_b

    .line 412
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending updated tracks to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_14
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_b .. :try_end_14} :catch_25
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_b .. :try_end_14} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_52
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_b .. :try_end_14} :catch_5b
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_b .. :try_end_14} :catch_6b
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_b .. :try_end_14} :catch_7b

    .line 442
    :goto_14
    const/4 v2, 0x0

    .line 443
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 445
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1b
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_a7

    .line 446
    const/4 v2, 0x1

    .line 448
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 450
    return-void

    .line 416
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isTxnSuccessful:Z
    :catch_25
    move-exception v1

    .line 417
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on track update.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 418
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_2e
    move-exception v1

    .line 419
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream track update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 421
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_52
    move-exception v1

    .line 422
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream track update."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 423
    .end local v1           #e:Ljava/io/IOException;
    :catch_5b
    move-exception v1

    .line 424
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_67

    .line 425
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender received 400 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :cond_67
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_14

    .line 429
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_6b
    move-exception v1

    .line 430
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_77

    .line 431
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender received 403 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :cond_77
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_14

    .line 435
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_7b
    move-exception v1

    .line 436
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_9c

    .line 437
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upstream sender received 404 on update. Removing local track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/Track;->getLocalId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    :cond_9c
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/Track;->getLocalId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicFile;->deleteByLocalId(Landroid/content/Context;J)V

    goto/16 :goto_14

    .line 448
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isTxnSuccessful:Z
    :catchall_a7
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private reportTrackStats(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation

    .prologue
    .line 455
    .local p1, entitySublist:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 456
    :cond_8
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Track stats list is null or empty. Skip reporting."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_f
    :goto_f
    return-void

    .line 460
    :cond_10
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mEnableTrackStatsUpSync:Z

    if-nez v2, :cond_1c

    .line 461
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Track stats up sync is disabled. This is a no-op."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 465
    :cond_1c
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->resetTrackStats(Ljava/util/List;)V

    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, rollbackPlayStats:Z
    :try_start_20
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {v2, v3, p1}, Lcom/google/android/music/sync/api/MusicApiClient;->reportTrackStats(Landroid/accounts/Account;Ljava/util/List;)V

    .line 470
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_4d

    .line 471
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TrackStats to the server."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_20 .. :try_end_4d} :catchall_66
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_20 .. :try_end_4d} :catch_63
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_4d} :catch_74
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_20 .. :try_end_4d} :catch_7e
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_20 .. :try_end_4d} :catch_9e
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_20 .. :try_end_4d} :catch_be
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_20 .. :try_end_4d} :catch_de
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_20 .. :try_end_4d} :catch_fe
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_20 .. :try_end_4d} :catch_11e

    .line 495
    :cond_4d
    if-eqz v1, :cond_f

    .line 496
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_56
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_f

    .line 499
    :catch_5a
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 473
    .end local v0           #e:Ljava/lang/Exception;
    :catch_63
    move-exception v0

    .line 474
    .local v0, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    const/4 v1, 0x1

    .line 477
    :try_start_65
    throw v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 495
    .end local v0           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :catchall_66
    move-exception v2

    if-eqz v1, :cond_73

    .line 496
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Rolling back local play counts due to soft errors."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_70
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_142

    .line 504
    :cond_73
    :goto_73
    throw v2

    .line 478
    :catch_74
    move-exception v0

    .line 479
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 480
    :try_start_76
    new-instance v2, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v3, "IO error on reporting track stats."

    invoke-direct {v2, v3, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 481
    .end local v0           #e:Ljava/io/IOException;
    :catch_7e
    move-exception v0

    .line 482
    .local v0, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Bad request returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_66

    .line 495
    if-eqz v1, :cond_f

    .line 496
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_8f
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_94

    goto/16 :goto_f

    .line 499
    :catch_94
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 483
    .end local v0           #e:Ljava/lang/Exception;
    :catch_9e
    move-exception v0

    .line 484
    .local v0, e:Lcom/google/android/music/sync/api/ForbiddenException;
    :try_start_9f
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Forbidden returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_66

    .line 495
    if-eqz v1, :cond_f

    .line 496
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_af
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b4

    goto/16 :goto_f

    .line 499
    :catch_b4
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 485
    .end local v0           #e:Ljava/lang/Exception;
    :catch_be
    move-exception v0

    .line 486
    .local v0, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :try_start_bf
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Not-found returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_66

    .line 495
    if-eqz v1, :cond_f

    .line 496
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_cf
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d4

    goto/16 :goto_f

    .line 499
    :catch_d4
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 487
    .end local v0           #e:Ljava/lang/Exception;
    :catch_de
    move-exception v0

    .line 488
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    :try_start_df
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Not-modified returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e6
    .catchall {:try_start_df .. :try_end_e6} :catchall_66

    .line 495
    if-eqz v1, :cond_f

    .line 496
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_ef
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_f4

    goto/16 :goto_f

    .line 499
    :catch_f4
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 489
    .end local v0           #e:Ljava/lang/Exception;
    :catch_fe
    move-exception v0

    .line 490
    .local v0, e:Lcom/google/android/music/sync/api/ConflictException;
    :try_start_ff
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Conflicts returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_66

    .line 495
    if-eqz v1, :cond_f

    .line 496
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_10f
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_114

    goto/16 :goto_f

    .line 499
    :catch_114
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 491
    .end local v0           #e:Ljava/lang/Exception;
    :catch_11e
    move-exception v0

    .line 492
    .local v0, e:Lcom/google/android/music/sync/common/SyncHttpException;
    :try_start_11f
    new-instance v2, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on reporting track stats."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_142
    .catchall {:try_start_11f .. :try_end_142} :catchall_66

    .line 499
    .end local v0           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_142
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Errors rolling back local play counts."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_73
.end method

.method private resetTrackStats(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 511
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 512
    const-class v3, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/TrackStat;->getLocalId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 515
    :cond_2c
    const/4 v3, 0x0

    .line 516
    const/4 v1, 0x0

    .line 518
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 519
    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicFile;->resetPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_40

    .line 520
    const/4 v0, 0x1

    .line 522
    if-eqz v1, :cond_3f

    .line 523
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 526
    :cond_3f
    return-void

    .line 522
    :catchall_40
    move-exception v0

    if-eqz v1, :cond_48

    .line 523
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_48
    throw v0
.end method

.method private restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V
    .registers 14
    .parameter "clientItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 597
    const/4 v11, 0x0

    .line 598
    .local v11, serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    const/4 v10, 0x0

    .line 600
    .local v10, justDeleteTheLocalCopy:Z
    :try_start_2
    instance-of v1, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v1, :cond_56

    .line 601
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylist(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :try_end_11
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_11} :catch_78
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_2 .. :try_end_11} :catch_81
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_8a
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_2 .. :try_end_11} :catch_93
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_2 .. :try_end_11} :catch_9c
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_2 .. :try_end_11} :catch_a0
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_2 .. :try_end_11} :catch_a4

    move-result-object v11

    .line 626
    :goto_12
    if-eqz v10, :cond_29

    .line 628
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    check-cast v11, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :try_end_1e
    .catch Ljava/lang/InstantiationException; {:try_start_14 .. :try_end_1e} :catch_a8
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_1e} :catch_af

    .line 635
    .restart local v11       #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setIsDeleted(Z)V

    .line 636
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setRemoteId(Ljava/lang/String;)V

    .line 640
    :cond_29
    const/4 v7, 0x0

    .line 641
    .local v7, blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 642
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 644
    .local v9, isTxnSuccessful:Z
    :try_start_31
    new-instance v0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mProtocolState:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccountHash:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;ZLjava/lang/String;I)V
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_b6

    .line 646
    .end local v7           #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .local v0, blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    :try_start_40
    invoke-virtual {v0, v11, p1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_ca

    .line 647
    const/4 v9, 0x1

    .line 649
    if-eqz v0, :cond_49

    .line 650
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 652
    :cond_49
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v2, v9}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 653
    if-eqz v0, :cond_55

    if-eqz v9, :cond_55

    .line 654
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    .line 657
    .end local v0           #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #isTxnSuccessful:Z
    :cond_55
    return-void

    .line 602
    :cond_56
    :try_start_56
    instance-of v1, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v1, :cond_67

    .line 603
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylistEntry(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-result-object v11

    goto :goto_12

    .line 604
    :cond_67
    instance-of v1, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v1, :cond_55

    .line 605
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/android/music/sync/api/MusicApiClient;->getTrack(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/Track;
    :try_end_76
    .catch Landroid/accounts/AuthenticatorException; {:try_start_56 .. :try_end_76} :catch_78
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_56 .. :try_end_76} :catch_81
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_76} :catch_8a
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_56 .. :try_end_76} :catch_93
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_56 .. :try_end_76} :catch_9c
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_56 .. :try_end_76} :catch_a0
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_56 .. :try_end_76} :catch_a4

    move-result-object v11

    goto :goto_12

    .line 609
    :catch_78
    move-exception v8

    .line 610
    .local v8, e:Landroid/accounts/AuthenticatorException;
    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string v3, "Unable to restore item due to auth error."

    invoke-direct {v1, v3, v8}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 611
    .end local v8           #e:Landroid/accounts/AuthenticatorException;
    :catch_81
    move-exception v8

    .line 612
    .local v8, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v3, "Unable to restore item due to http error."

    invoke-direct {v1, v3, v8}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 613
    .end local v8           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_8a
    move-exception v8

    .line 614
    .local v8, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v3, "Unable to restore item due to io error."

    invoke-direct {v1, v3, v8}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 615
    .end local v8           #e:Ljava/io/IOException;
    :catch_93
    move-exception v8

    .line 616
    .local v8, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v3, "Received not-modified in response to a restore."

    invoke-direct {v1, v3, v8}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 617
    .end local v8           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    :catch_9c
    move-exception v8

    .line 619
    .local v8, e:Lcom/google/android/music/sync/api/BadRequestException;
    const/4 v10, 0x1

    .line 625
    goto/16 :goto_12

    .line 620
    .end local v8           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_a0
    move-exception v8

    .line 622
    .local v8, e:Lcom/google/android/music/sync/api/ForbiddenException;
    const/4 v10, 0x1

    .line 625
    goto/16 :goto_12

    .line 623
    .end local v8           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_a4
    move-exception v8

    .line 624
    .local v8, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    const/4 v10, 0x1

    goto/16 :goto_12

    .line 629
    .end local v8           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .end local v11           #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :catch_a8
    move-exception v8

    .line 631
    .local v8, e:Ljava/lang/InstantiationException;
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v1, v8}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 632
    .end local v8           #e:Ljava/lang/InstantiationException;
    :catch_af
    move-exception v8

    .line 633
    .local v8, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v1, v8}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 649
    .end local v8           #e:Ljava/lang/IllegalAccessException;
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7       #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .restart local v9       #isTxnSuccessful:Z
    .restart local v11       #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :catchall_b6
    move-exception v1

    move-object v0, v7

    .end local v7           #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .restart local v0       #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    :goto_b8
    if-eqz v0, :cond_bd

    .line 650
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 652
    :cond_bd
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v2, v9}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 653
    if-eqz v0, :cond_c9

    if-eqz v9, :cond_c9

    .line 654
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    :cond_c9
    throw v1

    .line 649
    :catchall_ca
    move-exception v1

    goto :goto_b8
.end method

.method private rollbackPlayStats(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 530
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 531
    const-class v3, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackStat;

    .line 532
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/TrackStat;->getLocalId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/TrackStat;->getIncrementalPlays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 535
    :cond_38
    const/4 v3, 0x0

    .line 536
    const/4 v1, 0x0

    .line 538
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 539
    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicFile;->setPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_4c

    .line 540
    const/4 v0, 0x1

    .line 542
    if-eqz v1, :cond_4b

    .line 543
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 546
    :cond_4b
    return-void

    .line 542
    :catchall_4c
    move-exception v0

    if-eqz v1, :cond_54

    .line 543
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_54
    throw v0
.end method

.method private validateEntryParents(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-nez v1, :cond_a

    .line 319
    :cond_9
    return-void

    .line 290
    :cond_a
    const/4 v1, 0x0

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    .line 292
    :goto_10
    if-ge v2, v3, :cond_3c

    .line 293
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 294
    iget-object v4, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    if-eqz v4, :cond_26

    .line 292
    :cond_22
    :goto_22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 298
    :cond_26
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 301
    if-nez v1, :cond_50

    .line 302
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 304
    :goto_33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_22

    .line 308
    :cond_3c
    if-eqz v1, :cond_9

    .line 310
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 311
    :goto_42
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 312
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_50
    move-object v0, v1

    goto :goto_33
.end method


# virtual methods
.method protected processUpstreamEntityBlock(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/common/ConflictDetectedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/google/android/music/sync/google/ListPartitioner;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/ListPartitioner;-><init>()V

    .line 122
    const-class v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 123
    const-class v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 124
    const-class v1, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 125
    const-class v1, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 126
    const-class v1, Lcom/google/android/music/sync/google/model/TrackTombstone;

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 129
    :try_start_1f
    invoke-virtual {v0, p1}, Lcom/google/android/music/sync/google/ListPartitioner;->partition(Ljava/util/List;)Ljava/util/List;
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_22} :catch_42

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 137
    instance-of v1, v1, Lcom/google/android/music/sync/google/model/TrackStat;

    if-eqz v1, :cond_50

    .line 138
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->reportTrackStats(Ljava/util/List;)V

    goto :goto_28

    .line 130
    :catch_42
    move-exception v0

    .line 131
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v2, "Unable to partition the client changes into syncable entities:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance v1, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v1, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :cond_50
    :try_start_50
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleMutations(Ljava/util/List;)V
    :try_end_5b
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_50 .. :try_end_5b} :catch_5e

    move v0, v2

    :goto_5c
    move v2, v0

    .line 146
    goto :goto_28

    .line 143
    :catch_5e
    move-exception v0

    .line 144
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/ConflictException;->getConflictCount()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_5c

    .line 147
    :cond_65
    if-eqz v2, :cond_70

    .line 148
    new-instance v0, Lcom/google/android/music/sync/common/ConflictDetectedException;

    invoke-direct {v0}, Lcom/google/android/music/sync/common/ConflictDetectedException;-><init>()V

    .line 149
    invoke-virtual {v0, v2}, Lcom/google/android/music/sync/common/ConflictDetectedException;->setConflictCount(I)V

    .line 150
    throw v0

    .line 152
    :cond_70
    return-void
.end method
