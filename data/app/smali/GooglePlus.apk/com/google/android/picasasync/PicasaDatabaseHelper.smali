.class final Lcom/google/android/picasasync/PicasaDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PicasaDatabaseHelper.java"


# static fields
.field private static final ALBUM_ENTRY_PROJECTION_LIST:Ljava/lang/String;

.field private static final ALBUM_ENTRY_QUERY:Ljava/lang/String;

.field private static final ALBUM_TABLE:Ljava/lang/String;

.field private static final USER_ACCOUNT_QUERY:Ljava/lang/String;

.field private static final USER_ID_QUERY:Ljava/lang/String;

.field private static final USER_TABLE:Ljava/lang/String;

.field public static sInstance:Lcom/google/android/picasasync/PicasaDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->USER_TABLE:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->ALBUM_TABLE:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select _id from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/picasasync/PicasaDatabaseHelper;->USER_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'%s\' LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->USER_ID_QUERY:Ljava/lang/String;

    .line 21
    const-string v0, ","

    sget-object v1, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->ALBUM_ENTRY_PROJECTION_LIST:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/picasasync/PicasaDatabaseHelper;->ALBUM_ENTRY_PROJECTION_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaDatabaseHelper;->ALBUM_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where _id=(%s) LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->ALBUM_ENTRY_QUERY:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaDatabaseHelper;->USER_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where _id=%s LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->USER_ACCOUNT_QUERY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "picasa.db"

    const/4 v2, 0x0

    const/16 v3, 0x6b

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    const-class v1, Lcom/google/android/picasasync/PicasaDatabaseHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->sInstance:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    if-nez v0, :cond_e

    .line 36
    new-instance v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->sInstance:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 38
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->sInstance:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;
    .registers 9
    .parameter "account"
    .parameter "albumId"

    .prologue
    const/4 v2, 0x0

    .line 102
    sget-object v3, Lcom/google/android/picasasync/PicasaDatabaseHelper;->ALBUM_ENTRY_QUERY:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_18

    .line 113
    :goto_17
    return-object v2

    .line 107
    :cond_18
    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 108
    sget-object v2, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v3, Lcom/google/android/picasasync/AlbumEntry;

    invoke-direct {v3}, Lcom/google/android/picasasync/AlbumEntry;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v2

    check-cast v2, Lcom/google/android/picasasync/AlbumEntry;
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_33

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_17

    :cond_2f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_17

    :catchall_33
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 76
    :goto_5
    monitor-exit p0

    return-object v1

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, t:Ljava/lang/Throwable;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "picasa.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 76
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-result-object v1

    goto :goto_5

    .line 73
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getUserAccount(J)Ljava/lang/String;
    .registers 10
    .parameter "userId"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 134
    sget-object v3, Lcom/google/android/picasasync/PicasaDatabaseHelper;->USER_ACCOUNT_QUERY:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1c

    .line 143
    :goto_1b
    return-object v2

    .line 139
    :cond_1c
    :try_start_1c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2f

    move-result-object v2

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :cond_2b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :catchall_2f
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 66
    :goto_5
    monitor-exit p0

    return-object v1

    .line 64
    :catch_7
    move-exception v0

    .line 65
    .local v0, t:Ljava/lang/Throwable;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "picasa.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 66
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-result-object v1

    goto :goto_5

    .line 63
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestAccountSync()V

    .line 58
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 99
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 85
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 86
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    .line 91
    return-void
.end method
