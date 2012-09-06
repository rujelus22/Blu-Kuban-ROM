.class Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UploadsDatabaseHelper.java"


# static fields
.field private static final MEDIA_MAP_TABLE:Ljava/lang/String;

.field private static final UPLOAD_RECORD_TABLE:Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->MEDIA_MAP_TABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iu.upload.db"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method getMediaMapEntry(JLjava/lang/String;)Lcom/google/android/apps/plus/iu/MediaMapEntry;
    .registers 14
    .parameter "mediaId"
    .parameter "trackerKey"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->MEDIA_MAP_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "tracker_key = ? AND media_id < ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "media_id DESC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 100
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_28

    .line 111
    :goto_27
    return-object v5

    .line 105
    :cond_28
    :try_start_28
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 106
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/apps/plus/iu/MediaMapEntry;

    invoke-direct {v1}, Lcom/google/android/apps/plus/iu/MediaMapEntry;-><init>()V

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_44

    .line 109
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v0

    goto :goto_27

    :cond_40
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_27

    :catchall_44
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

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
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "iu.upload.db"

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
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "iu.upload.db"

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
    .line 42
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    invoke-static {p1}, Lcom/google/android/apps/plus/iu/MediaMapEntry;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 69
    const/4 v0, 0x4

    if-ne p3, v0, :cond_8

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/InstantUploadProvider;->disableInstantShare(Landroid/content/Context;)V

    .line 73
    :cond_8
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->MEDIA_MAP_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    return-void
.end method
