.class public Lcom/android/gallery3d/common/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/FileCache$1;,
        Lcom/android/gallery3d/common/FileCache$DatabaseHelper;,
        Lcom/android/gallery3d/common/FileCache$FileEntry;,
        Lcom/android/gallery3d/common/FileCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_SIZE_SUM:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;


# instance fields
.field private mCapacity:J

.field private mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

.field private final mEntryMap:Lcom/android/gallery3d/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/common/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/common/FileCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mRootDir:Ljava/io/File;

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    sget-object v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sum(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "filename"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "content_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    .line 49
    const-string v0, "%s ASC"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/common/FileCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V
    .registers 8
    .parameter "context"
    .parameter "rootDir"
    .parameter "dbName"
    .parameter "capacity"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/gallery3d/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/common/FileCache;->mInitialized:Z

    .line 90
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    .line 91
    iput-wide p4, p0, Lcom/android/gallery3d/common/FileCache;->mCapacity:J

    .line 92
    new-instance v0, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;-><init>(Lcom/android/gallery3d/common/FileCache;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    .line 93
    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/common/FileCache;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    return-object v0
.end method

.method public static deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "rootDir"
    .parameter "dbName"

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 78
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_e

    .line 87
    .end local v2           #files:[Ljava/io/File;
    :cond_d
    :goto_d
    return-void

    .line 79
    .restart local v2       #files:[Ljava/io/File;
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_d

    aget-object v1, v0, v3

    .line 80
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_35

    const-string v7, "download"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    const-string v7, ".tmp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_38

    .line 79
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 84
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #name:Ljava/lang/String;
    :catch_38
    move-exception v6

    .line 85
    .local v6, t:Ljava/lang/Throwable;
    const-string v7, "FileCache"

    const-string v8, "cannot reset database"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private freeSomeSpaceIfNeed(I)V
    .registers 17
    .parameter "maxDeleteFileCount"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/common/FileCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/gallery3d/common/FileCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 220
    .local v8, cursor:Landroid/database/Cursor;
    :goto_14
    if-lez p1, :cond_93

    :try_start_16
    iget-wide v0, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/android/gallery3d/common/FileCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_93

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 221
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 222
    .local v9, id:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, path:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 224
    .local v14, url:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 226
    .local v12, size:J
    iget-object v1, p0, Lcom/android/gallery3d/common/FileCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;

    monitor-enter v1
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_48

    .line 228
    :try_start_3b
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    monitor-exit v1

    goto :goto_14

    .line 229
    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_45

    :try_start_47
    throw v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    .line 241
    .end local v9           #id:J
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #size:J
    .end local v14           #url:Ljava/lang/String;
    :catchall_48
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 229
    .restart local v9       #id:J
    .restart local v11       #path:Ljava/lang/String;
    .restart local v12       #size:J
    .restart local v14       #url:Ljava/lang/String;
    :cond_4d
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_45

    .line 231
    add-int/lit8 p1, p1, -0x1

    .line 232
    :try_start_50
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-direct {v0, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 233
    iget-wide v0, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    sub-long/2addr v0, v12

    iput-wide v0, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_14

    .line 237
    :cond_7a
    const-string v0, "FileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_50 .. :try_end_92} :catchall_48

    goto :goto_14

    .line 241
    .end local v9           #id:J
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #size:J
    .end local v14           #url:Ljava/lang/String;
    :cond_93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    return-void
.end method

.method private declared-synchronized initialize()V
    .registers 10

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/gallery3d/common/FileCache;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3e

    if-eqz v0, :cond_7

    .line 212
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 194
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/gallery3d/common/FileCache;->mInitialized:Z

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_41

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_41

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3e

    .line 193
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/common/FileCache;->PROJECTION_SIZE_SUM:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_3e

    move-result-object v8

    .line 207
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_54
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_72

    .line 209
    :cond_61
    :try_start_61
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 211
    iget-wide v0, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/android/gallery3d/common/FileCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/gallery3d/common/FileCache;->freeSomeSpaceIfNeed(I)V

    goto :goto_5

    .line 209
    :catchall_72
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_3e
.end method

.method private queryDatabase(Ljava/lang/String;)Lcom/android/gallery3d/common/FileCache$FileEntry;
    .registers 14
    .parameter "downloadUrl"

    .prologue
    const/4 v5, 0x0

    .line 165
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v10

    .line 166
    .local v10, hash:J
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 167
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/common/FileCache$FileEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "hash_code=? AND content_url=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 171
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_47

    move-result v0

    if-nez v0, :cond_32

    .line 177
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_31
    return-object v5

    .line 172
    :cond_32
    :try_start_32
    new-instance v9, Lcom/android/gallery3d/common/FileCache$FileEntry;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/android/gallery3d/common/FileCache$FileEntry;-><init>(Lcom/android/gallery3d/common/FileCache$1;)V

    .line 173
    .local v9, entry:Lcom/android/gallery3d/common/FileCache$FileEntry;
    sget-object v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, v8, v9}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 174
    iget-wide v0, v9, Lcom/android/gallery3d/common/FileCache$FileEntry;->id:J

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/common/FileCache;->updateLastAccess(J)V
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_47

    .line 177
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    goto :goto_31

    .end local v9           #entry:Lcom/android/gallery3d/common/FileCache$FileEntry;
    :catchall_47
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateLastAccess(J)V
    .registers 10
    .parameter "id"

    .prologue
    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    iget-object v1, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->close()V

    .line 97
    return-void
.end method

.method public createFile()Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v0, "download"

    const-string v1, ".tmp"

    iget-object v2, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lcom/android/gallery3d/common/FileCache$CacheEntry;
    .registers 14
    .parameter "downloadUrl"

    .prologue
    const/4 v9, 0x0

    .line 129
    iget-boolean v1, p0, Lcom/android/gallery3d/common/FileCache;->mInitialized:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/gallery3d/common/FileCache;->initialize()V

    .line 131
    :cond_8
    iget-object v2, p0, Lcom/android/gallery3d/common/FileCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;

    monitor-enter v2

    .line 132
    :try_start_b
    iget-object v1, p0, Lcom/android/gallery3d/common/FileCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/common/FileCache$CacheEntry;

    .line 133
    .local v6, entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_21

    .line 135
    if-eqz v6, :cond_27

    .line 136
    monitor-enter p0

    .line 137
    :try_start_17
    #getter for: Lcom/android/gallery3d/common/FileCache$CacheEntry;->id:J
    invoke-static {v6}, Lcom/android/gallery3d/common/FileCache$CacheEntry;->access$100(Lcom/android/gallery3d/common/FileCache$CacheEntry;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/common/FileCache;->updateLastAccess(J)V

    .line 138
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_24

    move-object v0, v6

    .line 160
    .end local v6           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    .local v0, entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :goto_20
    return-object v6

    .line 133
    .end local v0           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    .line 138
    .restart local v6       #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 142
    :cond_27
    monitor-enter p0

    .line 143
    :try_start_28
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/android/gallery3d/common/FileCache$FileEntry;

    move-result-object v7

    .line 144
    .local v7, file:Lcom/android/gallery3d/common/FileCache$FileEntry;
    if-nez v7, :cond_32

    monitor-exit p0

    move-object v0, v6

    .end local v6           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    .restart local v0       #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    move-object v6, v9

    goto :goto_20

    .line 145
    .end local v0           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    .restart local v6       #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :cond_32
    new-instance v0, Lcom/android/gallery3d/common/FileCache$CacheEntry;

    iget-wide v1, v7, Lcom/android/gallery3d/common/FileCache$FileEntry;->id:J

    new-instance v4, Ljava/io/File;

    iget-object v3, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    iget-object v5, v7, Lcom/android/gallery3d/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;Lcom/android/gallery3d/common/FileCache$1;)V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_9d

    .line 147
    .end local v6           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    .restart local v0       #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :try_start_44
    iget-object v1, v0, Lcom/android/gallery3d/common/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_8b

    move-result v1

    if-nez v1, :cond_8e

    .line 149
    :try_start_4c
    iget-object v1, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/common/FileCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v10, v7, Lcom/android/gallery3d/common/FileCache$FileEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    iget-wide v1, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    iget-wide v3, v7, Lcom/android/gallery3d/common/FileCache$FileEntry;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J
    :try_end_6c
    .catchall {:try_start_4c .. :try_end_6c} :catchall_8b
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_6c} :catch_6f

    .line 155
    :goto_6c
    :try_start_6c
    monitor-exit p0

    move-object v6, v9

    goto :goto_20

    .line 152
    :catch_6f
    move-exception v8

    .line 153
    .local v8, t:Ljava/lang/Throwable;
    const-string v1, "FileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot delete entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/android/gallery3d/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    .line 161
    .end local v7           #file:Lcom/android/gallery3d/common/FileCache$FileEntry;
    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_8b
    move-exception v1

    :goto_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_6c .. :try_end_8d} :catchall_8b

    throw v1

    .line 157
    .restart local v7       #file:Lcom/android/gallery3d/common/FileCache$FileEntry;
    :cond_8e
    :try_start_8e
    iget-object v2, p0, Lcom/android/gallery3d/common/FileCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;

    monitor-enter v2
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_8b

    .line 158
    :try_start_91
    iget-object v1, p0, Lcom/android/gallery3d/common/FileCache;->mEntryMap:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_9a

    .line 160
    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_8b

    move-object v6, v0

    goto :goto_20

    .line 159
    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_8b

    .line 161
    .end local v0           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    .end local v7           #file:Lcom/android/gallery3d/common/FileCache$FileEntry;
    .restart local v6       #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :catchall_9d
    move-exception v1

    move-object v0, v6

    .end local v6           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    .restart local v0       #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    goto :goto_8c
.end method

.method public store(Ljava/lang/String;Ljava/io/File;)V
    .registers 9
    .parameter "downloadUrl"
    .parameter "file"

    .prologue
    .line 100
    iget-boolean v2, p0, Lcom/android/gallery3d/common/FileCache;->mInitialized:Z

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/gallery3d/common/FileCache;->initialize()V

    .line 102
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/common/FileCache;->mRootDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 103
    new-instance v0, Lcom/android/gallery3d/common/FileCache$FileEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/common/FileCache$FileEntry;-><init>(Lcom/android/gallery3d/common/FileCache$1;)V

    .line 104
    .local v0, entry:Lcom/android/gallery3d/common/FileCache$FileEntry;
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->hashCode:J

    .line 105
    iput-object p1, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->contentUrl:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->size:J

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->lastAccess:J

    .line 109
    iget-wide v2, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->size:J

    iget-wide v4, p0, Lcom/android/gallery3d/common/FileCache;->mCapacity:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5a

    .line 110
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_5a
    monitor-enter p0

    .line 114
    :try_start_5b
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/FileCache;->queryDatabase(Ljava/lang/String;)Lcom/android/gallery3d/common/FileCache$FileEntry;

    move-result-object v1

    .line 115
    .local v1, original:Lcom/android/gallery3d/common/FileCache$FileEntry;
    if-eqz v1, :cond_86

    .line 116
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 117
    iget-object v2, v1, Lcom/android/gallery3d/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    .line 118
    iget-wide v2, v1, Lcom/android/gallery3d/common/FileCache$FileEntry;->size:J

    iput-wide v2, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->size:J

    .line 122
    :goto_6c
    sget-object v2, Lcom/android/gallery3d/common/FileCache$FileEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v3, p0, Lcom/android/gallery3d/common/FileCache;->mDbHelper:Lcom/android/gallery3d/common/FileCache$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/gallery3d/common/FileCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 124
    iget-wide v2, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    iget-wide v4, p0, Lcom/android/gallery3d/common/FileCache;->mCapacity:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_84

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/gallery3d/common/FileCache;->freeSomeSpaceIfNeed(I)V

    .line 125
    :cond_84
    monitor-exit p0

    .line 126
    return-void

    .line 120
    :cond_86
    iget-wide v2, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    iget-wide v4, v0, Lcom/android/gallery3d/common/FileCache$FileEntry;->size:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/gallery3d/common/FileCache;->mTotalBytes:J

    goto :goto_6c

    .line 125
    .end local v1           #original:Lcom/android/gallery3d/common/FileCache$FileEntry;
    :catchall_8e
    move-exception v2

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_5b .. :try_end_90} :catchall_8e

    throw v2
.end method
