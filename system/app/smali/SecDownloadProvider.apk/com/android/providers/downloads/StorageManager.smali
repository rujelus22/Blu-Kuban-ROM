.class Lcom/android/providers/downloads/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static final sDownloadDataDirLowSpaceThreshold:J

.field private static final sMaxdownloadDataDirSize:J

.field private static sSingleton:Lcom/android/providers/downloads/StorageManager;


# instance fields
.field private mBytesDownloadedSinceLastCheckOnSpace:I

.field private mCleanupThread:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadDataDir:Ljava/io/File;

.field private final mExternalStorageDir:Ljava/io/File;

.field private mNumDownloadsSoFar:I

.field private final mSystemCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 103
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 91
    iput-object p1, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 93
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 94
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 95
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/StorageManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/StorageManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->trimDatabase()V

    return-void
.end method

.method private discardPurgeableFiles(IJ)J
    .registers 19
    .parameter "destination"
    .parameter "targetBytes"

    .prologue
    .line 310
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_2a

    .line 311
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discardPurgeableFiles: destination = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2a
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_4f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, destStr:Ljava/lang/String;
    :goto_33
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v6, v2

    .line 318
    .local v6, bindArgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "( status = \'200\' AND destination = ? )"

    const-string v7, "lastmod"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 326
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_55

    .line 327
    const-wide/16 v13, 0x0

    .line 351
    :cond_4e
    :goto_4e
    return-wide v13

    .line 314
    .end local v6           #bindArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #destStr:Ljava/lang/String;
    :cond_4f
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_33

    .line 329
    .restart local v6       #bindArgs:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #destStr:Ljava/lang/String;
    :cond_55
    const-wide/16 v13, 0x0

    .line 331
    .local v13, totalFreed:J
    :goto_57
    :try_start_57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    cmp-long v2, v13, p2

    if-gez v2, :cond_cd

    .line 332
    new-instance v10, Ljava/io/File;

    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v10, file:Ljava/io/File;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_a4

    .line 334
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purging "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_a4
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v13, v2

    .line 338
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 339
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 340
    .local v11, id:J
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_57 .. :try_end_c7} :catchall_c8

    goto :goto_57

    .line 345
    .end local v10           #file:Ljava/io/File;
    .end local v11           #id:J
    :catchall_c8
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_cd
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 347
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_4e

    .line 348
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purged files, freed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e
.end method

.method private declared-synchronized findSpace(Ljava/io/File;JI)V
    .registers 11
    .parameter "root"
    .parameter "targetBytes"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 184
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_9

    .line 243
    :cond_7
    monitor-exit p0

    return-void

    .line 187
    :cond_9
    const/4 v2, 0x4

    if-eq p4, v2, :cond_e

    if-nez p4, :cond_27

    .line 189
    :cond_e
    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 190
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc7

    const-string v4, "external media not mounted"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_24

    .line 184
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2

    .line 195
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 196
    .local v0, bytesAvailable:J
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_63

    .line 201
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 202
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 203
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 204
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_63

    .line 213
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 214
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System cache dir (\'/cache\') is running low on space.space available (in bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_63
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 225
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J

    move-result-wide v0

    .line 226
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_99

    .line 228
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloads data dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running low on space. space available (in bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_99
    cmp-long v2, v0, p2

    if-gez v2, :cond_ab

    .line 233
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 234
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 235
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J

    move-result-wide v0

    .line 238
    :cond_ab
    cmp-long v2, v0, p2

    if-gez v2, :cond_7

    .line 239
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not enough free space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and unable to free any more"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 217
    :cond_d0
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is below 10% availability. stopping this download."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_f1
    .catchall {:try_start_27 .. :try_end_f1} :catchall_24
.end method

.method private getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J
    .registers 12
    .parameter "root"

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 251
    .local v0, files:[Ljava/io/File;
    sget-wide v3, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 252
    .local v3, space:J
    if-nez v0, :cond_a

    move-wide v5, v3

    .line 262
    .end local v3           #space:J
    .local v5, space:J
    :goto_9
    return-wide v5

    .line 255
    .end local v5           #space:J
    .restart local v3       #space:J
    :cond_a
    array-length v2, v0

    .line 256
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_18

    .line 257
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v3, v7

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 259
    :cond_18
    sget-boolean v7, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v7, :cond_34

    .line 260
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "available space (in bytes) in downloads data dir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move-wide v5, v3

    .line 262
    .end local v3           #space:J
    .restart local v5       #space:J
    goto :goto_9
.end method

.method private getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J
    .registers 11
    .parameter "root"

    .prologue
    .line 266
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 268
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x4

    sub-long v0, v5, v7

    .line 269
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v2, v5, v0

    .line 270
    .local v2, size:J
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_43

    .line 271
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "available space (in bytes) in filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_43
    return-wide v2
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    const-class v1, Lcom/android/providers/downloads/StorageManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    if-nez v0, :cond_e

    .line 85
    new-instance v0, Lcom/android/providers/downloads/StorageManager;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/StorageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    .line 87
    :cond_e
    sget-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized incrementBytesDownloadedSinceLastCheckOnSpace(J)I
    .registers 5
    .parameter "val"

    .prologue
    .line 462
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 463
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 462
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeSpuriousFiles()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 362
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_d

    .line 363
    const-string v0, "DownloadManager"

    const-string v1, "in removeSpuriousFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v9, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 368
    .local v11, listOfFiles:[Ljava/io/File;
    if-eqz v11, :cond_21

    .line 369
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    :cond_21
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 372
    if-eqz v11, :cond_30

    .line 373
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_30
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_37

    .line 412
    :cond_36
    return-void

    .line 378
    :cond_37
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8b

    .line 383
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 384
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, filename:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 386
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_7b

    .line 387
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in removeSpuriousFiles, preserving file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_7b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_4e .. :try_end_83} :catchall_84

    goto :goto_4e

    .line 395
    .end local v8           #filename:Ljava/lang/String;
    :catchall_84
    move-exception v0

    if-eqz v6, :cond_8a

    .line 396
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8a
    throw v0

    .line 395
    :cond_8b
    if-eqz v6, :cond_90

    .line 396
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_90
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_94
    :goto_94
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 401
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lost+found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fumo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 407
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_f0

    .line 408
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting spurious file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_f0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_94
.end method

.method private declared-synchronized resetBytesDownloadedSinceLastCheckOnSpace()V
    .registers 2

    .prologue
    .line 467
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 468
    monitor-exit p0

    return-void

    .line 467
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startThreadToCleanupDatabaseAndPurgeFileSystem()V
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    move-result v0

    if-eqz v0, :cond_f

    .line 126
    :goto_d
    monitor-exit p0

    return-void

    .line 119
    :cond_f
    :try_start_f
    new-instance v0, Lcom/android/providers/downloads/StorageManager$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/StorageManager$1;-><init>(Lcom/android/providers/downloads/StorageManager;)V

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 125
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    goto :goto_d

    .line 116
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private trimDatabase()V
    .registers 12

    .prologue
    .line 420
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_b

    .line 421
    const-string v0, "DownloadManager"

    const-string v1, "in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_b
    const/4 v7, 0x0

    .line 425
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_c
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "status >= \'200\'"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 429
    if-nez v7, :cond_34

    .line 432
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_8f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_2e} :catch_6c

    .line 455
    if-eqz v7, :cond_33

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_33
    :goto_33
    return-void

    .line 435
    :cond_34
    :try_start_34
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 436
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v10, v0, -0x3e8

    .line 437
    .local v10, numDelete:I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 438
    .local v6, columnId:I
    :goto_46
    if-lez v10, :cond_63

    .line 439
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 441
    .local v8, downloadUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_60
    .catchall {:try_start_34 .. :try_end_60} :catchall_8f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_60} :catch_6c

    move-result v0

    if-nez v0, :cond_69

    .line 455
    .end local v6           #columnId:I
    .end local v8           #downloadUri:Landroid/net/Uri;
    .end local v10           #numDelete:I
    :cond_63
    if-eqz v7, :cond_33

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 445
    .restart local v6       #columnId:I
    .restart local v8       #downloadUri:Landroid/net/Uri;
    .restart local v10       #numDelete:I
    :cond_69
    add-int/lit8 v10, v10, -0x1

    .line 446
    goto :goto_46

    .line 448
    .end local v6           #columnId:I
    .end local v8           #downloadUri:Landroid/net/Uri;
    .end local v10           #numDelete:I
    :catch_6c
    move-exception v9

    .line 452
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6d
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimDatabase failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_8f

    .line 455
    if-eqz v7, :cond_33

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 455
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_8f
    move-exception v0

    if-eqz v7, :cond_95

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v0
.end method


# virtual methods
.method getDownloadDataDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    return-object v0
.end method

.method declared-synchronized incrementNumDownloadsSoFar()V
    .registers 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    rem-int/lit16 v0, v0, 0xfa

    if-nez v0, :cond_e

    .line 107
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 109
    :cond_e
    monitor-exit p0

    return-void

    .line 106
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method locateDestinationDirectory(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 10
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 279
    packed-switch p2, :pswitch_data_6c

    .line 296
    :pswitch_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected value for destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :pswitch_1c
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 294
    :cond_1e
    :goto_1e
    return-object v0

    .line 285
    :pswitch_1f
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_1e

    .line 287
    :pswitch_22
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/downloads/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, base:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 291
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create external downloads directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 279
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

.method verifySpace(ILjava/lang/String;J)V
    .registers 9
    .parameter "destination"
    .parameter "path"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->resetBytesDownloadedSinceLastCheckOnSpace()V

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, dir:Ljava/io/File;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_34

    .line 142
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in verifySpace, destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_34
    if-nez p2, :cond_3e

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_3e
    packed-switch p1, :pswitch_data_a0

    .line 170
    :cond_41
    :goto_41
    if-nez v0, :cond_9c

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid combination of destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :pswitch_66
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 153
    goto :goto_41

    .line 155
    :pswitch_69
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 156
    goto :goto_41

    .line 158
    :pswitch_6c
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 159
    goto :goto_41

    .line 161
    :pswitch_6f
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 162
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    goto :goto_41

    .line 163
    :cond_7e
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 164
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    goto :goto_41

    .line 165
    :cond_8d
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 166
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_41

    .line 174
    :cond_9c
    invoke-direct {p0, v0, p3, p4, p1}, Lcom/android/providers/downloads/StorageManager;->findSpace(Ljava/io/File;JI)V

    .line 175
    return-void

    .line 148
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_69
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_6f
        :pswitch_6c
    .end packed-switch
.end method

.method verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V
    .registers 7
    .parameter "destination"
    .parameter "path"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p3, p4}, Lcom/android/providers/downloads/StorageManager;->incrementBytesDownloadedSinceLastCheckOnSpace(J)I

    move-result v0

    const/high16 v1, 0x10

    if-ge v0, v1, :cond_9

    .line 136
    :goto_8
    return-void

    .line 135
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    goto :goto_8
.end method
