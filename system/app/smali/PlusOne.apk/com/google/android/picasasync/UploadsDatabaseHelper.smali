.class Lcom/google/android/picasasync/UploadsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UploadsDatabaseHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "picasa.upload.db"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 4
    .parameter "db"
    .parameter "newFingerprintTable"

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    sget-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    if-eqz p2, :cond_11

    sget-object v0, Lcom/google/android/picasasync/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 73
    :goto_5
    monitor-exit p0

    return-object v1

    .line 71
    :catch_7
    move-exception v0

    .line 72
    .local v0, t:Ljava/lang/Throwable;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "picasa.upload.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 73
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-result-object v1

    goto :goto_5

    .line 70
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "picasa.upload.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 63
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 49
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v4, 0x5

    .line 79
    if-le p2, p3, :cond_9

    .line 82
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteException;-><init>()V

    throw v1

    .line 85
    :cond_9
    const-string v1, "UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade upload DB from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x4

    if-ne p2, v1, :cond_36

    if-ne p3, v4, :cond_36

    .line 90
    sget-object v1, Lcom/google/android/picasasync/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    :goto_35
    return-void

    .line 92
    :cond_36
    sget-object v1, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    sget-object v1, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    if-ge p2, v4, :cond_47

    const/4 v0, 0x1

    .line 97
    .local v0, toCreateFingerprintTable:Z
    :goto_43
    invoke-direct {p0, p1, v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_35

    .line 96
    .end local v0           #toCreateFingerprintTable:Z
    :cond_47
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    sget-object v1, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    sget-object v1, Lcom/google/android/picasasync/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    return-void
.end method
