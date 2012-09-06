.class final Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
.super Lcom/google/android/music/Worker;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClearOrphanedFilesWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/cache/CacheManager;)V
    .registers 3
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    .line 356
    const-string v0, "ClearOrphanedFiles"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method private handleClearOrphanedFiles()V
    .registers 26

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v24

    .line 386
    .local v24, store:Lcom/google/android/music/store/Store;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 387
    .local v3, readDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 388
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    const-string v5, "MusicCache"

    const-string v6, "handleClearOrphanedFiles"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_21
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v12

    .line 393
    .local v12, externalCacheDir:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v18

    .line 396
    .local v18, internalCacheDir:Ljava/io/File;
    const-string v4, "MUSIC"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "LocalCopyPath"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "LocalCopySize"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "LocalCopyStorageType"

    aput-object v7, v5, v6

    const-string v6, "LocalCopyPath IS NOT NULL"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 403
    .local v20, localFiles:Landroid/database/Cursor;
    new-instance v19, Ljava/util/HashSet;

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 404
    .local v19, knownFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v22, nonExisting:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v21, localPathSizeToFix:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_71
    :goto_71
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_116

    .line 407
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 408
    .local v23, path:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 409
    .local v16, id:J
    const/4 v13, 0x0

    .line 410
    .local v13, f:Ljava/io/File;
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b2

    .line 411
    new-instance v13, Ljava/io/File;

    .end local v13           #f:Ljava/io/File;
    move-object/from16 v0, v23

    invoke-direct {v13, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    .restart local v13       #f:Ljava/io/File;
    :cond_97
    :goto_97
    if-eqz v13, :cond_ee

    .line 417
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c6

    .line 424
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catchall {:try_start_21 .. :try_end_a8} :catchall_a9

    goto :goto_71

    .line 492
    .end local v12           #externalCacheDir:Ljava/io/File;
    .end local v13           #f:Ljava/io/File;
    .end local v16           #id:J
    .end local v18           #internalCacheDir:Ljava/io/File;
    .end local v19           #knownFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20           #localFiles:Landroid/database/Cursor;
    .end local v21           #localPathSizeToFix:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v22           #nonExisting:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v23           #path:Ljava/lang/String;
    :catchall_a9
    move-exception v4

    if-eqz v3, :cond_b1

    .line 493
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_b1
    throw v4

    .line 412
    .restart local v12       #externalCacheDir:Ljava/io/File;
    .restart local v13       #f:Ljava/io/File;
    .restart local v16       #id:J
    .restart local v18       #internalCacheDir:Ljava/io/File;
    .restart local v19       #knownFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20       #localFiles:Landroid/database/Cursor;
    .restart local v21       #localPathSizeToFix:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v22       #nonExisting:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v23       #path:Ljava/lang/String;
    :cond_b2
    const/4 v4, 0x3

    :try_start_b3
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_97

    .line 413
    new-instance v13, Ljava/io/File;

    .end local v13           #f:Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v13       #f:Ljava/io/File;
    goto :goto_97

    .line 426
    :cond_c6
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 431
    .local v14, fileSize:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-nez v4, :cond_71

    .line 432
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 436
    .end local v14           #fileSize:J
    :cond_ee
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 437
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from validation as the storage is missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_71

    .line 441
    .end local v13           #f:Ljava/io/File;
    .end local v16           #id:J
    .end local v23           #path:Ljava/lang/String;
    :cond_116
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 442
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 443
    const/4 v3, 0x0

    .line 445
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    if-eqz v4, :cond_14d

    .line 446
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    const-string v5, "MusicCache"

    const-string v6, "Before validation: knownFiles=%d nonExisting=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_14d
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a8

    .line 453
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " non-existing files "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "referenced in db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    if-eqz v4, :cond_1a1

    .line 456
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    const-string v5, "MusicCache"

    const-string v6, "nonExisting=%d Clear references: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/log/LogFile;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_1a1
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->clearReferencesInDatabase(Ljava/util/Set;)V
    :try_end_1a8
    .catchall {:try_start_b3 .. :try_end_1a8} :catchall_a9

    .line 465
    :cond_1a8
    :try_start_1a8
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    if-eqz v4, :cond_1c7

    .line 466
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    const-string v5, "MusicCache"

    const-string v6, "validateLocalFiles: externalCacheDir=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_1c7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12, v4}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/Set;Ljava/io/File;Z)V

    .line 471
    if-eqz v18, :cond_204

    if-eqz v12, :cond_1db

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v4

    if-eqz v4, :cond_204

    .line 474
    :cond_1db
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    if-eqz v4, :cond_1fa

    .line 475
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    const-string v5, "MusicCache"

    const-string v6, "validateLocalFiles: localCacheDir=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_1fa
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/Set;Ljava/io/File;Z)V
    :try_end_204
    .catchall {:try_start_1a8 .. :try_end_204} :catchall_a9
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_204} :catch_213

    .line 489
    :cond_204
    :goto_204
    :try_start_204
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->fixLocalPathSize(Ljava/util/Map;)V
    :try_end_20b
    .catchall {:try_start_204 .. :try_end_20b} :catchall_a9

    .line 492
    if-eqz v3, :cond_212

    .line 493
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 496
    :cond_212
    return-void

    .line 481
    :catch_213
    move-exception v11

    .line 482
    .local v11, e:Ljava/io/IOException;
    :try_start_214
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to validate files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    if-eqz v4, :cond_204

    .line 484
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v4

    const-string v5, "MusicCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to validate files: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v11}, Lcom/google/android/music/log/LogFile;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_256
    .catchall {:try_start_214 .. :try_end_256} :catchall_a9

    goto :goto_204
.end method

.method private validateLocalFiles(Ljava/util/Set;Ljava/io/File;Z)V
    .registers 14
    .parameter
    .parameter "fileOrDir"
    .parameter "isExternal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    .local p1, knownFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_21

    .line 511
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 512
    const-string v6, "MusicCache"

    const-string v7, "Cached file or directory is null"

    invoke-static {v6, v7}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_f
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 515
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    const-string v7, "MusicCache"

    const-string v8, "Cached file or directory is null"

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_20
    :goto_20
    return-void

    .line 519
    :cond_21
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9c

    .line 520
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 521
    const-string v6, "MusicCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cached file or directory \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_4f
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    if-eqz v6, :cond_7b

    .line 525
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    const-string v7, "MusicCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cached file or directory \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" does not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/log/LogFile;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_7b
    if-eqz p3, :cond_20

    invoke-static {}, Lcom/google/android/music/dl/cache/CacheUtils;->isExternalStorageMounted()Z

    move-result v6

    if-nez v6, :cond_20

    .line 529
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    if-eqz v6, :cond_94

    .line 530
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    const-string v7, "MusicCache"

    const-string v8, "External storage not mounted"

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/log/LogFile;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_94
    new-instance v6, Ljava/io/IOException;

    const-string v7, "External storage not mounted"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 536
    :cond_9c
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, absolutePath:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_106

    .line 538
    const-string v6, ".nomedia"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 539
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 540
    iget-object v6, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;
    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;

    move-result-object v6

    invoke-interface {v6, p2}, Lcom/google/android/music/dl/FileSystem;->delete(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 541
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 542
    const-string v6, "MusicCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted orphaned file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_e2
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 545
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    const-string v7, "MusicCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted orphaned file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 551
    :cond_106
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 552
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_12c

    .line 553
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "MusicCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Neither file nor directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 555
    :cond_12c
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    if-eqz v6, :cond_14f

    .line 556
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000()Lcom/google/android/music/log/LogFile;

    move-result-object v6

    const-string v7, "MusicCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File.listFiles(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_14f
    move-object v1, v3

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_152
    if-ge v4, v5, :cond_20

    aget-object v2, v1, v4

    .line 559
    .local v2, file:Ljava/io/File;
    invoke-direct {p0, p1, v2, p3}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/Set;Ljava/io/File;Z)V

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_152
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 376
    const-string v0, "MusicCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_1f
    return-void

    .line 367
    :pswitch_20
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->handleClearOrphanedFiles()V

    .line 368
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    monitor-enter v1

    .line 369
    const/4 v0, 0x1

    :try_start_2b
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 370
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->quit()V

    .line 373
    :cond_3e
    monitor-exit v1

    goto :goto_1f

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_40

    throw v0

    .line 365
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method public startClearingOrphanedFilesAsync()V
    .registers 2

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->sendEmptyMessage(I)Z

    .line 361
    return-void
.end method
