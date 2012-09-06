.class Lcom/google/android/music/store/Store$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mDBPath:Ljava/lang/String;

.field private mResetDerivedAudioData:Z

.field private mResetMediaStoreImport:Z

.field private mResetRemoteContent:Z

.field final synthetic this$0:Lcom/google/android/music/store/Store;


# direct methods
.method constructor <init>(Lcom/google/android/music/store/Store;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2110
    iput-object p1, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    .line 2111
    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "music.db"

    const/16 v2, 0x2c

    invoke-direct {p0, v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2095
    iput-boolean v3, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    .line 2100
    iput-boolean v3, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetRemoteContent:Z

    .line 2106
    iput-boolean v3, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetDerivedAudioData:Z

    .line 2108
    iput-object v4, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;

    .line 2112
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/store/Store$DatabaseHelper;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;

    return-object v0
.end method

.method private configureDatabaseConnection(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter

    .prologue
    .line 2119
    :try_start_0
    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "disableWriteAheadLogging"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a} :catch_2d

    move-result-object v0

    .line 2122
    const/4 v1, 0x0

    :try_start_c
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    sget-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v0, :cond_1c

    .line 2124
    const-string v0, "MusicStore"

    const-string v1, "Disabled WAL"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_1c} :catch_2d

    .line 2133
    :cond_1c
    :goto_1c
    return-void

    .line 2126
    :catch_1d
    move-exception v0

    .line 2127
    :try_start_1e
    const-string v1, "MusicStore"

    const-string v2, "Fail to invoke disableWriteAheadLogging"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to disable write ahead logging"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_2d} :catch_2d

    .line 2130
    :catch_2d
    move-exception v0

    goto :goto_1c
.end method

.method private postImportProcessing(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 2444
    iget-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    if-eqz v0, :cond_16

    .line 2445
    #calls: Lcom/google/android/music/store/Store;->deleteLocalMusicAndPlaylists(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/google/android/music/store/Store;->access$400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2450
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$300(Lcom/google/android/music/store/Store;)Lcom/google/android/music/store/MediaStoreImporter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->invalidateMediaStoreImport(Landroid/content/Context;)V

    .line 2453
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetRemoteContent:Z

    if-eqz v0, :cond_31

    .line 2454
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {v0, p1}, Lcom/google/android/music/store/Store;->access$500(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2458
    const/4 v0, 0x0

    const-string v1, "com.google.android.music.MusicContent"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2463
    :cond_31
    iget-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetDerivedAudioData:Z

    if-eqz v0, :cond_38

    .line 2464
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeDerivedMusicData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2466
    :cond_38
    return-void
.end method

.method private resetTrackSyncState(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 21
    .parameter "db"

    .prologue
    .line 2470
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v4, v2

    .line 2475
    .local v4, syncStateResetProjection:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 2477
    .local v16, syncStateProjectionIdIndex:I
    const/4 v15, 0x1

    .line 2481
    .local v15, syncStateProjectionDataIndex:I
    const-string v3, "_sync_state"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2488
    .local v11, c:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 2489
    .local v14, originalSyncState:Lcom/google/android/music/sync/google/ClientSyncState;
    const/16 v17, 0x0

    .line 2491
    .local v17, updatedSyncState:Lcom/google/android/music/sync/google/ClientSyncState;
    if-eqz v11, :cond_28

    :try_start_22
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_bf
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_22 .. :try_end_25} :catch_90

    move-result v2

    if-nez v2, :cond_2c

    .line 2521
    :cond_28
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2523
    :goto_2b
    return-void

    .line 2494
    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2495
    .local v13, id:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 2496
    .local v10, blob:[B
    invoke-static {v10}, Lcom/google/android/music/sync/google/ClientSyncState;->parseFrom([B)Lcom/google/android/music/sync/google/ClientSyncState;

    move-result-object v14

    .line 2497
    if-eqz v14, :cond_ba

    .line 2500
    invoke-static {v14}, Lcom/google/android/music/sync/google/ClientSyncState;->newBuilder(Lcom/google/android/music/sync/google/ClientSyncState;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v2

    const-wide/16 v5, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteTrackVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setEtagTrack(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->build()Lcom/google/android/music/sync/google/ClientSyncState;

    move-result-object v17

    .line 2506
    new-instance v18, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2507
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/sync/google/ClientSyncState;->toBytes()[B

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2508
    const-string v2, "_sync_state"

    const-string v3, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_ba

    .line 2512
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t update record in _sync_state table for ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_90
    .catchall {:try_start_2d .. :try_end_90} :catchall_bf
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_2d .. :try_end_90} :catch_90

    .line 2516
    .end local v10           #blob:[B
    .end local v13           #id:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_90
    move-exception v12

    .line 2517
    .local v12, e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_91
    const-string v2, "MusicStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t update client sync state. original: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " updated: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_91 .. :try_end_b5} :catchall_bf

    .line 2521
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_2b

    .end local v12           #e:Lcom/google/android/music/sync/common/ProviderException;
    .restart local v10       #blob:[B
    .restart local v13       #id:Ljava/lang/String;
    :cond_ba
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_2b

    .end local v10           #blob:[B
    .end local v13           #id:Ljava/lang/String;
    :catchall_bf
    move-exception v2

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2
.end method

.method private updatefullPathToRelativePathAndStorageType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)V
    .registers 12
    .parameter "db"
    .parameter "tableName"
    .parameter "fullPathColumnName"
    .parameter "storageTypeColumnName"
    .parameter "internalStorageTypeValue"
    .parameter "externalStorageTypeValue"
    .parameter "internalCache"

    .prologue
    .line 2804
    const-string v1, "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHIJKMNOPQRSTUVWXYZ.-~`@#$%^&*()_+=;,<>? "

    invoke-static {v1}, Lcom/google/android/music/utils/DbUtils;->quoteStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2811
    .local v0, filenameChars:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "substr("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rtrim("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") + 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x21

    invoke-static {v2, v3}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' ESCAPE \'!\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ELSE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT NULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2835
    return-void
.end method

.method private upgradeDerivedMusicData(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 2527
    const/4 v10, 0x0

    .line 2528
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2531
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_32

    .line 2532
    :try_start_11
    new-instance v9, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v9}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 2533
    .local v9, file:Lcom/google/android/music/store/MusicFile;
    invoke-static {p1}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 2534
    :goto_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2535
    invoke-virtual {v9, v8}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 2536
    invoke-virtual {v9}, Lcom/google/android/music/store/MusicFile;->resetDerivedFields()V

    .line 2537
    invoke-virtual {v9, v10, p1}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    goto :goto_1a

    .line 2541
    .end local v9           #file:Lcom/google/android/music/store/MusicFile;
    :catchall_2a
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2542
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    throw v0

    .line 2541
    :cond_32
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2542
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 2544
    return-void
.end method

.method private upgradeFrom25(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14
    .parameter "db"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2547
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN LocalCopySize INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2551
    const-string v1, "MUSIC"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "Id"

    aput-object v0, v2, v6

    const-string v0, "LocalCopyPath"

    aput-object v0, v2, v7

    const-string v3, "LocalCopyType in (?,?) AND LocalCopyPath IS NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2559
    .local v8, c:Landroid/database/Cursor;
    :try_start_30
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 2560
    :goto_33
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 2561
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2562
    .local v10, filename:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2563
    .local v9, f:Ljava/io/File;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2564
    .local v11, values:Landroid/content/ContentValues;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 2565
    const-string v0, "LocalCopySize"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2566
    const-string v0, "LocalCopyType"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2572
    :goto_66
    const-string v0, "MUSIC"

    const-string v1, "Id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_30 .. :try_end_7c} :catchall_7d

    goto :goto_33

    .line 2576
    .end local v9           #f:Ljava/io/File;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_7d
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 2568
    .restart local v9       #f:Ljava/io/File;
    .restart local v10       #filename:Ljava/lang/String;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_82
    :try_start_82
    const-string v0, "LocalCopyType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2570
    const-string v0, "LocalCopySize"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_96
    .catchall {:try_start_82 .. :try_end_96} :catchall_7d

    goto :goto_66

    .line 2576
    .end local v9           #f:Ljava/io/File;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_97
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 2578
    return-void
.end method

.method private upgradeFrom26(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetRemoteContent:Z

    .line 2585
    const-string v0, "DROP INDEX LISTITEMS_ORDER_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2587
    const-string v0, "ALTER TABLE LISTITEMS ADD COLUMN ServerOrder TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2591
    const-string v0, "CREATE INDEX LISTITEMS_ORDER_INDEX ON LISTITEMS (ListId, ServerOrder, ClientPosition);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2596
    return-void
.end method

.method private upgradeFrom27(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2599
    const-string v0, "ALTER TABLE LISTITEMS ADD COLUMN ClientId TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2601
    return-void
.end method

.method private upgradeFrom28(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetDerivedAudioData:Z

    .line 2607
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN TrackType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2610
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN LocalCopyBitrate INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2612
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN ArtistOrigin INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2615
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN ArtistId INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2617
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN CanonicalArtist TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2620
    const-string v0, "create index MUSIC_ARTISTID_INDEX on MUSIC(ArtistId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2624
    const-string v0, "ALTER TABLE LISTS ADD COLUMN ListType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2627
    const-string v0, "ALTER TABLE LISTS ADD COLUMN ListArtworkLocation TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2629
    return-void
.end method

.method private upgradeFrom29(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2635
    const-string v0, "DROP INDEX MUSIC_CANONICAL_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2636
    const-string v0, "create index MUSIC_TRACKS_BY_NAME_SORT_INDEX on MUSIC(CanonicalName,SongId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2643
    const-string v0, "DROP INDEX MUSIC_CANONICAL_ALBUM_CANONICAL_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2644
    const-string v0, "create index MUSIC_TRACKS_BY_ALBUM_SORT_INDEX on MUSIC(CanonicalAlbum, DiscNumber, TrackNumber, CanonicalName,SongId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2652
    const-string v0, "DROP INDEX MUSIC_CANONICAL_ARTIST_CANONICAL_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2653
    const-string v0, "create index MUSIC_TRACKS_BY_ARTIST_SORT_INDEX on MUSIC(CanonicalArtist, CanonicalName,SongId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2660
    const-string v0, "create index LIST_SYNC_INDEX on LISTS(SourceAccount,SourceId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2663
    const-string v0, "create index LISTITEMS_SYNC_INDEX on LISTS(SourceAccount,SourceId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2666
    return-void
.end method

.method private upgradeFrom30(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    .line 2675
    const-string v0, "DROP INDEX LISTITEMS_SYNC_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2676
    const-string v0, "create index LISTITEMS_SYNC_INDEX on LISTITEMS(SourceAccount,SourceId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2679
    return-void
.end method

.method private upgradeFrom31(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2683
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN Rating INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2686
    return-void
.end method

.method private upgradeFrom32(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2689
    const-string v0, "CREATE TABLE RINGTONES(Id INTEGER PRIMARY KEY AUTOINCREMENT, MusicId INTEGER UNIQUE ON CONFLICT REPLACE, RequestDate INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2694
    return-void
.end method

.method private upgradeFrom33(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 2700
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->resetTrackSyncState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2701
    return-void
.end method

.method private upgradeFrom34(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2707
    const-string v0, "CREATE INDEX MUSIC_RATING ON MUSIC (Rating)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2711
    const-string v0, "CREATE INDEX MUSIC_FILE_DATE ON MUSIC (FileDate)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2715
    const-string v0, "CREATE INDEX MUSIC_TRACK_TYPE ON MUSIC (TrackType)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2717
    return-void
.end method

.method private upgradeFrom35(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2721
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN StoreId TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2723
    return-void
.end method

.method private upgradeFrom36(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2726
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN StoreAlbumId TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2728
    return-void
.end method

.method private upgradeFrom37(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2732
    const-string v0, "ALTER TABLE RECENT ADD COLUMN RecentReason INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2744
    const-string v0, "UPDATE RECENT SET RecentReason = CASE (SELECT TrackType FROM MUSIC WHERE AlbumId=RecentAlbumId AND FileDate=ItemDate LIMIT 1) WHEN 0 THEN 3 WHEN 2 THEN 3 WHEN 1 THEN 2 ELSE 1 END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2759
    return-void
.end method

.method private upgradeFrom38(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2763
    const-string v0, "CREATE TABLE SUGGESTED_SEEDS(Id INTEGER PRIMARY KEY AUTOINCREMENT, SeedSourceAccount INTEGER NOT NULL, SeedTrackSourceId TEXT NOT NULL, SeedListId INTEGER, UNIQUE( SeedSourceAccount,SeedTrackSourceId) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2772
    return-void
.end method

.method private upgradeFrom39(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "db"

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 2839
    .local v7, internalMusicCache:Ljava/io/File;
    if-nez v7, :cond_14

    .line 2840
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to find the internal cache location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2844
    :cond_14
    const-string v0, "ALTER TABLE MUSIC ADD COLUMN LocalCopyStorageType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2848
    const-string v2, "MUSIC"

    const-string v3, "LocalCopyPath"

    const-string v4, "LocalCopyStorageType"

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/store/Store$DatabaseHelper;->updatefullPathToRelativePathAndStorageType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)V

    .line 2853
    return-void
.end method

.method private upgradeFrom40(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2857
    const-string v0, "CREATE TABLE PLAYQ_GROUPS(Id INTEGER PRIMARY KEY AUTOINCREMENT, Time INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2861
    return-void
.end method

.method private upgradeFrom41(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "db"

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 2865
    .local v7, internalArtworkCache:Ljava/io/File;
    if-nez v7, :cond_14

    .line 2866
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to find the internal cache location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2870
    :cond_14
    const-string v0, "ALTER TABLE ARTWORK ADD COLUMN LocalLocationStorageType INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2874
    const-string v2, "ARTWORK"

    const-string v3, "LocalLocation"

    const-string v4, "LocalLocationStorageType"

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/store/Store$DatabaseHelper;->updatefullPathToRelativePathAndStorageType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)V

    .line 2878
    return-void
.end method

.method private upgradeFrom42(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2881
    const-string v0, "ALTER TABLE RECENT ADD COLUMN Priority INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2883
    return-void
.end method

.method private upgradeFrom43(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2886
    const-string v0, "CREATE TABLE MUSIC_TOMBSTONES(Id INTEGER PRIMARY KEY AUTOINCREMENT, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2892
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 2148
    sget-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "MusicStore"

    const-string v1, "Database created"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;

    .line 2150
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$200(Lcom/google/android/music/store/Store;)Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2151
    const/4 v0, -0x1

    const/16 v1, 0x2c

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/music/store/Store$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2152
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mMediaStoreImporter:Lcom/google/android/music/store/MediaStoreImporter;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$300(Lcom/google/android/music/store/Store;)Lcom/google/android/music/store/MediaStoreImporter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->invalidateMediaStoreImport(Landroid/content/Context;)V

    .line 2156
    new-instance v0, Lcom/google/android/music/store/Store$DowngradeException;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/store/Store$DowngradeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Database opened on main thread"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 2138
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->configureDatabaseConnection(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2139
    invoke-static {p1}, Lcom/google/android/music/store/PlayQueue;->initQueue(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/music/store/PlayQueue;

    .line 2140
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2141
    sget-boolean v0, Lcom/google/android/music/store/Store;->LOGV:Z

    if-eqz v0, :cond_1f

    const-string v0, "MusicStore"

    const-string v1, "Database opened"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :cond_1f
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 15
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v10, 0x2c

    .line 2161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mDBPath:Ljava/lang/String;

    .line 2162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2163
    .local v0, startTime:J
    int-to-long v2, p2

    .line 2165
    .local v2, startVersion:J
    :try_start_d
    iget-object v6, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/music/store/Store;->access$100(Lcom/google/android/music/store/Store;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "Database upgraded on main thread"

    invoke-static {v6, v7}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 2167
    const/16 v6, 0x19

    if-ge p2, v6, :cond_d9

    .line 2168
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->mResetMediaStoreImport:Z

    .line 2171
    const-string v6, "DROP TABLE IF EXISTS XFILESMUSIC"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2172
    const-string v6, "DROP TABLE IF EXISTS XFILES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2173
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_SONGID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2174
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_ALBUMID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2175
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_ALBUMARTISTID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2176
    const-string v6, "DROP INDEX IF EXISTS XFILESMUSIC_GENREID_INDEX"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2177
    const-string v6, "DROP TABLE IF EXISTS LIBRARIES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2184
    const-string v6, "DROP TABLE IF EXISTS MUSIC"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2185
    const-string v6, "CREATE TABLE MUSIC(Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, SourceAccount INTEGER NOT NULL, SourceId TEXT NOT NULL, SourcePath TEXT, Size INTEGER NOT NULL, FileType INTEGER NOT NULL, FileDate INTEGER NOT NULL, LocalCopyPath TEXT, LocalCopyType INTEGER NOT NULL, PlayCount INTEGER NOT NULL DEFAULT 0, LastPlayDate INTEGER NOT NULL DEFAULT 0, Title TEXT NOT NULL, Album TEXT, Artist TEXT, AlbumArtist TEXT, AlbumArtistOrigin INTEGER, Composer TEXT , Genre TEXT, Year INTEGER, Duration INTEGER, TrackCount INTEGER, TrackNumber INTEGER, DiscCount INTEGER, DiscNumber INTEGER, Compilation INTEGER, BitRate INTEGER, AlbumArtLocation TEXT, SongId INTEGER NOT NULL, AlbumId INTEGER NOT NULL DEFAULT 0, AlbumArtistId INTEGER NOT NULL DEFAULT 0, GenreId INTEGER NOT NULL DEFAULT 0, CanonicalName TEXT NOT NULL, CanonicalAlbum TEXT, CanonicalAlbumArtist TEXT, CanonicalGenre TEXT, _sync_dirty INTEGER NOT NULL DEFAULT 0, _sync_version TEXT, UNIQUE( SourceAccount,SourceId) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2227
    const-string v6, "create index MUSIC_SONGID_INDEX on MUSIC(SongId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2229
    const-string v6, "create index MUSIC_ALBUMID_INDEX on MUSIC(AlbumId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2231
    const-string v6, "create index MUSIC_ALBUMARTISTID_INDEX on MUSIC(AlbumArtistId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2233
    const-string v6, "create index MUSIC_GENREID_INDEX on MUSIC(GenreId)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2237
    const-string v6, "create index MUSIC_CANONICAL_NAME_INDEX on MUSIC(CanonicalName)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2239
    const-string v6, "create index MUSIC_CANONICAL_ALBUM_CANONICAL_NAME_INDEX on MUSIC(CanonicalAlbum, CanonicalName)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2242
    const-string v6, "create index MUSIC_CANONICAL_ARTIST_CANONICAL_NAME_INDEX on MUSIC(CanonicalAlbumArtist, CanonicalName)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2246
    const-string v6, "DROP TABLE IF EXISTS LISTS"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2247
    const-string v6, "CREATE TABLE LISTS(Id INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT NOT NULL, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT, _sync_dirty INTEGER NOT NULL DEFAULT 0, MediaStoreId INTEGER);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2257
    const-string v6, "DROP TABLE IF EXISTS LIST_TOMBSTONES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2258
    const-string v6, "CREATE TABLE LIST_TOMBSTONES(Id INTEGER PRIMARY KEY AUTOINCREMENT, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2265
    const-string v6, "DROP TABLE IF EXISTS LISTITEMS"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2266
    const-string v6, "CREATE TABLE LISTITEMS(Id INTEGER PRIMARY KEY AUTOINCREMENT, ListId INTEGER NOT NULL REFERENCES LISTS, MusicSourceAccount INTEGER NOT NULL, MusicSourceId TEXT NOT NULL, ClientPosition INTEGER NOT NULL, ServerPosition INTEGER NOT NULL DEFAULT 0, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT, _sync_dirty INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2282
    const-string v6, "CREATE INDEX LISTITEMS_ORDER_INDEX ON LISTITEMS (ListId, ServerPosition, ClientPosition);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2288
    const-string v6, "DROP TABLE IF EXISTS LISTITEM_TOMBSTONES"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2289
    const-string v6, "CREATE TABLE LISTITEM_TOMBSTONES(Id INTEGER PRIMARY KEY AUTOINCREMENT, SourceAccount INTEGER, SourceId TEXT, _sync_version TEXT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2296
    const-string v6, "DROP TABLE IF EXISTS KEEPON"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2297
    const-string v6, "CREATE TABLE KEEPON(KeepOnId INTEGER PRIMARY KEY AUTOINCREMENT, ListId INTEGER UNIQUE, AlbumId INTEGER UNIQUE, ArtistId INTEGER UNIQUE, DateAdded INTEGER );"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2305
    const-string v6, "DROP TABLE IF EXISTS ARTWORK"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2308
    const-string v6, "CREATE TABLE ARTWORK(AlbumId INTEGER PRIMARY KEY,LocalLocation STRING)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2312
    const-string v6, "DROP TABLE IF EXISTS SHOULDKEEPON"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2313
    const-string v6, "CREATE TABLE SHOULDKEEPON(\nMusicId INTEGER,\nKeepOnId INTEGER,\nFOREIGN KEY (KeepOnId) REFERENCES KEEPON (KeepOnId) ON DELETE CASCADE,\nFOREIGN KEY (MusicId) REFERENCES MUSIC (Id) ON DELETE CASCADE,\nUNIQUE (MusicId, KeepOnId) ON CONFLICT IGNORE)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2322
    const-string v6, "CREATE INDEX SHOULDKEEPON_MusicId ON SHOULDKEEPON (MusicId);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2326
    const-string v6, "DROP TABLE IF EXISTS RECENT"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2327
    const-string v6, "CREATE TABLE RECENT(RecentId INTEGER PRIMARY KEY AUTOINCREMENT, ItemDate INTEGER, RecentListId INTEGER UNIQUE ON CONFLICT REPLACE, RecentAlbumId INTEGER UNIQUE ON CONFLICT REPLACE);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2334
    const-string v6, "DROP TABLE IF EXISTS _sync_state"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2335
    iget-object v6, p0, Lcom/google/android/music/store/Store$DatabaseHelper;->this$0:Lcom/google/android/music/store/Store;

    #getter for: Lcom/google/android/music/store/Store;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;
    invoke-static {v6}, Lcom/google/android/music/store/Store;->access$200(Lcom/google/android/music/store/Store;)Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2336
    const/16 p2, 0x19

    .line 2339
    :cond_d9
    const/16 v6, 0x1a

    if-ge p2, v6, :cond_e2

    .line 2340
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom25(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2341
    const/16 p2, 0x1a

    .line 2344
    :cond_e2
    const/16 v6, 0x1b

    if-ge p2, v6, :cond_eb

    .line 2345
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom26(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2346
    const/16 p2, 0x1a

    .line 2349
    :cond_eb
    const/16 v6, 0x1c

    if-ge p2, v6, :cond_f4

    .line 2350
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom27(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2351
    const/16 p2, 0x1b

    .line 2354
    :cond_f4
    const/16 v6, 0x1d

    if-ge p2, v6, :cond_fd

    .line 2355
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom28(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2356
    const/16 p2, 0x1c

    .line 2359
    :cond_fd
    const/16 v6, 0x1e

    if-ge p2, v6, :cond_106

    .line 2360
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom29(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2361
    const/16 p2, 0x1d

    .line 2364
    :cond_106
    const/16 v6, 0x1f

    if-ge p2, v6, :cond_10f

    .line 2365
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom30(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2366
    const/16 p2, 0x1e

    .line 2369
    :cond_10f
    const/16 v6, 0x20

    if-ge p2, v6, :cond_118

    .line 2370
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom31(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2371
    const/16 p2, 0x1f

    .line 2374
    :cond_118
    const/16 v6, 0x21

    if-ge p2, v6, :cond_121

    .line 2375
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom32(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2376
    const/16 p2, 0x20

    .line 2379
    :cond_121
    const/16 v6, 0x22

    if-ge p2, v6, :cond_12a

    .line 2380
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom33(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2381
    const/16 p2, 0x21

    .line 2384
    :cond_12a
    const/16 v6, 0x23

    if-ge p2, v6, :cond_133

    .line 2385
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom34(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2386
    const/16 p2, 0x22

    .line 2389
    :cond_133
    const/16 v6, 0x24

    if-ge p2, v6, :cond_13c

    .line 2390
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom35(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2391
    const/16 p2, 0x23

    .line 2394
    :cond_13c
    const/16 v6, 0x25

    if-ge p2, v6, :cond_145

    .line 2395
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom36(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2396
    const/16 p2, 0x24

    .line 2399
    :cond_145
    const/16 v6, 0x26

    if-ge p2, v6, :cond_14e

    .line 2400
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom37(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2401
    const/16 p2, 0x25

    .line 2404
    :cond_14e
    const/16 v6, 0x27

    if-ge p2, v6, :cond_157

    .line 2405
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom38(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2406
    const/16 p2, 0x26

    .line 2409
    :cond_157
    const/16 v6, 0x28

    if-ge p2, v6, :cond_160

    .line 2410
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2411
    const/16 p2, 0x27

    .line 2414
    :cond_160
    const/16 v6, 0x29

    if-ge p2, v6, :cond_169

    .line 2415
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2416
    const/16 p2, 0x28

    .line 2419
    :cond_169
    const/16 v6, 0x2a

    if-ge p2, v6, :cond_172

    .line 2420
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2421
    const/16 p2, 0x29

    .line 2424
    :cond_172
    const/16 v6, 0x2b

    if-ge p2, v6, :cond_17b

    .line 2425
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2426
    const/16 p2, 0x2a

    .line 2429
    :cond_17b
    if-ge p2, v10, :cond_182

    .line 2430
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->upgradeFrom43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2431
    const/16 p2, 0x2b

    .line 2433
    :cond_182
    invoke-direct {p0, p1}, Lcom/google/android/music/store/Store$DatabaseHelper;->postImportProcessing(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_185
    .catchall {:try_start_d .. :try_end_185} :catchall_1be

    .line 2436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 2437
    .local v4, upgradeTime:J
    const-string v6, "MusicStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upgrade from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    return-void

    .line 2436
    .end local v4           #upgradeTime:J
    :catchall_1be
    move-exception v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v4, v7, v0

    .line 2437
    .restart local v4       #upgradeTime:J
    const-string v7, "MusicStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrade from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    throw v6
.end method
