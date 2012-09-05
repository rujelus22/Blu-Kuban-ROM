.class public Lcom/google/android/music/store/KeepOnUpdater;
.super Ljava/lang/Object;
.source "KeepOnUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/KeepOnUpdater$UpdateKeepOnTables;,
        Lcom/google/android/music/store/KeepOnUpdater$SyncListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final NO_NULL_COLUMN_HACK:Ljava/lang/String;

.field private static final NO_WHERE_ARGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "KeepOnUpdater"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/KeepOnUpdater;->LOGV:Z

    .line 38
    sput-object v1, Lcom/google/android/music/store/KeepOnUpdater;->NO_WHERE_ARGS:[Ljava/lang/String;

    .line 39
    sput-object v1, Lcom/google/android/music/store/KeepOnUpdater;->NO_NULL_COLUMN_HACK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->updateKeeponTables(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->deleteArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->deleteAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->deletePlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->insertPlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static addMissingAlbumsForKeepOnArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 8
    .parameter "db"
    .parameter "keepOnIds"

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->getMissingKeeponAlbumIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 191
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_32

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_32

    .line 192
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 193
    .local v3, insertValues:Landroid/content/ContentValues;
    :goto_12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 194
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 195
    .local v0, albumId:J
    const-string v4, "AlbumId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v4, "KEEPON"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    goto :goto_12

    .line 200
    .end local v0           #albumId:J
    .end local v3           #insertValues:Landroid/content/ContentValues;
    :catchall_2d
    move-exception v4

    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4

    :cond_32
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 202
    return-void
.end method

.method private static deleteAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .registers 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "AlbumId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .registers 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ArtistId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I
    .registers 8
    .parameter "db"
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 342
    const/4 v2, 0x0

    .line 350
    :goto_7
    return v2

    .line 344
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 345
    .local v0, size:I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0xb

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 348
    .local v1, whereClause:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {v1, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 350
    const-string v2, "KEEPON"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/KeepOnUpdater;->NO_WHERE_ARGS:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_7
.end method

.method private static deleteInvalidKeeponEntries(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 4
    .parameter "db"

    .prologue
    .line 387
    const-string v0, "KEEPON"

    const-string v1, "(ListId NOT NULL AND NOT EXISTS (select 1 from LISTS where LISTS.Id=KEEPON.ListId)) OR (AlbumId NOT NULL AND NOT EXISTS (select 1 from MUSIC where MUSIC.AlbumId=KEEPON.AlbumId LIMIT 1)) OR (ArtistId NOT NULL AND NOT EXISTS (select 1 from MUSIC where MUSIC.AlbumArtistId=KEEPON.ArtistId LIMIT 1))"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteInvalidShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 13
    .parameter "db"

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 410
    const/4 v8, 0x0

    .line 415
    .local v8, deleteCount:I
    const-string v1, "KEEPON"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "KeepOnId"

    aput-object v0, v2, v3

    const-string v0, "ListId"

    aput-object v0, v2, v5

    const-string v3, "ListId NOT NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 419
    .local v9, keeponCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_42

    .line 420
    :try_start_1d
    const-string v10, "KeepOnId=? AND MusicId NOT IN (select MUSIC.Id from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  where LISTITEMS.ListId=?)"

    .line 424
    .local v10, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    .line 425
    .local v11, selectionArgs:[Ljava/lang/String;
    :goto_22
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 426
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 427
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 428
    const-string v0, "SHOULDKEEPON"

    const-string v1, "KeepOnId=? AND MusicId NOT IN (select MUSIC.Id from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  where LISTITEMS.ListId=?)"

    invoke-virtual {p0, v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_4f

    move-result v0

    add-int/2addr v8, v0

    goto :goto_22

    .line 432
    .end local v10           #selection:Ljava/lang/String;
    .end local v11           #selectionArgs:[Ljava/lang/String;
    :cond_42
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 438
    const-string v0, "SHOULDKEEPON"

    const-string v1, " ROWID IN (select SHOULDKEEPON.rowid from KEEPON, SHOULDKEEPON where KEEPON.AlbumId NOT NULL AND KEEPON.KeepOnId=SHOULDKEEPON.KeepOnId AND NOT EXISTS(select 1 from MUSIC where MUSIC.Id=SHOULDKEEPON.MusicId AND MUSIC.AlbumId=KEEPON.AlbumId))"

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    .line 452
    return v8

    .line 432
    :catchall_4f
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static deleteOrphanedShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .registers 7
    .parameter "db"
    .parameter "deleteInvalidItems"

    .prologue
    const/4 v4, 0x0

    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, fileCleanupNeeded:Z
    const-string v2, "SHOULDKEEPON"

    const-string v3, "KeepOnId NOT IN (SELECT KeepOnId FROM KEEPON)"

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, deleted:I
    if-eqz p1, :cond_11

    .line 311
    invoke-static {p0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteInvalidShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    add-int/2addr v0, v2

    .line 314
    :cond_11
    if-lez v0, :cond_1a

    .line 317
    invoke-static {p0}, Lcom/google/android/music/store/Store;->resetLocalCopyForOrphanedShouldKeepOnMusic(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-lez v2, :cond_1a

    .line 318
    const/4 v1, 0x1

    .line 322
    :cond_1a
    if-eqz p1, :cond_23

    .line 325
    const-string v2, "SHOULDKEEPON"

    const-string v3, "SHOULDKEEPON.MusicId IN (SELECT MusicId FROM SHOULDKEEPON LEFT JOIN MUSIC ON (SHOULDKEEPON.MusicId=MUSIC.Id) WHERE MUSIC.Id IS NULL)"

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    :cond_23
    return v1
.end method

.method private static deletePlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .registers 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ListId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getMissingKeeponAlbumIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "db"
    .parameter "keepOnIds"

    .prologue
    .line 214
    const-string v1, "KEEPON"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ArtistId"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArtistId NOT NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_38

    const-string v0, ""

    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 220
    .local v12, keepOnArtists:Landroid/database/Cursor;
    if-eqz v12, :cond_33

    :try_start_2c
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_72

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_52

    .line 221
    :cond_33
    const/4 v0, 0x0

    .line 231
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 234
    :goto_37
    return-object v0

    .line 214
    .end local v12           #keepOnArtists:Landroid/database/Cursor;
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 223
    .restart local v12       #keepOnArtists:Landroid/database/Cursor;
    :cond_52
    :try_start_52
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 224
    .local v10, artistBuffer:Ljava/lang/StringBuffer;
    :goto_5d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 225
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_72

    goto :goto_5d

    .line 231
    .end local v10           #artistBuffer:Ljava/lang/StringBuffer;
    :catchall_72
    move-exception v0

    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 228
    .restart local v10       #artistBuffer:Ljava/lang/StringBuffer;
    :cond_77
    :try_start_77
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 229
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_72

    move-result-object v11

    .line 231
    .local v11, artistIds:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 234
    const/4 v1, 0x1

    const-string v2, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "MUSIC.AlbumId"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(MUSIC.AlbumArtistId IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "MUSIC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ArtistId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "KEEPON.KeepOnId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IS NULL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_37
.end method

.method static insertAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "AlbumId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static insertArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ArtistId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static insertFromAlbums(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 7
    .parameter "db"
    .parameter "keepOnId"

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO SHOULDKEEPON(MusicId,KeepOnId)\nSELECT DISTINCT MUSIC.Id,KEEPON.KeepOnId\nFROM KEEPON\n JOIN MUSIC ON (KEEPON.AlbumId = MUSIC.AlbumId)  WHERE MUSIC.SourceAccount<> 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND KEEPON.KeepOnId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    return-void

    .line 253
    :cond_30
    const-string v0, ""

    goto :goto_24
.end method

.method private static insertFromPlaylists(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 7
    .parameter "db"
    .parameter "keepOnId"

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO SHOULDKEEPON(MusicId,KeepOnId)\nSELECT DISTINCT MUSIC.Id,KEEPON.KeepOnId\nFROM KEEPON\n JOIN LISTITEMS ON (KEEPON.ListId = LISTITEMS.ListId) \n JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE MUSIC.SourceAccount<> 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND KEEPON.KeepOnId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    return-void

    .line 269
    :cond_30
    const-string v0, ""

    goto :goto_24
.end method

.method private static insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .registers 12
    .parameter "db"
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 363
    .local v3, newIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 382
    :cond_a
    return-object v3

    .line 367
    :cond_b
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v6, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 370
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v7, "KEEPON"

    sget-object v8, Lcom/google/android/music/store/KeepOnUpdater;->NO_NULL_COLUMN_HACK:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 377
    .local v4, rowid:J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-eqz v7, :cond_40

    .line 378
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_40
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    goto :goto_14
.end method

.method private static insertPlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ListId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static sendShouldKeeponUpdatedBroadcast(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "requestFileCleanup"

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.NEW_SHOULDKEEPON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, update:Landroid/content/Intent;
    if-eqz p1, :cond_e

    .line 468
    const-string v1, "deleteCachedFiles"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 471
    :cond_e
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 472
    return-void
.end method

.method public static startUpdateKeepon(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 10
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, deselectedArtists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, deselectedAlbums:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p3, deselectedPlaylists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p4, selectedArtists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p5, selectedAlbums:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p6, selectedPlaylists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.UPDATE_KEEP_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, i:Landroid/content/Intent;
    const-string v1, "deselectedArtists"

    check-cast p1, Ljava/io/Serializable;

    .end local p1           #deselectedArtists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 508
    const-string v1, "deselectedAlbums"

    check-cast p2, Ljava/io/Serializable;

    .end local p2           #deselectedAlbums:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 509
    const-string v1, "deselectedPlaylists"

    check-cast p3, Ljava/io/Serializable;

    .end local p3           #deselectedPlaylists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 511
    const-string v1, "selectedArtists"

    check-cast p4, Ljava/io/Serializable;

    .end local p4           #selectedArtists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 512
    const-string v1, "selectedAlbums"

    check-cast p5, Ljava/io/Serializable;

    .end local p5           #selectedAlbums:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 513
    const-string v1, "selectedPlaylists"

    check-cast p6, Ljava/io/Serializable;

    .end local p6           #selectedPlaylists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 516
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not start the keep on updater service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_3f
    return-void
.end method

.method private static updateKeeponTables(Landroid/content/Context;Z)V
    .registers 11
    .parameter "context"
    .parameter "deleteOldData"

    .prologue
    const/4 v5, 0x1

    .line 155
    sget-boolean v6, Lcom/google/android/music/store/KeepOnUpdater;->LOGV:Z

    if-eqz v6, :cond_c

    const-string v6, "KeepOnUpdater"

    const-string v7, "Updating SHOULDKEEPON"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_c
    const/4 v2, 0x0

    .line 158
    .local v2, filePathCleanupNeeded:Z
    const/4 v4, 0x0

    .line 159
    .local v4, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 160
    .local v3, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_16
    invoke-static {v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteInvalidKeeponEntries(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, deletedShouldKeepOnCount:I
    if-eqz p1, :cond_25

    .line 165
    const-string v6, "SHOULDKEEPON"

    const-string v7, "1"

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 168
    :cond_25
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/google/android/music/store/KeepOnUpdater;->addMissingAlbumsForKeepOnArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 169
    const-wide/16 v6, -0x1

    invoke-static {v0, v6, v7}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromAlbums(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 170
    const-wide/16 v6, -0x1

    invoke-static {v0, v6, v7}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromPlaylists(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 171
    if-eqz p1, :cond_53

    .line 172
    if-lez v1, :cond_3e

    .line 173
    invoke-static {v0}, Lcom/google/android/music/store/Store;->resetLocalCopyForOrphanedShouldKeepOnMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_59

    move-result v6

    if-lez v6, :cond_51

    move v2, v5

    .line 180
    :cond_3e
    :goto_3e
    const/4 v4, 0x1

    .line 182
    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 184
    sget-boolean v5, Lcom/google/android/music/store/KeepOnUpdater;->LOGV:Z

    if-eqz v5, :cond_4d

    const-string v5, "KeepOnUpdater"

    const-string v6, "Update of SHOULDKEEPON complete"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_4d
    invoke-static {p0, v2}, Lcom/google/android/music/store/KeepOnUpdater;->sendShouldKeeponUpdatedBroadcast(Landroid/content/Context;Z)V

    .line 186
    return-void

    .line 173
    :cond_51
    const/4 v2, 0x0

    goto :goto_3e

    .line 178
    :cond_53
    const/4 v5, 0x1

    :try_start_54
    invoke-static {v0, v5}, Lcom/google/android/music/store/KeepOnUpdater;->deleteOrphanedShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_59

    move-result v2

    goto :goto_3e

    .line 182
    .end local v1           #deletedShouldKeepOnCount:I
    :catchall_59
    move-exception v5

    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v5
.end method

.method static updateNeedToKeepOn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    .registers 16
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, newKeepOnId:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 120
    const/4 v8, 0x0

    .line 122
    .local v8, c:Landroid/database/Cursor;
    :try_start_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .local v13, strNewIds:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 124
    .local v10, newId:Ljava/lang/Long;
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_16

    .line 147
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #newId:Ljava/lang/Long;
    .end local v13           #strNewIds:Ljava/lang/StringBuilder;
    :catchall_2c
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 126
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #strNewIds:Ljava/lang/StringBuilder;
    :cond_31
    :try_start_31
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 127
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, newIds:Ljava/lang/String;
    invoke-static {p0, v12}, Lcom/google/android/music/store/KeepOnUpdater;->addMissingAlbumsForKeepOnArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 129
    const-string v1, "KEEPON"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "KeepOnId"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "AlbumId"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "ArtistId"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "ListId"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeepOnId IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    :cond_7c
    :goto_7c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 136
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 137
    .local v10, newId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 138
    invoke-static {p0, v10, v11}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromAlbums(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_7c

    .line 139
    :cond_92
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 142
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 143
    invoke-static {p0, v10, v11}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromPlaylists(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_a3
    .catchall {:try_start_31 .. :try_end_a3} :catchall_2c

    goto :goto_7c

    .line 147
    .end local v10           #newId:J
    :cond_a4
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 150
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #newIds:Ljava/lang/String;
    .end local v13           #strNewIds:Ljava/lang/StringBuilder;
    :cond_a7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteOrphanedShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v0

    return v0
.end method
