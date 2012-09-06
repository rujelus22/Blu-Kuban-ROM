.class Lcom/google/android/music/store/PlayQueue;
.super Ljava/lang/Object;
.source "PlayQueue.java"


# static fields
.field private static sTheQueue:Lcom/google/android/music/store/PlayQueue;


# instance fields
.field private final mPlayListId:J


# direct methods
.method private constructor <init>(J)V
    .registers 6
    .parameter "playlistId"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_22

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid playlist id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_22
    iput-wide p1, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    .line 38
    return-void
.end method

.method private appendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;I)I
    .registers 18
    .parameter "db"
    .parameter "playGroupId"
    .parameter "c"
    .parameter "max"

    .prologue
    .line 289
    iget-wide v1, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide v10, p2

    invoke-static/range {v0 .. v11}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;IZLjava/lang/Integer;ZZZJ)I

    move-result v0

    return v0
.end method

.method private countFilteredItems(Landroid/database/sqlite/SQLiteDatabase;I)I
    .registers 6
    .parameter "db"
    .parameter "filterIndex"

    .prologue
    .line 180
    iget-wide v1, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/music/store/PlayList;->getFilteredItemCount(Landroid/database/sqlite/SQLiteDatabase;JI)I

    move-result v0

    .line 181
    .local v0, queueSize:I
    return v0
.end method

.method private countItems(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 5
    .parameter "db"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/music/store/PlayQueue;->removeOrphanItems(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 175
    iget-wide v1, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {p1, v1, v2}, Lcom/google/android/music/store/PlayList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    .line 176
    .local v0, queueSize:I
    return v0
.end method

.method private static createPlayGroup(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 5
    .parameter "db"

    .prologue
    .line 634
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 635
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "Time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 636
    const-string v1, "PLAYQ_GROUPS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private createShuffledCursor(Landroid/database/Cursor;II)Landroid/database/MatrixCursor;
    .registers 15
    .parameter "c"
    .parameter "startingPosition"
    .parameter "howMany"

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 304
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sub-int v0, v6, p2

    .line 305
    .local v0, howManyToChooseFrom:I
    new-array v3, v7, [Ljava/lang/Object;

    .line 309
    .local v3, row:[Ljava/lang/Object;
    new-instance v4, Landroid/database/MatrixCursor;

    new-array v6, v7, [Ljava/lang/String;

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-direct {v4, v6, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 311
    .local v4, shuffledCursor:Landroid/database/MatrixCursor;
    new-instance v5, Lcom/google/android/music/StrictShuffler;

    invoke-direct {v5, p3}, Lcom/google/android/music/StrictShuffler;-><init>(I)V

    .line 312
    .local v5, shuffler:Lcom/google/android/music/StrictShuffler;
    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/music/StrictShuffler;->setHistorySize(I)V

    .line 313
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    if-ge v1, p3, :cond_66

    .line 314
    invoke-virtual {v5, v0}, Lcom/google/android/music/StrictShuffler;->nextInt(I)I

    move-result v6

    add-int v2, p2, v6

    .line 315
    .local v2, randomPosition:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 316
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    .line 317
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v10

    .line 318
    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 313
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 320
    :cond_4d
    const-string v6, "MusicStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set position at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 323
    .end local v2           #randomPosition:I
    :cond_66
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 324
    return-object v4
.end method

.method static getInstance()Lcom/google/android/music/store/PlayQueue;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/music/store/PlayQueue;->sTheQueue:Lcom/google/android/music/store/PlayQueue;

    if-nez v0, :cond_c

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlayQueue was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_c
    sget-object v0, Lcom/google/android/music/store/PlayQueue;->sTheQueue:Lcom/google/android/music/store/PlayQueue;

    return-object v0
.end method

.method private getItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 14
    .parameter "db"
    .parameter "itemId"

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v9

    .line 514
    .local v9, item:Lcom/google/android/music/store/PlayList$Item;
    if-nez v9, :cond_9

    .line 515
    const/4 v0, -0x1

    .line 538
    :goto_8
    return v0

    .line 519
    :cond_9
    const-string v1, "LISTITEMS"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(1)"

    aput-object v3, v2, v0

    const-string v3, "ListId=? AND ClientPosition < ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v5, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-virtual {v9}, Lcom/google/android/music/store/PlayList$Item;->getClientPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 529
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_48

    .line 531
    :try_start_36
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 532
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_4a

    move-result v0

    .line 535
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_8

    :cond_45
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 538
    :cond_48
    const/4 v0, -0x1

    goto :goto_8

    .line 535
    :catchall_4a
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method static initQueue(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/music/store/PlayQueue;
    .registers 15
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 59
    sget-object v0, Lcom/google/android/music/store/PlayQueue;->sTheQueue:Lcom/google/android/music/store/PlayQueue;

    if-eqz v0, :cond_e

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlayQueue is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_e
    const-wide/16 v12, 0x0

    .line 64
    .local v12, playlistId:J
    const-string v1, "LISTS"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Id"

    aput-object v0, v2, v3

    const-string v3, "ListType=10"

    const-string v8, "2"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 70
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3f

    :try_start_27
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 71
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 73
    const-string v0, "MusicStore"

    const-string v1, "More than one play queue?"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_6b

    .line 77
    :cond_3f
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_70

    .line 82
    const-string v0, "<PlayQueue>"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/PlayList;->createPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Lcom/google/android/music/store/PlayList;

    move-result-object v11

    .line 85
    .local v11, list:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v11}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v12

    .line 86
    const/4 v10, 0x0

    .line 91
    .end local v11           #list:Lcom/google/android/music/store/PlayList;
    .local v10, cleanupNeeded:Z
    :goto_55
    new-instance v0, Lcom/google/android/music/store/PlayQueue;

    invoke-direct {v0, v12, v13}, Lcom/google/android/music/store/PlayQueue;-><init>(J)V

    sput-object v0, Lcom/google/android/music/store/PlayQueue;->sTheQueue:Lcom/google/android/music/store/PlayQueue;

    .line 92
    if-eqz v10, :cond_68

    .line 93
    sget-object v0, Lcom/google/android/music/store/PlayQueue;->sTheQueue:Lcom/google/android/music/store/PlayQueue;

    invoke-virtual {v0, p0}, Lcom/google/android/music/store/PlayQueue;->removeOrphanItems(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 94
    sget-object v0, Lcom/google/android/music/store/PlayQueue;->sTheQueue:Lcom/google/android/music/store/PlayQueue;

    invoke-virtual {v0, p0}, Lcom/google/android/music/store/PlayQueue;->removeOrphanGroups(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 96
    :cond_68
    sget-object v0, Lcom/google/android/music/store/PlayQueue;->sTheQueue:Lcom/google/android/music/store/PlayQueue;

    return-object v0

    .line 77
    .end local v10           #cleanupNeeded:Z
    :catchall_6b
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 88
    :cond_70
    const/4 v10, 0x1

    .restart local v10       #cleanupNeeded:Z
    goto :goto_55
.end method

.method private makeRoom(Landroid/database/sqlite/SQLiteDatabase;IIII)I
    .registers 10
    .parameter "db"
    .parameter "queuePosition"
    .parameter "wantToAdd"
    .parameter "currentSize"
    .parameter "maxQueueSize"

    .prologue
    .line 423
    add-int v2, p4, p3

    sub-int v1, v2, p5

    .line 424
    .local v1, toPurge:I
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 425
    if-lez v1, :cond_16

    .line 426
    iget-wide v2, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/music/store/PlayList;->deleteTopItems(Landroid/database/sqlite/SQLiteDatabase;JI)I

    move-result v0

    .line 427
    .local v0, deleted:I
    if-lez v0, :cond_15

    .line 428
    invoke-virtual {p0, p1}, Lcom/google/android/music/store/PlayQueue;->removeOrphanGroups(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 432
    .end local v0           #deleted:I
    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private shuffleAndAppendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;II)I
    .registers 14
    .parameter "db"
    .parameter "playGroupId"
    .parameter "c"
    .parameter "startingPosition"
    .parameter "howMany"

    .prologue
    .line 297
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/music/store/PlayQueue;->createShuffledCursor(Landroid/database/Cursor;II)Landroid/database/MatrixCursor;

    move-result-object v4

    .local v4, shuffledCursor:Landroid/database/MatrixCursor;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p6

    .line 298
    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/store/PlayQueue;->appendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;I)I

    move-result v6

    .line 299
    .local v6, added:I
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V

    .line 300
    return v6
.end method

.method private sprinkleIntoQueue(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;III)I
    .registers 31
    .parameter "db"
    .parameter "playGroupId"
    .parameter "sourceCursor"
    .parameter "howMany"
    .parameter "queueSize"
    .parameter "playPosition"

    .prologue
    .line 343
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, p5

    if-ge v0, v2, :cond_20

    .line 345
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/music/store/PlayQueue;->shuffleAndAppendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;II)I

    move-result v9

    .line 350
    .local v9, added:I
    :goto_17
    const/4 v2, 0x1

    move/from16 v0, p6

    if-lt v0, v2, :cond_1f

    const/4 v2, 0x1

    if-ge v9, v2, :cond_25

    .line 407
    :cond_1f
    :goto_1f
    return v9

    .line 347
    .end local v9           #added:I
    :cond_20
    invoke-direct/range {p0 .. p5}, Lcom/google/android/music/store/PlayQueue;->appendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;I)I

    move-result v9

    .restart local v9       #added:I
    goto :goto_17

    .line 355
    :cond_25
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 356
    .local v15, ids:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/PlayQueue;->getListId()J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Id"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/music/store/PlayList;->queryItems(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 359
    .local v17, itemCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_58

    .line 360
    :goto_3e
    :try_start_3e
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 361
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_53

    goto :goto_3e

    .line 368
    :catchall_53
    move-exception v2

    invoke-static/range {v17 .. v17}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    :cond_58
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_1f

    :cond_5c
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 371
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int v3, p6, v9

    if-eq v2, v3, :cond_6f

    .line 372
    const-string v2, "MusicStore"

    const-string v3, "Error adding shuffled container to playq"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 377
    :cond_6f
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    .line 378
    .local v19, random:Ljava/util/Random;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_75
    if-ge v12, v9, :cond_9c

    .line 379
    add-int/lit8 v2, p7, 0x1

    sub-int v3, p6, p7

    add-int/2addr v3, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v16, v2, v3

    .line 380
    .local v16, insertPosition:I
    add-int v2, p6, v12

    move/from16 v0, v16

    if-eq v0, v2, :cond_99

    .line 381
    add-int v2, p6, v12

    invoke-virtual {v15, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 382
    .local v18, itemToMove:Ljava/lang/Long;
    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 378
    .end local v18           #itemToMove:Ljava/lang/Long;
    :cond_99
    add-int/lit8 v12, v12, 0x1

    goto :goto_75

    .line 388
    .end local v16           #insertPosition:I
    :cond_9c
    new-instance v22, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 389
    .local v22, values:Landroid/content/ContentValues;
    const-string v20, "Id=?"

    .line 390
    .local v20, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    .line 392
    .local v10, args:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 393
    .local v11, clientPosition:I
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_ae
    :goto_ae
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 394
    .local v14, id:Ljava/lang/Long;
    const-string v2, "ClientPosition"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const/high16 v2, 0x2

    add-int/2addr v11, v2

    .line 396
    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    .line 397
    const-string v2, "LISTITEMS"

    const-string v3, "Id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .line 398
    .local v21, updated:I
    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_ae

    .line 399
    const-string v2, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected update result when shuffling queue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 403
    .end local v14           #id:Ljava/lang/Long;
    .end local v21           #updated:I
    :cond_ff
    sget-boolean v2, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v2, :cond_1f

    .line 404
    const-string v2, "MusicStore"

    const-string v3, "Done sprinkling"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method


# virtual methods
.method clear(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-wide v0, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {p1, v0, v1}, Lcom/google/android/music/store/PlayList;->deleteAllItems(Landroid/database/sqlite/SQLiteDatabase;J)I

    .line 590
    const-string v0, "PLAYQ_GROUPS"

    invoke-virtual {p1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method getLastGroupInfo(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/util/Pair;
    .registers 21
    .parameter "db"
    .parameter "filterIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .local v12, condition:Ljava/lang/StringBuilder;
    const-string v2, "ListId=?"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/google/android/music/store/Filters;->addFilteringCondition(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 557
    const-wide/16 v13, 0x0

    .line 558
    .local v13, lastGroupId:J
    const/4 v15, 0x0

    .line 560
    .local v15, lastGroupPosition:I
    const-string v3, "LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "ServerPosition"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "count(1)"

    aput-object v5, v4, v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "ServerPosition"

    const/4 v8, 0x0

    const-string v9, "ServerOrder DESC, ClientPosition DESC"

    const-string v10, "1"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 568
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_63

    .line 570
    :try_start_42
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 571
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 572
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 574
    .local v16, lastGroupSize:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/music/store/PlayList;->getFilteredItemCount(Landroid/database/sqlite/SQLiteDatabase;JI)I
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_71

    move-result v17

    .line 575
    .local v17, listSize:I
    sub-int v15, v17, v16

    .line 578
    .end local v16           #lastGroupSize:I
    .end local v17           #listSize:I
    :cond_60
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 581
    :cond_63
    new-instance v2, Landroid/util/Pair;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 578
    :catchall_71
    move-exception v2

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2
.end method

.method getListId()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    return-wide v0
.end method

.method notifyChange(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "resolver"

    .prologue
    .line 629
    iget-wide v0, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 631
    return-void
.end method

.method queue(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;JZ)Lcom/google/android/music/store/PlayQueueAddResult;
    .registers 32
    .parameter "db"
    .parameter "musicCursor"
    .parameter "currentSongListItemId"
    .parameter "shuffle"

    .prologue
    .line 129
    const/16 v25, 0x0

    .line 131
    .local v25, queued:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 132
    .local v7, desiredCount:I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/store/PlayQueue;->countItems(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v8

    .line 134
    .local v8, queueSize:I
    const/16 v16, -0x1

    .line 135
    .local v16, position:I
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_3b

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/store/PlayQueue;->getItemPosition(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v16

    .line 137
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_3b

    .line 138
    const-string v4, "MusicStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find position of the item in the queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3b
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_74

    .line 144
    const v6, 0x7fffffff

    const/16 v9, 0x3e8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/store/PlayQueue;->makeRoom(Landroid/database/sqlite/SQLiteDatabase;IIII)I

    move-result v24

    .line 150
    .local v24, purged:I
    :goto_4d
    sub-int v8, v8, v24

    .line 152
    const-wide/16 v11, 0x0

    .line 153
    .local v11, groupId:J
    rsub-int v4, v8, 0x3e8

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 154
    .local v14, toAdd:I
    if-lez v14, :cond_6c

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/store/PlayQueue;->createPlayGroup(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11

    .line 156
    if-eqz p5, :cond_94

    .line 157
    if-lez v8, :cond_83

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    move v15, v8

    .line 158
    invoke-direct/range {v9 .. v16}, Lcom/google/android/music/store/PlayQueue;->sprinkleIntoQueue(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;III)I

    move-result v25

    .line 168
    :cond_6c
    :goto_6c
    new-instance v4, Lcom/google/android/music/store/PlayQueueAddResult;

    move/from16 v0, v25

    invoke-direct {v4, v0, v7}, Lcom/google/android/music/store/PlayQueueAddResult;-><init>(II)V

    return-object v4

    .line 147
    .end local v11           #groupId:J
    .end local v14           #toAdd:I
    .end local v24           #purged:I
    :cond_74
    const/16 v9, 0x3e8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v16

    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/store/PlayQueue;->makeRoom(Landroid/database/sqlite/SQLiteDatabase;IIII)I

    move-result v24

    .line 148
    .restart local v24       #purged:I
    sub-int v16, v16, v24

    goto :goto_4d

    .line 161
    .restart local v11       #groupId:J
    .restart local v14       #toAdd:I
    :cond_83
    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v19, v11

    move-object/from16 v21, p2

    move/from16 v23, v14

    invoke-direct/range {v17 .. v23}, Lcom/google/android/music/store/PlayQueue;->shuffleAndAppendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;II)I

    move-result v25

    goto :goto_6c

    :cond_94
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    .line 164
    invoke-direct/range {v9 .. v14}, Lcom/google/android/music/store/PlayQueue;->appendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;I)I

    move-result v25

    goto :goto_6c
.end method

.method queueAndMovePlayPosition(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;ZZIZI)Lcom/google/android/music/store/PlayQueueInsertResult;
    .registers 37
    .parameter "db"
    .parameter "musicCursor"
    .parameter "addMax"
    .parameter "songSelected"
    .parameter "selectedSongPosition"
    .parameter "shuffle"
    .parameter "filterIndex"

    .prologue
    .line 220
    if-nez p4, :cond_4

    .line 221
    const/16 p5, 0x0

    .line 223
    :cond_4
    const/16 v18, 0x0

    .line 224
    .local v18, queued:I
    const-wide/16 v11, 0x0

    .line 225
    .local v11, groupId:J
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 226
    .local v22, desiredCount:I
    const/16 v27, 0x0

    .line 227
    .local v27, startPosition:I
    if-eqz p3, :cond_76

    const/16 v8, 0x3e8

    .line 228
    .local v8, maxQueueSize:I
    :goto_12
    move/from16 v0, v22

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 230
    .local v6, toAppend:I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/store/PlayQueue;->countItems(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v7

    .line 231
    .local v7, queueSize:I
    add-int v3, v6, v7

    if-le v3, v8, :cond_2d

    .line 232
    const v5, 0x7fffffff

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/music/store/PlayQueue;->makeRoom(Landroid/database/sqlite/SQLiteDatabase;IIII)I

    move-result v25

    .line 233
    .local v25, purged:I
    sub-int v7, v7, v25

    .line 236
    .end local v25           #purged:I
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/PlayQueue;->countFilteredItems(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v23

    .line 239
    .local v23, filteredGroupPosition:I
    add-int v24, v23, p5

    .line 240
    .local v24, filteredPlaybackPositionInQueue:I
    move/from16 v0, v22

    if-le v0, v8, :cond_4b

    .line 243
    move/from16 v27, p5

    .line 244
    const/16 v24, 0x0

    .line 247
    sub-int v3, v22, p5

    sub-int v28, v8, v3

    .line 248
    .local v28, top:I
    if-lez v28, :cond_4b

    .line 249
    sub-int v27, v27, v28

    .line 250
    add-int v24, v24, v28

    .line 254
    .end local v28           #top:I
    :cond_4b
    if-lez v6, :cond_6a

    .line 257
    add-int/lit8 v3, v27, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_59

    if-nez v27, :cond_6a

    .line 259
    :cond_59
    invoke-static/range {p1 .. p1}, Lcom/google/android/music/store/PlayQueue;->createPlayGroup(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11

    .line 260
    if-nez p6, :cond_79

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    move v14, v6

    .line 262
    invoke-direct/range {v9 .. v14}, Lcom/google/android/music/store/PlayQueue;->appendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;I)I

    move-result v18

    .line 284
    :cond_6a
    :goto_6a
    new-instance v15, Lcom/google/android/music/store/PlayQueueInsertResult;

    move-wide/from16 v16, v11

    move/from16 v19, v23

    move/from16 v20, v24

    invoke-direct/range {v15 .. v20}, Lcom/google/android/music/store/PlayQueueInsertResult;-><init>(JIII)V

    return-object v15

    .line 227
    .end local v6           #toAppend:I
    .end local v7           #queueSize:I
    .end local v8           #maxQueueSize:I
    .end local v23           #filteredGroupPosition:I
    .end local v24           #filteredPlaybackPositionInQueue:I
    :cond_76
    const/16 v8, 0x320

    goto :goto_12

    .line 265
    .restart local v6       #toAppend:I
    .restart local v7       #queueSize:I
    .restart local v8       #maxQueueSize:I
    .restart local v23       #filteredGroupPosition:I
    .restart local v24       #filteredPlaybackPositionInQueue:I
    :cond_79
    if-nez p4, :cond_87

    .line 267
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/google/android/music/store/PlayQueue;->shuffleAndAppendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;II)I

    goto :goto_6a

    .line 270
    :cond_87
    sub-int v3, p5, v27

    add-int/lit8 v14, v3, 0x1

    .local v14, nonShuffled:I
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    .line 271
    invoke-direct/range {v9 .. v14}, Lcom/google/android/music/store/PlayQueue;->appendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;I)I

    move-result v26

    .line 274
    .end local v18           #queued:I
    .local v26, queued:I
    sub-int v21, v6, v14

    .line 275
    .local v21, shuffled:I
    if-lez v21, :cond_a6

    .line 276
    add-int/lit8 v20, p5, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-wide/from16 v17, v11

    move-object/from16 v19, p2

    invoke-direct/range {v15 .. v21}, Lcom/google/android/music/store/PlayQueue;->shuffleAndAppendToPlaylist(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;II)I

    :cond_a6
    move/from16 v18, v26

    .end local v26           #queued:I
    .restart local v18       #queued:I
    goto :goto_6a
.end method

.method removeGroup(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 10
    .parameter "db"
    .parameter "groupId"

    .prologue
    .line 609
    const-string v0, "LISTITEMS"

    const-string v1, "ListId=? AND ServerPosition=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method removeOrphanGroups(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 8
    .parameter "db"

    .prologue
    .line 594
    const-string v0, "PLAYQ_GROUPS"

    const-string v1, "Id NOT IN (SELECT distinct ServerPosition FROM LISTITEMS WHERE LISTITEMS.ListId=?)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method removeOrphanItems(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 6
    .parameter "db"

    .prologue
    .line 615
    iget-wide v1, p0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {p1, v1, v2}, Lcom/google/android/music/store/PlayList;->removeOrphanedItems(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    .line 616
    .local v0, removed:I
    if-lez v0, :cond_2a

    .line 617
    sget-boolean v1, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v1, :cond_2a

    .line 618
    const-string v1, "MusicStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orphan items from the play queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_2a
    return v0
.end method

.method shuffle(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 29
    .parameter "db"
    .parameter "startingPosition"

    .prologue
    .line 445
    if-gez p2, :cond_4

    .line 446
    const/16 p2, 0x0

    .line 448
    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/PlayList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v18

    .line 449
    .local v18, queueSize:I
    sub-int v13, v18, p2

    .line 450
    .local v13, howManyToShuffle:I
    const/4 v2, 0x1

    if-le v13, v2, :cond_10d

    .line 456
    new-array v15, v13, [J

    .line 457
    .local v15, ids:[J
    new-array v0, v13, [J

    move-object/from16 v17, v0

    .line 458
    .local v17, positions:[J
    const-string v3, "LISTITEMS"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "Id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "ClientPosition"

    aput-object v5, v4, v2

    const-string v5, "ListId=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/music/store/PlayQueue;->mPlayListId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "ServerOrder, ClientPosition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 465
    .local v12, c:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 467
    .local v16, itemCount:I
    if-eqz v12, :cond_7c

    .line 469
    :goto_65
    :try_start_65
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 470
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v15, v16

    .line 471
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v17, v16
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_b2

    .line 472
    add-int/lit8 v16, v16, 0x1

    goto :goto_65

    .line 476
    :cond_7c
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 479
    move/from16 v0, v16

    if-eq v0, v13, :cond_91

    .line 480
    const-string v2, "MusicStore"

    const-string v3, "Unexpected number of items when shuffling. "

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    move/from16 v13, v16

    .line 486
    :cond_91
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    .line 487
    .local v19, rand:Ljava/util/Random;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_97
    move/from16 v0, v16

    if-ge v14, v0, :cond_b7

    .line 488
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    .line 489
    .local v23, swapPosition:I
    move/from16 v0, v23

    if-eq v0, v14, :cond_af

    .line 490
    aget-wide v20, v17, v14

    .line 491
    .local v20, saved:J
    aget-wide v2, v17, v23

    aput-wide v2, v17, v14

    .line 492
    aput-wide v20, v17, v23

    .line 487
    .end local v20           #saved:J
    :cond_af
    add-int/lit8 v14, v14, 0x1

    goto :goto_97

    .line 476
    .end local v14           #i:I
    .end local v19           #rand:Ljava/util/Random;
    .end local v23           #swapPosition:I
    :catchall_b2
    move-exception v2

    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    .line 496
    .restart local v14       #i:I
    .restart local v19       #rand:Ljava/util/Random;
    :cond_b7
    new-instance v25, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 497
    .local v25, values:Landroid/content/ContentValues;
    const-string v22, "Id=?"

    .line 498
    .local v22, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    .line 500
    .local v11, args:[Ljava/lang/String;
    const/4 v14, 0x0

    :goto_c5
    move/from16 v0, v16

    if-ge v14, v0, :cond_10d

    .line 501
    const-string v2, "ClientPosition"

    aget-wide v3, v17, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 502
    const/4 v2, 0x0

    aget-wide v3, v15, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 503
    const-string v2, "LISTITEMS"

    const-string v3, "Id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 504
    .local v24, updated:I
    const/4 v2, 0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_10a

    .line 505
    const-string v2, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected update result when shuffling queue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_10a
    add-int/lit8 v14, v14, 0x1

    goto :goto_c5

    .line 509
    .end local v11           #args:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v14           #i:I
    .end local v15           #ids:[J
    .end local v16           #itemCount:I
    .end local v17           #positions:[J
    .end local v19           #rand:Ljava/util/Random;
    .end local v22           #selection:Ljava/lang/String;
    .end local v24           #updated:I
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_10d
    return-void
.end method
