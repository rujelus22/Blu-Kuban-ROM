.class public Lcom/google/android/apps/books/provider/StaleContentDeleter;
.super Ljava/lang/Object;
.source "StaleContentDeleter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeStaleContentSize(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)J
    .registers 9
    .parameter "baseDir"
    .parameter "accountName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, volumesToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 134
    .local v0, bytesToRecover:J
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, volumeId:Ljava/lang/String;
    invoke-static {p0, p1, v3}, Lcom/google/android/apps/books/provider/StaleContentDeleter;->getContentSize(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_6

    .line 137
    .end local v3           #volumeId:Ljava/lang/String;
    :cond_18
    return-wide v0
.end method

.method public static deleteStaleContentLocked(Landroid/content/ContentResolver;Landroid/accounts/Account;J)V
    .registers 21
    .parameter "contentResolver"
    .parameter "account"
    .parameter "keepAge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v5, v14, p2

    .line 49
    .local v5, cutoffTime:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v6}, Lcom/google/android/apps/books/provider/StaleContentDeleter;->getVolumeIdsToDelete(Landroid/content/ContentResolver;Landroid/accounts/Account;J)Ljava/util/Set;

    move-result-object v13

    .line 53
    .local v13, volumesToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/books/provider/BooksProvider;->getFileStorageDirectory(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v2

    .line 54
    .local v2, baseDir:Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v14, v13}, Lcom/google/android/apps/books/provider/StaleContentDeleter;->computeStaleContentSize(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)J

    move-result-wide v3

    .line 55
    .local v3, bytesToRecover:J
    invoke-static {v2}, Lcom/google/android/apps/books/util/FileUtils;->freeBytesOnFilesystem(Ljava/io/File;)J

    move-result-wide v7

    .line 56
    .local v7, freeSpaceInBytes:J
    long-to-float v14, v3

    long-to-float v15, v7

    const v16, 0x3dcccccd

    mul-float v15, v15, v16

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2a

    .line 71
    :cond_29
    return-void

    .line 62
    :cond_2a
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v11, values:Landroid/content/ContentValues;
    const-string v14, "content_version"

    invoke-virtual {v11, v14}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 64
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 65
    .local v12, volumeId:Ljava/lang/String;
    const-string v14, "StaleContentDeleter"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_65

    .line 66
    const-string v14, "StaleContentDeleter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ensuring stale volume deleted: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_65
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 69
    .local v10, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_38
.end method

.method private static getContentSize(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .parameter "baseDir"
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    .line 147
    .local v0, contentSize:J
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildPageContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 148
    .local v2, pagesDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 149
    invoke-static {v2}, Lcom/google/android/apps/books/util/FileUtils;->totalSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 152
    :cond_11
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildResContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 153
    .local v3, resDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 154
    invoke-static {v3}, Lcom/google/android/apps/books/util/FileUtils;->totalSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 157
    :cond_20
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildSectionContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 158
    .local v4, segmentsDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 159
    invoke-static {v4}, Lcom/google/android/apps/books/util/FileUtils;->totalSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 162
    :cond_2f
    return-wide v0
.end method

.method public static getVolumeIdsToDelete(Landroid/content/ContentResolver;Landroid/accounts/Account;J)Ljava/util/Set;
    .registers 18
    .parameter "resolver"
    .parameter "account"
    .parameter "cutoffTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/accounts/Account;",
            "J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "max_collection_volumes_timestamp"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "max_last_local_access"

    aput-object v3, v2, v0

    .line 98
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "max_collection_volumes_timestamp IS NULL"

    .line 99
    .local v11, onNoShelf:Ljava/lang/String;
    const-string v10, "(max_last_local_access IS NULL OR max_last_local_access < CAST(? AS INTEGER))"

    .line 101
    .local v10, notReadRecently:Ljava/lang/String;
    const-string v8, "max_collection_volumes_timestamp < CAST(? AS INTEGER)"

    .line 103
    .local v8, notAddedRecently:Ljava/lang/String;
    const-string v9, "pinned=0"

    .line 104
    .local v9, notPinned:Ljava/lang/String;
    const-string v12, "max_collection_volumes_timestamp IS NULL OR (pinned=0 AND max_collection_volumes_timestamp < CAST(? AS INTEGER) AND (max_last_local_access IS NULL OR max_last_local_access < CAST(? AS INTEGER)))"

    .line 106
    .local v12, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    .line 110
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildAccountVolumesDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "max_collection_volumes_timestamp IS NULL OR (pinned=0 AND max_collection_volumes_timestamp < CAST(? AS INTEGER) AND (max_last_local_access IS NULL OR max_last_local_access < CAST(? AS INTEGER)))"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_39
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 114
    .local v7, idsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 115
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, volumeId:Ljava/lang/String;
    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_4c

    goto :goto_3d

    .line 120
    .end local v7           #idsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #volumeId:Ljava/lang/String;
    :catchall_4c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #idsToDelete:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_51
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7
.end method
