.class public Lcom/google/android/music/sync/google/MusicUpstreamReader;
.super Lcom/google/android/music/sync/common/UpstreamReader;
.source "MusicUpstreamReader.java"


# instance fields
.field private final mAccountId:I

.field private final mEnableTracksUpSync:Z

.field private final mStore:Lcom/google/android/music/store/Store;

.field private final mTag:Ljava/lang/String;

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p4}, Lcom/google/android/music/sync/common/UpstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Ljava/lang/String;)V

    .line 37
    iput-object p4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    .line 38
    invoke-static {p2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    .line 39
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    .line 40
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mAccountId:I

    .line 41
    iput-boolean p5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mEnableTracksUpSync:Z

    .line 42
    return-void
.end method

.method private fillQueueWithEntryChanges()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 250
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 251
    invoke-static {v1}, Lcom/google/android/music/store/PlayList$Item;->getItemsToSync(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 252
    const/4 v5, 0x0

    .line 253
    .local v5, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 255
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 256
    new-instance v3, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v3}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 257
    .local v3, item:Lcom/google/android/music/store/PlayList$Item;
    new-instance v4, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v4}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 258
    .local v4, precedingItem:Lcom/google/android/music/store/PlayList$Item;
    new-instance v2, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 259
    .local v2, followingItem:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {v3, v0}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 260
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parse(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-result-object v6

    .line 261
    .local v6, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    const/4 v7, 0x1

    invoke-virtual {v3, v1, v7, v4}, Lcom/google/android/music/store/PlayList$Item;->findPrecedingItem(Landroid/database/sqlite/SQLiteDatabase;ZLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v7

    if-eqz v7, :cond_38

    .line 263
    invoke-virtual {v4}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mPrecedingEntryClientId:Ljava/lang/String;

    .line 265
    :cond_38
    const/4 v7, 0x1

    invoke-virtual {v3, v1, v7, v2}, Lcom/google/android/music/store/PlayList$Item;->findFollowingItem(Landroid/database/sqlite/SQLiteDatabase;ZLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v7

    if-eqz v7, :cond_45

    .line 267
    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mFollowingEntryClientId:Ljava/lang/String;

    .line 269
    :cond_45
    invoke-direct {p0, v6, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_5c

    move-result v7

    if-nez v7, :cond_13

    .line 274
    .end local v2           #followingItem:Lcom/google/android/music/store/PlayList$Item;
    .end local v3           #item:Lcom/google/android/music/store/PlayList$Item;
    .end local v4           #precedingItem:Lcom/google/android/music/store/PlayList$Item;
    .end local v6           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :cond_4e
    if-eqz v0, :cond_54

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 276
    const/4 v0, 0x0

    .line 278
    :cond_54
    if-eqz v1, :cond_5b

    .line 279
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5b
    return v5

    .line 274
    .end local v5           #recordsRead:I
    :catchall_5c
    move-exception v7

    if-eqz v0, :cond_63

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 276
    const/4 v0, 0x0

    .line 278
    :cond_63
    if-eqz v1, :cond_6a

    .line 279
    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v8, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6a
    throw v7
.end method

.method private fillQueueWithEntryTombstones()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 188
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/google/android/music/store/PlayList$Item;->getItemTombstones(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 190
    const/4 v3, 0x0

    .line 191
    .local v3, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 193
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 194
    new-instance v2, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 195
    .local v2, item:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/PlayList$Item;->populateFromTombstoneProjectionCursor(Landroid/database/Cursor;)V

    .line 196
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parse(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-result-object v4

    .line 197
    .local v4, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    .line 198
    invoke-direct {p0, v4, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_3b

    move-result v5

    if-nez v5, :cond_13

    .line 203
    .end local v2           #item:Lcom/google/android/music/store/PlayList$Item;
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :cond_2d
    if-eqz v0, :cond_33

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_33
    if-eqz v1, :cond_3a

    .line 208
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3a
    return v3

    .line 203
    .end local v3           #recordsRead:I
    :catchall_3b
    move-exception v5

    if-eqz v0, :cond_42

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    const/4 v0, 0x0

    .line 207
    :cond_42
    if-eqz v1, :cond_49

    .line 208
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_49
    throw v5
.end method

.method private fillQueueWithPlaylistChanges()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 217
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 218
    invoke-static {v1}, Lcom/google/android/music/store/PlayList;->getPlaylistsToSync(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 222
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 223
    new-instance v2, Lcom/google/android/music/store/PlayList;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 224
    .local v2, playList:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/PlayList;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 225
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parse(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v4

    .line 226
    .local v4, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mName:Ljava/lang/String;

    if-nez v5, :cond_40

    .line 227
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    const-string v6, "Found a playlist with no name. Not syncing this change upstream."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_2c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_44

    move-result v5

    if-nez v5, :cond_13

    .line 236
    .end local v2           #playList:Lcom/google/android/music/store/PlayList;
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_32
    if-eqz v0, :cond_38

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v0, 0x0

    .line 240
    :cond_38
    if-eqz v1, :cond_3f

    .line 241
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3f
    return v3

    .line 231
    .restart local v2       #playList:Lcom/google/android/music/store/PlayList;
    .restart local v4       #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_40
    :try_start_40
    invoke-direct {p0, v4, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_2c

    .line 236
    .end local v2           #playList:Lcom/google/android/music/store/PlayList;
    .end local v3           #recordsRead:I
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :catchall_44
    move-exception v5

    if-eqz v0, :cond_4b

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v0, 0x0

    .line 240
    :cond_4b
    if-eqz v1, :cond_52

    .line 241
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_52
    throw v5
.end method

.method private fillQueueWithPlaylistTombstones()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 159
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 160
    invoke-static {v1}, Lcom/google/android/music/store/PlayList;->getPlaylistTombstones(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 164
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 165
    new-instance v2, Lcom/google/android/music/store/PlayList;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 166
    .local v2, playList:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/PlayList;->populateFromTombstoneProjectionCursor(Landroid/database/Cursor;)V

    .line 167
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parse(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v4

    .line 168
    .local v4, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    .line 169
    invoke-direct {p0, v4, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_3b

    move-result v5

    if-nez v5, :cond_13

    .line 174
    .end local v2           #playList:Lcom/google/android/music/store/PlayList;
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_2d
    if-eqz v0, :cond_33

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v0, 0x0

    .line 178
    :cond_33
    if-eqz v1, :cond_3a

    .line 179
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3a
    return v3

    .line 174
    .end local v3           #recordsRead:I
    :catchall_3b
    move-exception v5

    if-eqz v0, :cond_42

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v0, 0x0

    .line 178
    :cond_42
    if-eqz v1, :cond_49

    .line 179
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_49
    throw v5
.end method

.method private fillQueueWithTrackChanges()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 86
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 87
    .local v3, recordsRead:I
    :try_start_8
    iget v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mAccountId:I

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Lcom/google/android/music/store/MusicFile;->getMusicFilesToSync(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_29

    .line 89
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 90
    new-instance v2, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v2}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 91
    .local v2, musicFile:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 92
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/Track;->parse(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/sync/google/model/Track;

    move-result-object v4

    .line 93
    .local v4, track:Lcom/google/android/music/sync/google/model/Track;
    invoke-direct {p0, v4, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_32

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_11

    .line 99
    .end local v2           #musicFile:Lcom/google/android/music/store/MusicFile;
    .end local v4           #track:Lcom/google/android/music/sync/google/model/Track;
    :cond_29
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 100
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v3

    .line 99
    :catchall_32
    move-exception v5

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 100
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5
.end method

.method private fillQueueWithTrackStats()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 106
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 108
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 109
    .local v2, recordsRead:I
    :try_start_8
    iget v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mAccountId:I

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Lcom/google/android/music/store/MusicFile;->getPlaycountsToSync(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_3f

    .line 111
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 112
    invoke-static {v0}, Lcom/google/android/music/sync/google/model/TrackStat;->parse(Landroid/database/Cursor;)Lcom/google/android/music/sync/google/model/TrackStat;

    move-result-object v3

    .line 113
    .local v3, stat:Lcom/google/android/music/sync/google/model/TrackStat;
    iget-object v4, v3, Lcom/google/android/music/sync/google/model/TrackStat;->mRemoteId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    iget v4, v3, Lcom/google/android/music/sync/google/model/TrackStat;->mIncrementalPlays:I

    if-gtz v4, :cond_39

    .line 115
    :cond_27
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    const-string v5, "Found a trackstat with no valid track id or zero play count. Not syncing this change upstream."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2f

    goto :goto_11

    .line 125
    .end local v3           #stat:Lcom/google/android/music/sync/google/model/TrackStat;
    :catchall_2f
    move-exception v4

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 126
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4

    .line 119
    .restart local v3       #stat:Lcom/google/android/music/sync/google/model/TrackStat;
    :cond_39
    :try_start_39
    invoke-direct {p0, v3, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_2f

    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    goto :goto_11

    .line 125
    .end local v3           #stat:Lcom/google/android/music/sync/google/model/TrackStat;
    :cond_3f
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 126
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v2
.end method

.method private putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 8
    .parameter "item"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 136
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v2, :cond_20

    .line 137
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v2, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->put(Ljava/lang/Object;)V
    :try_end_25
    .catch Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException; {:try_start_20 .. :try_end_25} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_39

    .line 152
    const/4 v2, 0x1

    return v2

    .line 141
    :catch_27
    move-exception v0

    .line 142
    .local v0, e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    const-string v1, "The upstream sender has killed the upstream queue, so there\'s no point in having the reader continue."

    .line 144
    .local v1, msg:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v2, :cond_33

    .line 145
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_33
    new-instance v2, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v2, v1, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 148
    .end local v0           #e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    .end local v1           #msg:Ljava/lang/String;
    :catch_39
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v3, "Interrupted while putting item into upload queue: "

    invoke-direct {v2, v3, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public fillQueue()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithEntryTombstones()I

    move-result v1

    .line 47
    .local v1, entryTombstoneCount:I
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v6, :cond_26

    .line 48
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upstream reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " playlist entry tombstone(s) found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_26
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithPlaylistTombstones()I

    move-result v3

    .line 52
    .local v3, playlistTombstoneCount:I
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v6, :cond_4c

    .line 53
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upstream reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " playlist tombstone(s) found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_4c
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithPlaylistChanges()I

    move-result v2

    .line 57
    .local v2, playlistCount:I
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v6, :cond_72

    .line 58
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upstream reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " playlist change(s) found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_72
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithEntryChanges()I

    move-result v0

    .line 62
    .local v0, entryCount:I
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v6, :cond_98

    .line 63
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upstream reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " playlist entry change(s) found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_98
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mEnableTracksUpSync:Z

    if-eqz v6, :cond_e9

    .line 67
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithTrackChanges()I

    move-result v4

    .line 68
    .local v4, trackCount:I
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v6, :cond_c2

    .line 69
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upstream reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " track change(s) found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v4           #trackCount:I
    :cond_c2
    :goto_c2
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithTrackStats()I

    move-result v5

    .line 76
    .local v5, trackStatCount:I
    iget-boolean v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v6, :cond_e8

    .line 77
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upstream reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " track stat change(s) found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_e8
    return-void

    .line 72
    .end local v5           #trackStatCount:I
    :cond_e9
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    const-string v7, "Track up-sync is disabled. This is a no-op."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2
.end method
