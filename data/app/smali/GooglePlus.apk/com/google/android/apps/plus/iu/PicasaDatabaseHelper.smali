.class final Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PicasaDatabaseHelper.java"


# static fields
.field private static final USER_ID_QUERY:Ljava/lang/String;

.field private static final USER_TABLE:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->USER_TABLE:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select _id from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->USER_TABLE:Ljava/lang/String;

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

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->USER_ID_QUERY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iu.picasa.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    const-class v1, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->sInstance:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->sInstance:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    .line 27
    :cond_e
    sget-object v0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->sInstance:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 63
    :goto_5
    monitor-exit p0

    return-object v1

    .line 61
    :catch_7
    move-exception v0

    .line 62
    .local v0, t:Ljava/lang/Throwable;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "iu.picasa.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 63
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-result-object v1

    goto :goto_5

    .line 60
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getUserId(Ljava/lang/String;)J
    .registers 9
    .parameter "account"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    .line 87
    sget-object v4, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->USER_ID_QUERY:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1a

    .line 96
    :goto_19
    return-wide v2

    .line 92
    :cond_1a
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2d

    move-result-wide v2

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_19

    :cond_29
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_19

    :catchall_2d
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 53
    :goto_5
    monitor-exit p0

    return-object v1

    .line 51
    :catch_7
    move-exception v0

    .line 52
    .local v0, t:Ljava/lang/Throwable;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "iu.picasa.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 53
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-result-object v1

    goto :goto_5

    .line 50
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
    .line 39
    sget-object v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    sget-object v0, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->requestAccountSync()V

    .line 45
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 82
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    sget-object v0, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    return-void
.end method
