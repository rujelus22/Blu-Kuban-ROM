.class public Lcom/google/android/music/store/RecentItemsManager;
.super Ljava/lang/Object;
.source "RecentItemsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/RecentItemsManager$Service;,
        Lcom/google/android/music/store/RecentItemsManager$Receiver;
    }
.end annotation


# static fields
.field private static final UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addPlaylist(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addAlbum(Landroid/content/Context;J)V

    return-void
.end method

.method private static addAlbum(Landroid/content/Context;J)V
    .registers 10
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 107
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_d
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_22

    .line 110
    const/4 v2, 0x1

    .line 112
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 115
    if-eqz v2, :cond_21

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 118
    :cond_21
    return-void

    .line 112
    :catchall_22
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private static addAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 7
    .parameter "db"
    .parameter "albumId"

    .prologue
    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "RecentAlbumId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v1, "ItemDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    const-string v1, "RECENT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 146
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 147
    return-void
.end method

.method private static addPlaylist(Landroid/content/Context;J)V
    .registers 10
    .parameter "context"
    .parameter "playlistId"

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 123
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_d
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addPlaylist(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_22

    .line 126
    const/4 v2, 0x1

    .line 128
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 131
    if-eqz v2, :cond_21

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 134
    :cond_21
    return-void

    .line 128
    :catchall_22
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private static addPlaylist(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 7
    .parameter "db"
    .parameter "playlistId"

    .prologue
    .line 151
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "RecentListId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v1, "ItemDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    const-string v1, "RECENT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 159
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    return-void
.end method

.method private static addRecentlyAddedAlbums(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 19
    .parameter "db"

    .prologue
    .line 202
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/RecentItemsManager;->removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    const/4 v12, 0x0

    .line 208
    .local v12, count:I
    const-wide/16 v16, 0x0

    .line 210
    .local v16, oldestItemDate:J
    const-string v2, "RECENT"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "ItemDate"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ItemDate ASC"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 214
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_2d

    :try_start_1e
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 215
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 216
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_55

    move-result-wide v16

    .line 219
    :cond_2d
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 222
    const-string v2, "MUSIC"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "AlbumId"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "FileDate"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "AlbumId"

    const/4 v7, 0x0

    const-string v8, "FileDate DESC"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 227
    .local v10, albumCursor:Landroid/database/Cursor;
    if-nez v10, :cond_5a

    .line 260
    :goto_54
    return-void

    .line 219
    .end local v10           #albumCursor:Landroid/database/Cursor;
    :catchall_55
    move-exception v1

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1

    .line 232
    .restart local v10       #albumCursor:Landroid/database/Cursor;
    :cond_5a
    :try_start_5a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 233
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 234
    .local v14, mostRecentlyAddedAlbumDate:J
    const/16 v1, 0xc8

    if-lt v12, v1, :cond_6d

    cmp-long v1, v14, v16

    if-lez v1, :cond_ac

    .line 244
    :cond_6d
    const/4 v1, -0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 245
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v13, insertValues:Landroid/content/ContentValues;
    :goto_76
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 247
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 248
    const-string v1, "RecentAlbumId"

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    const-string v1, "ItemDate"

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    const-string v1, "RECENT"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a3
    .catchall {:try_start_5a .. :try_end_a3} :catchall_a4

    goto :goto_76

    .line 258
    .end local v13           #insertValues:Landroid/content/ContentValues;
    .end local v14           #mostRecentlyAddedAlbumDate:J
    :catchall_a4
    move-exception v1

    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1

    .line 254
    .restart local v13       #insertValues:Landroid/content/ContentValues;
    .restart local v14       #mostRecentlyAddedAlbumDate:J
    :cond_a9
    :try_start_a9
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_a4

    .line 258
    .end local v13           #insertValues:Landroid/content/ContentValues;
    .end local v14           #mostRecentlyAddedAlbumDate:J
    :cond_ac
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_54
.end method

.method private static countItems(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 11
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 167
    const/4 v9, 0x0

    .line 168
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

    .line 173
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_23

    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 174
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    move-result v9

    .line 177
    :cond_23
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 180
    return v9

    .line 177
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

    .line 306
    if-nez p1, :cond_4

    .line 323
    :goto_3
    return v1

    .line 311
    :cond_4
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5c

    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 313
    .local v0, idsToDelete:Ljava/lang/StringBuffer;
    :goto_15
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 314
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

    .line 323
    .end local v0           #idsToDelete:Ljava/lang/StringBuffer;
    :catchall_2a
    move-exception v1

    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1

    .line 316
    .restart local v0       #idsToDelete:Ljava/lang/StringBuffer;
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 317
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

    .line 323
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

    .line 265
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 267
    const-string v1, "RECENT"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "RecentId"

    aput-object v4, v2, v0

    const-string v7, "ItemDate DESC"

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

    .line 273
    .local v9, c:Landroid/database/Cursor;
    invoke-static {p0, v9}, Lcom/google/android/music/store/RecentItemsManager;->deleteItemsAndCloseCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    .line 274
    return-void
.end method

.method private static removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 278
    const-string v1, "RECENT"

    const-string v2, "(RecentListId NOT NULL AND NOT EXISTS(SELECT LISTS.Id FROM LISTS WHERE LISTS.Id=RecentListId)) OR (RecentAlbumId NOT NULL AND NOT EXISTS(SELECT MUSIC.AlbumId FROM MUSIC WHERE MUSIC.AlbumId=RecentAlbumId))"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, howManyDeleted:I
    if-lez v0, :cond_29

    .line 293
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

    .line 295
    :cond_29
    return-void
.end method

.method static update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "context"
    .parameter "db"

    .prologue
    .line 190
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentViewEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 197
    :goto_6
    return-void

    .line 194
    :cond_7
    invoke-static {p1}, Lcom/google/android/music/store/RecentItemsManager;->addRecentlyAddedAlbums(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6
.end method

.method public static updateRecentItems(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentViewEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 84
    :goto_6
    return-void

    .line 72
    :cond_7
    const/4 v2, 0x0

    .line 73
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 74
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_10
    invoke-static {p0, v0}, Lcom/google/android/music/store/RecentItemsManager;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_23

    .line 77
    const/4 v2, 0x1

    .line 79
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_6

    .line 79
    :catchall_23
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public static updateRecentItemsAsync(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 54
    .local v0, bgWorker:Landroid/os/Handler;
    sget v2, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    new-instance v2, Lcom/google/android/music/store/RecentItemsManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/store/RecentItemsManager$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 61
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method
