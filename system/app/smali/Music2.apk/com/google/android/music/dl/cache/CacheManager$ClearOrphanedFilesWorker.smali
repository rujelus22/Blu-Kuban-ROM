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
    .line 392
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    .line 393
    const-string v0, "ClearOrphanedFiles"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method private getAbsolutePathForFolder(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .parameter "folder"

    .prologue
    .line 421
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_a

    .line 422
    :cond_8
    const/4 v0, 0x0

    .line 428
    :cond_9
    :goto_9
    return-object v0

    .line 424
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, folderAbsolutePath:Ljava/lang/String;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private handleClearOrphanedFiles()V
    .registers 35

    .prologue
    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v30

    .line 433
    .local v30, store:Lcom/google/android/music/store/Store;
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 434
    .local v3, readDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v33, 0x0

    .line 435
    .local v33, writeDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v31, 0x0

    .line 437
    .local v31, success:Z
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #calls: Lcom/google/android/music/dl/cache/CacheManager;->getExternalCacheDirectory()Ljava/io/File;
    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;

    move-result-object v13

    .line 438
    .local v13, externalCacheDir:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->getAbsolutePathForFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, externalCacheDirAbsolutePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #calls: Lcom/google/android/music/dl/cache/CacheManager;->getLocalCacheDirectory()Ljava/io/File;
    invoke-static {v4}, Lcom/google/android/music/dl/cache/CacheManager;->access$1100(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;

    move-result-object v22

    .line 441
    .local v22, localCacheDir:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->getAbsolutePathForFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v23

    .line 444
    .local v23, localCacheDirAbsolutePath:Ljava/lang/String;
    const-string v4, "MUSIC"

    const/4 v5, 0x3

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

    const-string v6, "LocalCopyPath IS NOT NULL"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 448
    .local v24, localFiles:Landroid/database/Cursor;
    new-instance v21, Ljava/util/HashMap;

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 449
    .local v21, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 450
    .local v27, noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v25, localPathSizeToFix:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_65
    :goto_65
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_101

    .line 452
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 453
    .local v28, path:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 454
    .local v19, id:J
    if-eqz v14, :cond_83

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8f

    :cond_83
    if-eqz v23, :cond_d9

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 456
    :cond_8f
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v15, f:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_af

    .line 458
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catchall {:try_start_14 .. :try_end_a5} :catchall_a6

    goto :goto_65

    .line 552
    .end local v13           #externalCacheDir:Ljava/io/File;
    .end local v14           #externalCacheDirAbsolutePath:Ljava/lang/String;
    .end local v15           #f:Ljava/io/File;
    .end local v19           #id:J
    .end local v21           #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v22           #localCacheDir:Ljava/io/File;
    .end local v23           #localCacheDirAbsolutePath:Ljava/lang/String;
    .end local v24           #localFiles:Landroid/database/Cursor;
    .end local v25           #localPathSizeToFix:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v27           #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v28           #path:Ljava/lang/String;
    :catchall_a6
    move-exception v4

    if-eqz v3, :cond_ae

    .line 553
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_ae
    throw v4

    .line 460
    .restart local v13       #externalCacheDir:Ljava/io/File;
    .restart local v14       #externalCacheDirAbsolutePath:Ljava/lang/String;
    .restart local v15       #f:Ljava/io/File;
    .restart local v19       #id:J
    .restart local v21       #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v22       #localCacheDir:Ljava/io/File;
    .restart local v23       #localCacheDirAbsolutePath:Ljava/lang/String;
    .restart local v24       #localFiles:Landroid/database/Cursor;
    .restart local v25       #localPathSizeToFix:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v27       #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v28       #path:Ljava/lang/String;
    :cond_af
    :try_start_af
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 465
    .local v16, fileSize:J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-nez v4, :cond_65

    .line 466
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 470
    .end local v15           #f:Ljava/io/File;
    .end local v16           #fileSize:J
    :cond_d9
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 471
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from validation as the storage is missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    .line 475
    .end local v19           #id:J
    .end local v28           #path:Ljava/lang/String;
    :cond_101
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 476
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 477
    const/4 v3, 0x0

    .line 479
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_138

    .line 480
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_138
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 487
    if-eqz v22, :cond_154

    if-eqz v13, :cond_14b

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v4

    if-eqz v4, :cond_154

    .line 490
    :cond_14b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 493
    :cond_154
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_182

    .line 494
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " files that exist outside"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of expected cache directories"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_182
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18e

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_217

    .line 500
    :cond_18e
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 501
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v26, noLocalIdInClause:Ljava/lang/StringBuilder;
    invoke-static/range {v26 .. v27}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 503
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 504
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "These don\'t have files on the file system anymore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bf
    .catchall {:try_start_af .. :try_end_1bf} :catchall_a6

    .line 508
    :cond_1bf
    const/16 v31, 0x0

    .line 509
    :try_start_1c1
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v33

    .line 510
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .local v32, values:Landroid/content/ContentValues;
    const-string v4, "LocalCopyType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    const-string v4, "LocalCopyPath"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 514
    const-string v4, "LocalCopySize"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v4, "MUSIC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_208
    .catchall {:try_start_1c1 .. :try_end_208} :catchall_2b6

    .line 518
    const/16 v31, 0x1

    .line 520
    if-eqz v33, :cond_217

    .line 521
    :try_start_20c
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 522
    const/16 v33, 0x0

    .line 527
    .end local v26           #noLocalIdInClause:Ljava/lang/StringBuilder;
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_217
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2db

    .line 528
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fixing cached file sizes for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " files."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23f
    .catchall {:try_start_20c .. :try_end_23f} :catchall_a6

    .line 530
    const/16 v31, 0x0

    .line 531
    :try_start_241
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v33

    .line 532
    const-wide/16 v11, 0x0

    .line 533
    .local v11, currentCount:J
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_24f
    :goto_24f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 534
    .restart local v19       #id:J
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 535
    .restart local v32       #values:Landroid/content/ContentValues;
    const-string v5, "LocalCopySize"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    const-string v4, "MUSIC"

    const-string v5, "Id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 537
    .local v29, ret:I
    const-wide/16 v4, 0x1

    add-long/2addr v11, v4

    const-wide/16 v4, 0xfa

    cmp-long v4, v11, v4

    if-ltz v4, :cond_24f

    .line 538
    const-wide/16 v11, 0x0

    .line 539
    const-wide/16 v4, 0xc8

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_29f
    .catchall {:try_start_241 .. :try_end_29f} :catchall_2a0

    goto :goto_24f

    .line 544
    .end local v11           #currentCount:J
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #id:J
    .end local v29           #ret:I
    .end local v32           #values:Landroid/content/ContentValues;
    :catchall_2a0
    move-exception v4

    if-eqz v33, :cond_2b5

    .line 545
    :try_start_2a3
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 546
    const/16 v33, 0x0

    .line 547
    const-string v5, "MusicCache"

    const-string v6, "Successfully fixed the cached file sizes"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b5
    throw v4

    .line 520
    .restart local v26       #noLocalIdInClause:Ljava/lang/StringBuilder;
    :catchall_2b6
    move-exception v4

    if-eqz v33, :cond_2c4

    .line 521
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 522
    const/16 v33, 0x0

    :cond_2c4
    throw v4

    .line 542
    .end local v26           #noLocalIdInClause:Ljava/lang/StringBuilder;
    .restart local v11       #currentCount:J
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_2c5
    const/16 v31, 0x1

    .line 544
    if-eqz v33, :cond_2db

    .line 545
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 546
    const/16 v33, 0x0

    .line 547
    const-string v4, "MusicCache"

    const-string v5, "Successfully fixed the cached file sizes"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2db
    .catchall {:try_start_2a3 .. :try_end_2db} :catchall_a6

    .line 552
    .end local v11           #currentCount:J
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_2db
    if-eqz v3, :cond_2e2

    .line 553
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 556
    :cond_2e2
    return-void
.end method

.method private validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V
    .registers 12
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
    .line 559
    .local p1, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez p2, :cond_10

    .line 560
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 561
    const-string v6, "MusicCache"

    const-string v7, "Cached file or directory is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_f
    :goto_f
    return-void

    .line 565
    :cond_10
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 566
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 567
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

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 572
    :cond_3f
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, absolutePath:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 574
    const-string v6, ".nomedia"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 575
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 576
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 578
    :cond_5f
    iget-object v6, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;
    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;

    move-result-object v6

    invoke-interface {v6, p2}, Lcom/google/android/music/dl/FileSystem;->delete(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 579
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 580
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

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 586
    :cond_8a
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 587
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_b0

    .line 588
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_f

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

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 590
    :cond_b0
    move-object v1, v3

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b3
    if-ge v4, v5, :cond_f

    aget-object v2, v1, v4

    .line 591
    .local v2, file:Ljava/io/File;
    invoke-direct {p0, p1, v2}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 590
    add-int/lit8 v4, v4, 0x1

    goto :goto_b3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 413
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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_1f
    return-void

    .line 404
    :pswitch_20
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->handleClearOrphanedFiles()V

    .line 405
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    monitor-enter v1

    .line 406
    const/4 v0, 0x1

    :try_start_2b
    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 407
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    #getter for: Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->quit()V

    .line 410
    :cond_3e
    monitor-exit v1

    goto :goto_1f

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_40

    throw v0

    .line 402
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method public startClearingOrphanedFilesAsync()V
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->sendEmptyMessage(I)Z

    .line 398
    return-void
.end method
