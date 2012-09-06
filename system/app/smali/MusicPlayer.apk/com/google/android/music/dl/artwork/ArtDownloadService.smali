.class public Lcom/google/android/music/dl/artwork/ArtDownloadService;
.super Landroid/app/Service;
.source "ArtDownloadService.java"

# interfaces
.implements Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAlbumArtWatchedBroadcastResultReceiver:Landroid/content/BroadcastReceiver;

.field private mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

.field private final mFileSystem:Lcom/google/android/music/dl/FileSystem;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOrphanedFilesScavenger:Ljava/lang/Thread;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
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

    .line 107
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    iput-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 619
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$6;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 108
    new-instance v0, Lcom/google/android/music/dl/FileSystemImpl;

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/FileSystemImpl;-><init>(Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mFileSystem:Lcom/google/android/music/dl/FileSystem;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/artwork/ArtDownloadService;Ljava/util/Set;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->onWatchListReceived(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAndStartAsyncDownloads()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->shutdownArtExecutorNow()V

    return-void
.end method

.method private adjustCacheSize(J)V
    .registers 13
    .parameter "increment"

    .prologue
    .line 131
    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v6

    .line 132
    :try_start_3
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "AlbumArtCacheSize"

    const-wide/16 v8, 0x0

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 133
    .local v3, size:J
    add-long v1, v3, p1

    .line 137
    .local v1, newSize:J
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_24

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_15
    const-string v5, "AlbumArtCacheSize"

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 141
    :try_start_1a
    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 143
    monitor-exit v6

    .line 144
    return-void

    .line 141
    :catchall_1f
    move-exception v5

    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    throw v5

    .line 143
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #newSize:J
    .end local v3           #size:J
    :catchall_24
    move-exception v5

    monitor-exit v6
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v5
.end method

.method private clearOrphanedFiles()V
    .registers 28

    .prologue
    .line 153
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v24

    .line 154
    .local v24, store:Lcom/google/android/music/store/Store;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 155
    .local v3, readDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v26, 0x0

    .line 156
    .local v26, writeDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v25, 0x0

    .line 159
    .local v25, success:Z
    :try_start_c
    const-string v4, "ARTWORK"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "AlbumId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "LocalLocation"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "LocalLocationStorageType"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_b3

    move-result-object v19

    .line 165
    .local v19, localFiles:Landroid/database/Cursor;
    if-nez v19, :cond_3e

    .line 229
    if-eqz v3, :cond_32

    .line 230
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    :cond_32
    if-eqz v26, :cond_3d

    .line 233
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 237
    :cond_3d
    :goto_3d
    return-void

    .line 168
    :cond_3e
    :try_start_3e
    new-instance v18, Ljava/util/HashMap;

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    .local v18, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v20, noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v11, 0x0

    .line 171
    .local v11, cacheSize:J
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    .line 172
    .local v13, externalCacheDir:Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_b3

    move-result-object v17

    .line 174
    .local v17, internalCacheDir:Ljava/io/File;
    :cond_58
    :goto_58
    :try_start_58
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_112

    .line 175
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_ae

    move-result v4

    if-eqz v4, :cond_7a

    .line 204
    :try_start_64
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_b3

    .line 229
    if-eqz v3, :cond_6e

    .line 230
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    :cond_6e
    if-eqz v26, :cond_3d

    .line 233
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_3d

    .line 179
    :cond_7a
    const/4 v4, 0x0

    :try_start_7b
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 180
    .local v15, id:J
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 181
    .local v21, path:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 182
    .local v23, storageType:I
    const/4 v14, 0x0

    .line 183
    .local v14, f:Ljava/io/File;
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_c7

    .line 184
    new-instance v14, Ljava/io/File;

    .end local v14           #f:Ljava/io/File;
    move-object/from16 v0, v21

    invoke-direct {v14, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .restart local v14       #f:Ljava/io/File;
    :cond_9c
    :goto_9c
    if-eqz v14, :cond_ea

    .line 189
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_d6

    .line 190
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_7b .. :try_end_ad} :catchall_ae

    goto :goto_58

    .line 204
    .end local v14           #f:Ljava/io/File;
    .end local v15           #id:J
    .end local v21           #path:Ljava/lang/String;
    .end local v23           #storageType:I
    :catchall_ae
    move-exception v4

    :try_start_af
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4
    :try_end_b3
    .catchall {:try_start_af .. :try_end_b3} :catchall_b3

    .line 229
    .end local v11           #cacheSize:J
    .end local v13           #externalCacheDir:Ljava/io/File;
    .end local v17           #internalCacheDir:Ljava/io/File;
    .end local v18           #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19           #localFiles:Landroid/database/Cursor;
    .end local v20           #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_b3
    move-exception v4

    if-eqz v3, :cond_bb

    .line 230
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    :cond_bb
    if-eqz v26, :cond_c6

    .line 233
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_c6
    throw v4

    .line 185
    .restart local v11       #cacheSize:J
    .restart local v13       #externalCacheDir:Ljava/io/File;
    .restart local v14       #f:Ljava/io/File;
    .restart local v15       #id:J
    .restart local v17       #internalCacheDir:Ljava/io/File;
    .restart local v18       #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v19       #localFiles:Landroid/database/Cursor;
    .restart local v20       #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21       #path:Ljava/lang/String;
    .restart local v23       #storageType:I
    :cond_c7
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_9c

    .line 186
    :try_start_cc
    new-instance v14, Ljava/io/File;

    .end local v14           #f:Ljava/io/File;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v14       #f:Ljava/io/File;
    goto :goto_9c

    .line 192
    :cond_d6
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v11, v4

    .line 193
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_58

    .line 196
    :cond_ea
    sget-boolean v4, Lcom/google/android/music/dl/artwork/ArtDownloadService;->LOGV:Z

    if-eqz v4, :cond_58

    .line 197
    const-string v4, "ArtDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from validation as the storage is missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 202
    .end local v14           #f:Ljava/io/File;
    .end local v15           #id:J
    .end local v21           #path:Ljava/lang/String;
    .end local v23           #storageType:I
    :cond_112
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->setCacheSize(J)V
    :try_end_117
    .catchall {:try_start_cc .. :try_end_117} :catchall_ae

    .line 204
    :try_start_117
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 206
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    const/4 v3, 0x0

    .line 210
    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 212
    if-eqz v17, :cond_138

    if-eqz v13, :cond_131

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v4

    if-eqz v4, :cond_138

    .line 214
    :cond_131
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 217
    :cond_138
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_144

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_172

    .line 219
    :cond_144
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 220
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v22, sb:Ljava/lang/StringBuilder;
    const-string v4, "AlbumId"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 223
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    .line 224
    const-string v4, "ARTWORK"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_170
    .catchall {:try_start_117 .. :try_end_170} :catchall_b3

    .line 226
    const/16 v25, 0x1

    .line 229
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :cond_172
    if-eqz v3, :cond_179

    .line 230
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    :cond_179
    if-eqz v26, :cond_3d

    .line 233
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_3d
.end method

.method private clearOrphanedFilesAndStartAsyncDownloads()V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFiles()V

    .line 148
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V

    .line 149
    return-void
.end method

.method private clearOrphanedFilesAsync()V
    .registers 3

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->destroyOrphanedFilesScavenger()V

    .line 303
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;

    const-string v1, "OrphanedFilesScavenger"

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mOrphanedFilesScavenger:Ljava/lang/Thread;

    .line 310
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mOrphanedFilesScavenger:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    return-void
.end method

.method private compareFreeDiskSpaceToTarget(I)J
    .registers 13
    .parameter "targetPercentage"

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 372
    .local v0, cacheRootDir:Ljava/io/File;
    if-nez v0, :cond_a

    .line 373
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 375
    :cond_a
    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mFileSystem:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v7, v0}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v1

    .line 376
    .local v1, freeSpace:J
    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mFileSystem:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v7, v0}, Lcom/google/android/music/dl/FileSystem;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v5

    .line 377
    .local v5, totalSpace:J
    int-to-long v7, p1

    mul-long/2addr v7, v5

    const-wide/16 v9, 0x64

    div-long v3, v7, v9

    .line 378
    .local v3, minFreeSpace:J
    sub-long v7, v1, v3

    return-wide v7
.end method

.method private destroyOrphanedFilesScavenger()V
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mOrphanedFilesScavenger:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 315
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mOrphanedFilesScavenger:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mOrphanedFilesScavenger:Ljava/lang/Thread;

    .line 318
    :cond_c
    return-void
.end method

.method private declared-synchronized ensureEnoughDiskSpace()Z
    .registers 31

    .prologue
    .line 401
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getCacheSize()J

    move-result-wide v11

    .line 402
    .local v11, cacheSize:J
    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->percentageToBytesDiskSpace(I)J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_ec

    move-result-wide v27

    .line 405
    .local v27, targetCacheSize:J
    cmp-long v4, v11, v27

    if-gtz v4, :cond_13

    .line 406
    const/4 v4, 0x1

    .line 480
    :goto_11
    monitor-exit p0

    return v4

    .line 409
    :cond_13
    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x100000

    sub-long v6, v27, v6

    :try_start_1a
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v27

    .line 411
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v25

    .line 412
    .local v25, store:Lcom/google/android/music/store/Store;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_ec

    move-result-object v3

    .line 413
    .local v3, readDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v29, 0x0

    .line 414
    .local v29, writeDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v26, 0x0

    .line 417
    .local v26, success:Z
    :try_start_2a
    const-string v4, "ARTWORK"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "AlbumId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "LocalLocation"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "LocalLocationStorageType"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 422
    .local v21, localFiles:Landroid/database/Cursor;
    if-eqz v21, :cond_126

    .line 424
    new-instance v13, Ljava/util/HashSet;

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 426
    .local v13, deletedFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    .line 427
    .local v14, externalCacheDir:Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_d8

    move-result-object v18

    .line 429
    .local v18, internalCacheDir:Ljava/io/File;
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    cmp-long v4, v11, v27

    if-lez v4, :cond_ef

    .line 430
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 431
    .local v22, path:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 432
    .local v16, id:J
    const/4 v4, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 433
    .local v24, storageType:I
    const/4 v15, 0x0

    .line 434
    .local v15, f:Ljava/io/File;
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_a2

    .line 435
    new-instance v15, Ljava/io/File;

    .end local v15           #f:Ljava/io/File;
    move-object/from16 v0, v22

    invoke-direct {v15, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    .restart local v15       #f:Ljava/io/File;
    :cond_86
    :goto_86
    if-eqz v15, :cond_5a

    .line 440
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 441
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v19

    .line 445
    .local v19, length:J
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 446
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    sub-long v11, v11, v19

    goto :goto_5a

    .line 436
    .end local v19           #length:J
    :cond_a2
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_86

    .line 437
    new-instance v15, Ljava/io/File;

    .end local v15           #f:Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v15       #f:Ljava/io/File;
    goto :goto_86

    .line 449
    .restart local v19       #length:J
    :cond_b1
    const-string v4, "ArtDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not delete file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_5a .. :try_end_cd} :catchall_ce

    goto :goto_5a

    .line 455
    .end local v15           #f:Ljava/io/File;
    .end local v16           #id:J
    .end local v19           #length:J
    .end local v22           #path:Ljava/lang/String;
    .end local v24           #storageType:I
    :catchall_ce
    move-exception v4

    :try_start_cf
    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 456
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->setCacheSize(J)V

    throw v4
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_d8

    .line 472
    .end local v13           #deletedFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v14           #externalCacheDir:Ljava/io/File;
    .end local v18           #internalCacheDir:Ljava/io/File;
    .end local v21           #localFiles:Landroid/database/Cursor;
    :catchall_d8
    move-exception v4

    if-eqz v3, :cond_e0

    .line 473
    :try_start_db
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 475
    :cond_e0
    if-eqz v29, :cond_eb

    .line 476
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_eb
    throw v4
    :try_end_ec
    .catchall {:try_start_db .. :try_end_ec} :catchall_ec

    .line 401
    .end local v3           #readDB:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #cacheSize:J
    .end local v25           #store:Lcom/google/android/music/store/Store;
    .end local v26           #success:Z
    .end local v27           #targetCacheSize:J
    .end local v29           #writeDB:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_ec
    move-exception v4

    monitor-exit p0

    throw v4

    .line 455
    .restart local v3       #readDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #cacheSize:J
    .restart local v13       #deletedFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v14       #externalCacheDir:Ljava/io/File;
    .restart local v18       #internalCacheDir:Ljava/io/File;
    .restart local v21       #localFiles:Landroid/database/Cursor;
    .restart local v25       #store:Lcom/google/android/music/store/Store;
    .restart local v26       #success:Z
    .restart local v27       #targetCacheSize:J
    .restart local v29       #writeDB:Landroid/database/sqlite/SQLiteDatabase;
    :cond_ef
    :try_start_ef
    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 456
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->setCacheSize(J)V

    .line 458
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 459
    const/4 v3, 0x0

    .line 461
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_126

    .line 463
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .local v23, sb:Ljava/lang/StringBuilder;
    const-string v4, "AlbumId"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 466
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v29

    .line 467
    const-string v4, "ARTWORK"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_ef .. :try_end_124} :catchall_d8

    .line 468
    const/16 v26, 0x1

    .line 472
    .end local v13           #deletedFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v14           #externalCacheDir:Ljava/io/File;
    .end local v18           #internalCacheDir:Ljava/io/File;
    .end local v23           #sb:Ljava/lang/StringBuilder;
    :cond_126
    if-eqz v3, :cond_12d

    .line 473
    :try_start_128
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 475
    :cond_12d
    if-eqz v29, :cond_138

    .line 476
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 480
    :cond_138
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isEnoughDiskSpace()Z
    :try_end_13b
    .catchall {:try_start_128 .. :try_end_13b} :catchall_ec

    move-result v4

    goto/16 :goto_11
.end method

.method private getCacheSize()J
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AlbumArtCacheSize"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isCacheFull(Z)Z
    .registers 10
    .parameter "watched"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getCacheSize()J

    move-result-wide v0

    .line 392
    .local v0, cacheSize:J
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->percentageToBytesDiskSpace(I)J

    move-result-wide v2

    .line 394
    .local v2, targetCacheSize:J
    if-nez p1, :cond_16

    .line 395
    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x200000

    sub-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 397
    :cond_16
    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    const/4 v4, 0x1

    :goto_1b
    return v4

    :cond_1c
    const/4 v4, 0x0

    goto :goto_1b
.end method

.method private isEnoughDiskSpace()Z
    .registers 5

    .prologue
    .line 363
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->compareFreeDiskSpaceToTarget(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private onWatchListReceived(Ljava/util/Set;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, watchList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v5}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v4

    .line 546
    .local v4, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-nez v4, :cond_13

    .line 547
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    new-instance v6, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;

    invoke-direct {v6, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    invoke-virtual {v5, v6}, Lcom/google/android/music/NetworkMonitorServiceConnection;->addRunOnServiceConnected(Ljava/lang/Runnable;)V

    .line 617
    :goto_12
    return-void

    .line 555
    :cond_13
    :try_start_13
    invoke-interface {v4}, Lcom/google/android/music/dl/INetworkMonitor;->isStreamingAvailable()Z

    move-result v5

    if-nez v5, :cond_22

    .line 556
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 559
    :catch_1d
    move-exception v1

    .line 560
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 564
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_22
    const/4 v0, 0x0

    .line 566
    .local v0, c:Landroid/database/Cursor;
    :try_start_23
    monitor-enter p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_c1

    .line 567
    :try_start_24
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    if-nez v5, :cond_54

    .line 568
    new-instance v5, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {v5, p0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V

    iput-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 575
    :cond_2f
    const/4 v2, 0x0

    .line 577
    .local v2, foundTopChoices:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/music/store/Store;->getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    .line 579
    :goto_38
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 580
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isDownloadSpaceAvailable(Z)Z

    move-result v5

    if-nez v5, :cond_61

    .line 581
    const-string v5, "ArtDownloadService"

    const-string v6, "Not enough free space for watched art ArtDownloadService, stopping service."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V

    .line 583
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_24 .. :try_end_50} :catchall_be

    .line 615
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_12

    .line 569
    .end local v2           #foundTopChoices:Z
    :cond_54
    :try_start_54
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-virtual {v5}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->getCurrentNumberOfDownloads()I

    move-result v5

    if-eqz v5, :cond_2f

    .line 570
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_be

    .line 615
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_12

    .line 586
    .restart local v2       #foundTopChoices:Z
    :cond_61
    :try_start_61
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    .line 587
    const/4 v2, 0x1

    goto :goto_38

    .line 590
    :cond_71
    if-eqz v2, :cond_78

    .line 591
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_be

    .line 615
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_12

    .line 593
    :cond_78
    :try_start_78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 594
    const/4 v0, 0x0

    .line 598
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/music/store/Store;->getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    .line 600
    const/4 v3, 0x0

    .line 601
    .local v3, moreWork:Z
    :goto_86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 602
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isDownloadSpaceAvailable(Z)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 603
    const-string v5, "ArtDownloadService"

    const-string v6, "Not enough free space for prefetched art ArtDownloadService, stopping service."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V

    .line 605
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_78 .. :try_end_9e} :catchall_be

    .line 615
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_12

    .line 607
    :cond_a3
    :try_start_a3
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    .line 608
    const/4 v3, 0x1

    goto :goto_86

    .line 610
    :cond_b3
    if-nez v3, :cond_b8

    .line 611
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V

    .line 613
    :cond_b8
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_a3 .. :try_end_b9} :catchall_be

    .line 615
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_12

    .line 613
    .end local v2           #foundTopChoices:Z
    .end local v3           #moreWork:Z
    :catchall_be
    move-exception v5

    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    :try_start_c0
    throw v5
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    .line 615
    :catchall_c1
    move-exception v5

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v5
.end method

.method private percentageToBytesDiskSpace(I)J
    .registers 9
    .parameter "percentage"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 383
    .local v0, cacheRootDir:Ljava/io/File;
    if-nez v0, :cond_a

    .line 384
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 386
    :cond_a
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mFileSystem:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, v0}, Lcom/google/android/music/dl/FileSystem;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v1

    .line 387
    .local v1, totalSpace:J
    int-to-long v3, p1

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    return-wide v3
.end method

.method private queueAlbumArtRequestImp(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 508
    monitor-enter p0

    .line 509
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    if-nez v0, :cond_c

    .line 510
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {v0, p0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 513
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    .line 514
    monitor-exit p0

    .line 515
    return-void

    .line 514
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private setCacheSize(J)V
    .registers 7
    .parameter "size"

    .prologue
    .line 119
    const-string v1, "ArtDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting cache size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v2

    .line 121
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_30

    move-result-object v0

    .line 123
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_21
    const-string v1, "AlbumArtCacheSize"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2b

    .line 125
    :try_start_26
    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 127
    monitor-exit v2

    .line 128
    return-void

    .line 125
    :catchall_2b
    move-exception v1

    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    throw v1

    .line 127
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private declared-synchronized shutdownArtExecutorNow()V
    .registers 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    if-eqz v0, :cond_d

    .line 330
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->shutdownNow()Ljava/util/List;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 333
    :cond_d
    monitor-exit p0

    return-void

    .line 329
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAsyncDownloads()V
    .registers 3

    .prologue
    .line 352
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 357
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
    .line 240
    .local p0, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9

    .line 262
    :cond_8
    :goto_8
    return-void

    .line 243
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, absolutePath:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 245
    const-string v6, ".nomedia"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 246
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 247
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 249
    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 253
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 254
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_4c

    .line 255
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

    .line 257
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

    .line 258
    .local v2, file:Ljava/io/File;
    invoke-static {p0, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f
.end method


# virtual methods
.method public isDownloadSpaceAvailable(Z)Z
    .registers 3
    .parameter "watched"

    .prologue
    .line 518
    if-eqz p1, :cond_7

    .line 519
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->ensureEnoughDiskSpace()Z

    move-result v0

    .line 521
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isCacheFull(Z)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->isEnoughDiskSpace()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 272
    const-string v0, "ArtDownload"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mPreferences:Landroid/content/SharedPreferences;

    .line 273
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 275
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 276
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V

    .line 277
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mAlbumArtWatchedBroadcastResultReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 323
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->destroyOrphanedFilesScavenger()V

    .line 324
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 325
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->shutdownArtExecutorNow()V

    .line 326
    return-void
.end method

.method public onDownloadArtworkFile(JLjava/io/File;)V
    .registers 6
    .parameter "albumId"
    .parameter "localLocation"

    .prologue
    .line 526
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->adjustCacheSize(J)V

    .line 527
    return-void
.end method

.method public onDownloadQueueCompleted()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 537
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.android.music.AlbumArtQueryWatched"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mAlbumArtWatchedBroadcastResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 542
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-wide/16 v4, -0x1

    .line 337
    if-eqz p1, :cond_18

    const-string v2, "com.google.android.music.SYNC_COMPLETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 338
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V

    .line 348
    :cond_13
    :goto_13
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 339
    :cond_18
    if-eqz p1, :cond_34

    const-string v2, "com.android.music.REMOTE_ALBUM_ART_REQUESTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 340
    const-string v2, "albumId"

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 341
    .local v0, albumId:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_13

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->queueAlbumArtRequest(J)V

    goto :goto_13

    .line 345
    .end local v0           #albumId:J
    :cond_34
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V

    goto :goto_13
.end method

.method public queueAlbumArtRequest(J)V
    .registers 7
    .parameter "albumId"

    .prologue
    .line 484
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v1

    .line 485
    .local v1, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-nez v1, :cond_13

    .line 486
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    new-instance v3, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/music/dl/artwork/ArtDownloadService$4;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/NetworkMonitorServiceConnection;->addRunOnServiceConnected(Ljava/lang/Runnable;)V

    .line 504
    :goto_12
    return-void

    .line 494
    :cond_13
    :try_start_13
    invoke-interface {v1}, Lcom/google/android/music/dl/INetworkMonitor;->isStreamingAvailable()Z

    move-result v2

    if-nez v2, :cond_22

    .line 495
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->stopSelf()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_12

    .line 498
    :catch_1d
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 503
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->queueAlbumArtRequestImp(J)V

    goto :goto_12
.end method
