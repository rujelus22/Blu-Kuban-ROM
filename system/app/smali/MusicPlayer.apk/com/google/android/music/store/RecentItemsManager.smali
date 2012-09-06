.class public Lcom/google/android/music/store/RecentItemsManager;
.super Ljava/lang/Object;
.source "RecentItemsManager.java"


# static fields
.field private static final UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPlayedAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 7
    .parameter "db"
    .parameter "albumId"

    .prologue
    .line 249
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "RecentAlbumId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    const-string v1, "ItemDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v1, "RecentReason"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v1, "RECENT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 258
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 259
    return-void
.end method

.method private static addPlayedAlbum(Landroid/content/Context;J)Z
    .registers 10
    .parameter "context"
    .parameter "albumId"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 151
    cmp-long v4, p1, v5

    if-gez v4, :cond_21

    .line 152
    const-string v4, "RecentItemsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot add artist to album. Invalid id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 175
    :cond_20
    :goto_20
    return v2

    .line 156
    :cond_21
    cmp-long v4, p1, v5

    if-nez v4, :cond_27

    move v2, v3

    .line 158
    goto :goto_20

    .line 161
    :cond_27
    const/4 v2, 0x0

    .line 162
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 163
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_34
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addPlayedAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_48

    .line 166
    const/4 v2, 0x1

    .line 168
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 171
    if-eqz v2, :cond_20

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_20

    .line 168
    :catchall_48
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private static addPlayedArtist(Landroid/content/Context;J)Z
    .registers 20
    .parameter "context"
    .parameter "artistId"

    .prologue
    .line 203
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_23

    .line 204
    const-string v3, "RecentItemsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot add artist to recent. Invalid id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v16, 0x0

    .line 244
    :cond_22
    :goto_22
    return v16

    .line 208
    :cond_23
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_2c

    .line 210
    const/16 v16, 0x0

    goto :goto_22

    .line 215
    :cond_2c
    const/16 v16, 0x0

    .line 216
    .local v16, success:Z
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v15

    .line 217
    .local v15, store:Lcom/google/android/music/store/Store;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 218
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    .line 220
    .local v14, c:Landroid/database/Cursor;
    :try_start_3b
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 221
    .local v13, artistIdStr:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v13, v6, v3

    const/4 v3, 0x1

    aput-object v13, v6, v3

    .line 222
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v3, "MUSIC"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "AlbumId"

    aput-object v7, v4, v5

    const-string v5, "AlbumArtistId=? OR ArtistId=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "CanonicalName"

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 230
    if-eqz v14, :cond_70

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 231
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 232
    .local v11, albumId:J
    invoke-static {v2, v11, v12}, Lcom/google/android/music/store/RecentItemsManager;->addPlayedAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_6e
    .catchall {:try_start_3b .. :try_end_6e} :catchall_86

    .line 233
    const/16 v16, 0x1

    .line 236
    .end local v11           #albumId:J
    :cond_70
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 237
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 240
    if-eqz v16, :cond_22

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_22

    .line 236
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v13           #artistIdStr:Ljava/lang/String;
    :catchall_86
    move-exception v3

    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 237
    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private static addPlayedPlaylist(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 7
    .parameter "db"
    .parameter "playlistId"

    .prologue
    .line 263
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "RecentListId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    const-string v1, "ItemDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    const-string v1, "RecentReason"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v1, "RECENT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 272
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 273
    return-void
.end method

.method private static addPlayedPlaylist(Landroid/content/Context;J)Z
    .registers 10
    .parameter "context"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x0

    .line 180
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_21

    .line 181
    const-string v4, "RecentItemsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot add playlist to recent. Invalid id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 198
    :cond_20
    :goto_20
    return v2

    .line 184
    :cond_21
    const/4 v2, 0x0

    .line 185
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 186
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2e
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addPlayedPlaylist(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_42

    .line 189
    const/4 v2, 0x1

    .line 191
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 194
    if-eqz v2, :cond_20

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_20

    .line 191
    :catchall_42
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private static addRecentlyAddedAlbums(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 30
    .parameter "db"

    .prologue
    .line 315
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/RecentItemsManager;->removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    const/16 v17, 0x0

    .line 321
    .local v17, count:I
    const-wide/16 v27, 0x0

    .line 323
    .local v27, oldestItemDate:J
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v21, existingTimeStamps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v3, "RECENT"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "ItemDate"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "RecentAlbumId"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "ItemDate ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 328
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_64

    :try_start_29
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 329
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 330
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 336
    :cond_3a
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 337
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 338
    .local v19, date:J
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 339
    .local v14, albumId:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v14           #albumId:J
    .end local v19           #date:J
    :cond_5e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_61
    .catchall {:try_start_29 .. :try_end_61} :catchall_91

    move-result v2

    if-nez v2, :cond_3a

    .line 344
    :cond_64
    invoke-static/range {v16 .. v16}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 355
    const-string v3, "MUSIC"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "AlbumId"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "max(FileDate) as max_album_date"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "(max(TrackType) = 3 and min(TrackType) = 3) as isPromoContentNotSelectedByUser"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "AlbumId"

    const/4 v8, 0x0

    const-string v9, "max_album_date DESC"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 375
    .local v11, albumCursor:Landroid/database/Cursor;
    if-nez v11, :cond_96

    .line 425
    :goto_90
    return-void

    .line 344
    .end local v11           #albumCursor:Landroid/database/Cursor;
    :catchall_91
    move-exception v2

    invoke-static/range {v16 .. v16}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    .line 380
    .restart local v11       #albumCursor:Landroid/database/Cursor;
    :cond_96
    :try_start_96
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 381
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 383
    .local v25, mostRecentlyAddedAlbumDate:J
    const/16 v2, 0xc8

    move/from16 v0, v17

    if-lt v0, v2, :cond_ab

    cmp-long v2, v25, v27

    if-lez v2, :cond_127

    .line 393
    :cond_ab
    const/4 v2, -0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 394
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v22, insertValues:Landroid/content/ContentValues;
    const/16 v23, 0x0

    .line 396
    .local v23, inserted:Z
    :cond_b6
    :goto_b6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 397
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 398
    .restart local v14       #albumId:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 399
    .local v12, albumDate:J
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_11a

    const/16 v24, 0x1

    .line 401
    .local v24, isNonUserPromo:Z
    :goto_cf
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 402
    .local v18, currentDate:Ljava/lang/Long;
    if-eqz v18, :cond_e5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-lez v2, :cond_b6

    .line 403
    :cond_e5
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 404
    const-string v2, "RecentAlbumId"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    const-string v2, "ItemDate"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    const-string v3, "Priority"

    if-eqz v24, :cond_11d

    const/16 v2, -0xa

    :goto_104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v2, "RECENT"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 410
    const/16 v23, 0x1

    goto :goto_b6

    .line 399
    .end local v18           #currentDate:Ljava/lang/Long;
    .end local v24           #isNonUserPromo:Z
    :cond_11a
    const/16 v24, 0x0

    goto :goto_cf

    .line 406
    .restart local v18       #currentDate:Ljava/lang/Long;
    .restart local v24       #isNonUserPromo:Z
    :cond_11d
    const/4 v2, 0x0

    goto :goto_104

    .line 414
    .end local v12           #albumDate:J
    .end local v14           #albumId:J
    .end local v18           #currentDate:Ljava/lang/Long;
    .end local v24           #isNonUserPromo:Z
    :cond_11f
    if-eqz v23, :cond_127

    .line 417
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 418
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/RecentItemsManager;->populateAlbumAddedReason(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_127
    .catchall {:try_start_96 .. :try_end_127} :catchall_12c

    .line 423
    .end local v22           #insertValues:Landroid/content/ContentValues;
    .end local v23           #inserted:Z
    .end local v25           #mostRecentlyAddedAlbumDate:J
    :cond_127
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_90

    :catchall_12c
    move-exception v2

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static addRecentlyPlayedItem(Landroid/content/Context;Lcom/google/android/music/medialist/SongList;)Z
    .registers 8
    .parameter "context"
    .parameter "songList"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, added:Z
    instance-of v4, p1, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v4, :cond_20

    move-object v3, p1

    .line 116
    check-cast v3, Lcom/google/android/music/medialist/PlaylistSongList;

    .line 117
    .local v3, playlist:Lcom/google/android/music/medialist/PlaylistSongList;
    invoke-virtual {v3}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistType()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/music/store/RecentItemsManager;->includePlaylistOfType(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 118
    invoke-virtual {v3}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/google/android/music/store/RecentItemsManager;->addPlayedPlaylist(Landroid/content/Context;J)Z

    move-result v0

    .line 128
    .end local v3           #playlist:Lcom/google/android/music/medialist/PlaylistSongList;
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_1f

    .line 132
    invoke-static {p0}, Lcom/google/android/music/MusicUserContentBinder;->notifyContentChanged(Landroid/content/Context;)V

    .line 135
    :cond_1f
    return v0

    .line 120
    :cond_20
    instance-of v4, p1, Lcom/google/android/music/medialist/AlbumSongList;

    if-eqz v4, :cond_30

    move-object v1, p1

    .line 121
    check-cast v1, Lcom/google/android/music/medialist/AlbumSongList;

    .line 122
    .local v1, album:Lcom/google/android/music/medialist/AlbumSongList;
    invoke-virtual {v1, p0}, Lcom/google/android/music/medialist/AlbumSongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/google/android/music/store/RecentItemsManager;->addPlayedAlbum(Landroid/content/Context;J)Z

    move-result v0

    .line 123
    goto :goto_1a

    .end local v1           #album:Lcom/google/android/music/medialist/AlbumSongList;
    :cond_30
    instance-of v4, p1, Lcom/google/android/music/medialist/ArtistSongList;

    if-eqz v4, :cond_1a

    move-object v2, p1

    .line 124
    check-cast v2, Lcom/google/android/music/medialist/ArtistSongList;

    .line 125
    .local v2, artist:Lcom/google/android/music/medialist/ArtistSongList;
    invoke-virtual {v2}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistId()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/google/android/music/store/RecentItemsManager;->addPlayedArtist(Landroid/content/Context;J)Z

    move-result v0

    goto :goto_1a
.end method

.method private static countItems(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 11
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 280
    const/4 v9, 0x0

    .line 281
    .local v9, count:I
    const-string v1, "RECENT LEFT JOIN MUSIC ON (RecentAlbumId=MUSIC.AlbumId)  LEFT JOIN LISTS ON (RecentListId=LISTS.Id) "

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(1)"

    aput-object v0, v2, v3

    const-string v3, "LISTS.Id NOT NULL OR MUSIC.AlbumId NOT NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 286
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_23

    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 287
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    move-result v9

    .line 290
    :cond_23
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 293
    return v9

    .line 290
    :catchall_27
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static countRecentItems(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentViewEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 92
    const/4 v2, 0x0

    .line 100
    :goto_7
    return v2

    .line 95
    :cond_8
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 96
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_10
    invoke-static {v0}, Lcom/google/android/music/store/RecentItemsManager;->countItems(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    move-result v2

    .line 100
    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_7

    :catchall_18
    move-exception v2

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method private static deleteItemsAndCloseCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .registers 6
    .parameter "db"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 496
    if-nez p1, :cond_4

    .line 513
    :goto_3
    return v1

    .line 501
    :cond_4
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5c

    .line 502
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 503
    .local v0, idsToDelete:Ljava/lang/StringBuffer;
    :goto_15
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 504
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2a

    goto :goto_15

    .line 513
    .end local v0           #idsToDelete:Ljava/lang/StringBuffer;
    :catchall_2a
    move-exception v1

    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1

    .line 506
    .restart local v0       #idsToDelete:Ljava/lang/StringBuffer;
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 507
    const-string v1, "RECENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentId IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_2f .. :try_end_57} :catchall_2a

    move-result v1

    .line 513
    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_3

    .end local v0           #idsToDelete:Ljava/lang/StringBuffer;
    :cond_5c
    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private static enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 452
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 454
    const-string v1, "RECENT"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "RecentId"

    aput-object v4, v2, v0

    const-string v7, "Priority DESC, ItemDate DESC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",10000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 463
    .local v9, c:Landroid/database/Cursor;
    invoke-static {p0, v9}, Lcom/google/android/music/store/RecentItemsManager;->deleteItemsAndCloseCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    .line 464
    return-void
.end method

.method private static includePlaylistOfType(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 139
    sparse-switch p0, :sswitch_data_8

    .line 145
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 143
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 139
    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method private static populateAlbumAddedReason(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 428
    const-string v0, "UPDATE RECENT SET RecentReason = CASE (SELECT TrackType FROM MUSIC WHERE AlbumId=RecentAlbumId AND FileDate=ItemDate LIMIT 1) WHEN 0 THEN 3 WHEN 3 THEN 3 WHEN 2 THEN 3 WHEN 1 THEN 2 ELSE 1 END  WHERE RecentAlbumId NOT NULL AND RecentReason=0"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method private static removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 468
    const-string v1, "RECENT"

    const-string v2, "(RecentListId NOT NULL AND NOT EXISTS(SELECT LISTS.Id FROM LISTS WHERE LISTS.Id=RecentListId)) OR (RecentAlbumId NOT NULL AND NOT EXISTS(SELECT MUSIC.AlbumId FROM MUSIC WHERE MUSIC.AlbumId=RecentAlbumId))"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 482
    .local v0, howManyDeleted:I
    if-lez v0, :cond_29

    .line 483
    const-string v1, "RecentItemsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid recent items."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_29
    return-void
.end method

.method static update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "context"
    .parameter "db"

    .prologue
    .line 303
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentViewEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 310
    :goto_6
    return-void

    .line 307
    :cond_7
    invoke-static {p1}, Lcom/google/android/music/store/RecentItemsManager;->addRecentlyAddedAlbums(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6
.end method

.method public static updateRecentItems(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentViewEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 84
    :cond_6
    :goto_6
    return-void

    .line 66
    :cond_7
    const/4 v2, 0x0

    .line 67
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 68
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_10
    invoke-static {p0, v0}, Lcom/google/android/music/store/RecentItemsManager;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_28

    .line 71
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 76
    if-eqz v2, :cond_6

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 82
    invoke-static {p0}, Lcom/google/android/music/MusicUserContentBinder;->notifyContentChanged(Landroid/content/Context;)V

    goto :goto_6

    .line 73
    :catchall_28
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public static updateRecentItemsAsync(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 48
    .local v0, bgWorker:Landroid/os/Handler;
    sget v2, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    new-instance v2, Lcom/google/android/music/store/RecentItemsManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/store/RecentItemsManager$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 55
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    return-void
.end method
