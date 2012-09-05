.class public Lcom/google/android/music/dl/artwork/ArtDownloadService;
.super Landroid/app/Service;
.source "ArtDownloadService.java"

# interfaces
.implements Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;


# static fields
.field private static final LOGV:Z


# instance fields
.field private mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

.field private final mFileSystem:Lcom/google/android/music/dl/FileSystem;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "ArtDownloadService"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 326
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 49
    new-instance v0, Lcom/google/android/music/dl/FileSystemImpl;

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/FileSystemImpl;-><init>(Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mFileSystem:Lcom/google/android/music/dl/FileSystem;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/dl/artwork/ArtDownloadService;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    return-object p1
.end method

.method private clearOrphanedFiles()V
    .registers 26

    .prologue
    .line 70
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v22

    .line 71
    .local v22, store:Lcom/google/android/music/store/Store;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 72
    .local v3, readDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v24, 0x0

    .line 73
    .local v24, writeDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v23, 0x0

    .line 76
    .local v23, success:Z
    :try_start_c
    const-string v4, "ARTWORK"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "AlbumId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "LocalLocation"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 79
    .local v18, localFiles:Landroid/database/Cursor;
    new-instance v16, Ljava/util/HashMap;

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    .local v16, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 81
    .local v19, noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_34
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 82
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 83
    .local v20, path:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 84
    .local v14, id:J
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v12, f:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_73

    .line 86
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_c .. :try_end_5e} :catchall_5f

    goto :goto_34

    .line 120
    .end local v12           #f:Ljava/io/File;
    .end local v14           #id:J
    .end local v16           #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v18           #localFiles:Landroid/database/Cursor;
    .end local v19           #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20           #path:Ljava/lang/String;
    :catchall_5f
    move-exception v4

    if-eqz v3, :cond_67

    .line 121
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    :cond_67
    if-eqz v24, :cond_72

    .line 124
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_72
    throw v4

    .line 88
    .restart local v12       #f:Ljava/io/File;
    .restart local v14       #id:J
    .restart local v16       #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v18       #localFiles:Landroid/database/Cursor;
    .restart local v19       #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v20       #path:Ljava/lang/String;
    :cond_73
    :try_start_73
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 91
    .end local v12           #f:Ljava/io/File;
    .end local v14           #id:J
    .end local v20           #path:Ljava/lang/String;
    :cond_7f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 92
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    const/4 v3, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getExternalArtworkCacheDir()Ljava/io/File;

    move-result-object v11

    .line 97
    .local v11, externalCacheDir:Ljava/io/File;
    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getLocalArtworkCacheDir()Ljava/io/File;

    move-result-object v17

    .line 100
    .local v17, localCacheDir:Ljava/io/File;
    if-eqz v17, :cond_a4

    if-eqz v11, :cond_a1

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v4

    if-eqz v4, :cond_a4

    .line 102
    :cond_a1
    invoke-static/range {v16 .. v17}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 105
    :cond_a4
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10e

    .line 107
    :cond_b0
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 108
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v21, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_c2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 110
    .local v14, id:Ljava/lang/Long;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c2

    .line 113
    .end local v14           #id:Ljava/lang/Long;
    :cond_da
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v24

    .line 115
    const-string v4, "ARTWORK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlbumId IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_73 .. :try_end_10c} :catchall_5f

    .line 117
    const/16 v23, 0x1

    .line 120
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :cond_10e
    if-eqz v3, :cond_115

    .line 121
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    :cond_115
    if-eqz v24, :cond_120

    .line 124
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 127
    :cond_120
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V

    .line 128
    return-void
.end method

.method private clearOrphanedFilesAsync()V
    .registers 2

    .prologue
    .line 170
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->start()V

    .line 177
    return-void
.end method

.method private getExternalArtworkCacheDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 62
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_e

    .line 63
    new-instance v1, Ljava/io/File;

    const-string v2, "artwork"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private getLocalArtworkCacheDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_e

    .line 55
    new-instance v1, Ljava/io/File;

    const-string v2, "artwork"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isEnoughDiskSpace()Z
    .registers 6

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, cacheRootDir:Ljava/io/File;
    if-nez v0, :cond_a

    .line 215
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 217
    :cond_a
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mFileSystem:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, v0}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v1

    .line 218
    .local v1, freeSpace:J
    const-wide/32 v3, 0x3200000

    cmp-long v3, v1, v3

    if-lez v3, :cond_19

    const/4 v3, 0x1

    :goto_18
    return v3

    :cond_19
    const/4 v3, 0x0

    goto :goto_18
.end method

.method private startAsyncDownloads()V
    .registers 3

    .prologue
    .line 202
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method private static validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V
    .registers 11
    .parameter
    .parameter "fileOrDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9

    .line 153
    :cond_8
    :goto_8
    return-void

    .line 134
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, absolutePath:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 136
    const-string v6, ".nomedia"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 137
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 138
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 140
    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 144
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 145
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_4c

    .line 146
    const-string v6, "ArtDownloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Neither file nor directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 148
    :cond_4c
    move-object v1, v3

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4f
    if-ge v4, v5, :cond_8

    aget-object v2, v1, v4

    .line 149
    .local v2, file:Ljava/io/File;
    invoke-static {p0, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 163
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 165
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V

    .line 167
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method public onDownloadQueueCompleted()V
    .registers 9

    .prologue
    .line 257
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v5}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v4

    .line 258
    .local v4, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-nez v4, :cond_13

    .line 259
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    new-instance v6, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;

    invoke-direct {v6, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    invoke-virtual {v5, v6}, Lcom/google/android/music/NetworkMonitorServiceConnection;->addRunOnServiceConnected(Ljava/lang/Runnable;)V

    .line 324
    :goto_12
    return-void

    .line 267
    :cond_13
    :try_start_13
    invoke-interface {v4}, Lcom/google/android/music/dl/INetworkMonitor;->isStreamingAvailable()Z

    move-result v5

    if-nez v5, :cond_22

    .line 268
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 271
    :catch_1d
    move-exception v1

    .line 272
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 276
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_22
    const/4 v0, 0x0

    .line 278
    .local v0, c:Landroid/database/Cursor;
    :try_start_23
    monitor-enter p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_c3

    .line 279
    :try_start_24
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    if-nez v5, :cond_57

    .line 280
    new-instance v5, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {v5, p0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V

    iput-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 286
    :cond_2f
    const/4 v2, 0x0

    .line 287
    .local v2, foundTopChoices:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->getAlbumsBeingListenedFor()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/store/Store;->getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    .line 289
    :goto_3c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 290
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isEnoughDiskSpace()Z

    move-result v5

    if-nez v5, :cond_64

    .line 291
    const-string v5, "ArtDownloadService"

    const-string v6, "Not enough free space for ArtDownloadService, stopping service."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V

    .line 293
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_c0

    .line 322
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_12

    .line 281
    .end local v2           #foundTopChoices:Z
    :cond_57
    :try_start_57
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-virtual {v5}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->getCurrentNumberOfDownloads()I

    move-result v5

    if-eqz v5, :cond_2f

    .line 282
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_c0

    .line 322
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_12

    .line 295
    .restart local v2       #foundTopChoices:Z
    :cond_64
    :try_start_64
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    .line 296
    const/4 v2, 0x1

    goto :goto_3c

    .line 299
    :cond_74
    if-eqz v2, :cond_7b

    .line 300
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_c0

    .line 322
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_12

    .line 302
    :cond_7b
    :try_start_7b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 303
    const/4 v0, 0x0

    .line 305
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/music/store/Store;->getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, moreWork:Z
    :goto_89
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 309
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isEnoughDiskSpace()Z

    move-result v5

    if-nez v5, :cond_a5

    .line 310
    const-string v5, "ArtDownloadService"

    const-string v6, "Not enough free space for ArtDownloadService, stopping service."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V

    .line 312
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_7b .. :try_end_a0} :catchall_c0

    .line 322
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_12

    .line 314
    :cond_a5
    :try_start_a5
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    .line 315
    const/4 v3, 0x1

    goto :goto_89

    .line 317
    :cond_b5
    if-nez v3, :cond_ba

    .line 318
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V

    .line 320
    :cond_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_a5 .. :try_end_bb} :catchall_c0

    .line 322
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_12

    .line 320
    .end local v2           #foundTopChoices:Z
    .end local v3           #moreWork:Z
    :catchall_c0
    move-exception v5

    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw v5
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    .line 322
    :catchall_c3
    move-exception v5

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-wide/16 v4, -0x1

    .line 187
    if-eqz p1, :cond_18

    const-string v2, "com.google.android.music.SYNC_COMPLETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 188
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V

    .line 198
    :cond_13
    :goto_13
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 189
    :cond_18
    if-eqz p1, :cond_34

    const-string v2, "com.android.music.REMOTE_ALBUM_ART_REQUESTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 190
    const-string v2, "albumId"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 191
    .local v0, albumId:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_13

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->queueAlbumArtRequest(J)V

    goto :goto_13

    .line 195
    .end local v0           #albumId:J
    :cond_34
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V

    goto :goto_13
.end method

.method public queueAlbumArtRequest(J)V
    .registers 7
    .parameter "albumId"

    .prologue
    .line 222
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v1

    .line 223
    .local v1, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-nez v1, :cond_13

    .line 224
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    new-instance v3, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->addRunOnServiceConnected(Ljava/lang/Runnable;)V

    .line 254
    :goto_12
    return-void

    .line 232
    :cond_13
    :try_start_13
    invoke-interface {v1}, Lcom/google/android/music/dl/INetworkMonitor;->isStreamingAvailable()Z

    move-result v2

    if-nez v2, :cond_22

    .line 233
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 236
    :catch_1d
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 241
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_22
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isEnoughDiskSpace()Z

    move-result v2

    if-nez v2, :cond_33

    .line 242
    const-string v2, "ArtDownloadService"

    const-string v3, "Not enough free space for ArtDownloadService, stopping service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V

    goto :goto_12

    .line 247
    :cond_33
    monitor-enter p0

    .line 248
    :try_start_34
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    if-nez v2, :cond_48

    .line 249
    new-instance v2, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {v2, p0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V

    iput-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 251
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    .line 253
    :cond_48
    monitor-exit p0

    goto :goto_12

    :catchall_4a
    move-exception v2

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_4a

    throw v2
.end method
