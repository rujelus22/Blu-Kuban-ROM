.class public Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;
.super Ljava/lang/Object;
.source "smlDbSqlSyncItemProfile.java"


# static fields
.field private static SyncItemDbSql:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbSqlSyncItemProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "Db"

    .prologue
    .line 30
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS sync_item_profile"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 36
    :goto_5
    return-void

    .line 32
    :catch_6
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static smlDbSqlSyncItemProfileExistsRow(J)Z
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 259
    const/4 v10, 0x0

    .line 261
    .local v10, bExist:Z
    const/16 v0, 0x1f

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "sync"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v1, "last_sync_type"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "sync_type"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "server_id"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "real_sync_type"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "sync_db_result"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "is_device_full"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "is_server_full"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "s2p_add_item"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "s2p_replace_item"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "s2p_delete_item"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "s2p_total_item"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "p2s_add_item"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "p2s_replace_item"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "p2s_delete_item"

    aput-object v1, v3, v0

    const/16 v0, 0x10

    const-string v1, "p2s_total_item"

    aput-object v1, v3, v0

    const/16 v0, 0x11

    const-string v1, "s2p_add_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x12

    const-string v1, "s2p_replace_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x13

    const-string v1, "s2p_delete_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x14

    const-string v1, "p2s_add_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x15

    const-string v1, "p2s_replace_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x16

    const-string v1, "p2s_delete_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x17

    const-string v1, "db_name"

    aput-object v1, v3, v0

    const/16 v0, 0x18

    const-string v1, "db_id"

    aput-object v1, v3, v0

    const/16 v0, 0x19

    const-string v1, "db_password"

    aput-object v1, v3, v0

    const/16 v0, 0x1a

    const-string v1, "db_cred_type"

    aput-object v1, v3, v0

    const/16 v0, 0x1b

    const-string v1, "db_next_nonce"

    aput-object v1, v3, v0

    const/16 v0, 0x1c

    const-string v1, "last_anchor"

    aput-object v1, v3, v0

    const/16 v0, 0x1d

    const-string v1, "last_sync_time"

    aput-object v1, v3, v0

    const/16 v0, 0x1e

    const-string v1, "server_support_field_level"

    aput-object v1, v3, v0

    .line 297
    .local v3, From:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 301
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_b8
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->SyncItemDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "sync_item_profile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 303
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_dc
    .catchall {:try_start_b8 .. :try_end_dc} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_dc} :catch_e6

    move-result v0

    if-lez v0, :cond_e0

    .line 305
    const/4 v10, 0x1

    .line 314
    :cond_e0
    if-eqz v11, :cond_e5

    .line 315
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_e5
    :goto_e5
    return v10

    .line 308
    :catch_e6
    move-exception v12

    .line 310
    .local v12, e:Ljava/lang/Exception;
    :try_start_e7
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_f4

    .line 314
    if-eqz v11, :cond_e5

    .line 315
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_e5

    .line 314
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_f4
    move-exception v0

    if-eqz v11, :cond_fa

    .line 315
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_fa
    throw v0
.end method

.method public static smlDbSqlSyncItemProfileFetchRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)Ljava/lang/Object;
    .registers 15
    .parameter "RowId"
    .parameter "SyncItemInfo"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 148
    const/16 v0, 0x1f

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v3, v2

    const-string v0, "sync"

    aput-object v0, v3, v1

    const-string v0, "last_sync_type"

    aput-object v0, v3, v4

    const-string v0, "sync_type"

    aput-object v0, v3, v5

    const/4 v0, 0x4

    const-string v1, "server_id"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "real_sync_type"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "sync_db_result"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "is_device_full"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "is_server_full"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "s2p_add_item"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "s2p_replace_item"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "s2p_delete_item"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "s2p_total_item"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "p2s_add_item"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "p2s_replace_item"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "p2s_delete_item"

    aput-object v1, v3, v0

    const/16 v0, 0x10

    const-string v1, "p2s_total_item"

    aput-object v1, v3, v0

    const/16 v0, 0x11

    const-string v1, "s2p_add_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x12

    const-string v1, "s2p_replace_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x13

    const-string v1, "s2p_delete_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x14

    const-string v1, "p2s_add_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x15

    const-string v1, "p2s_replace_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x16

    const-string v1, "p2s_delete_item_fail"

    aput-object v1, v3, v0

    const/16 v0, 0x17

    const-string v1, "db_name"

    aput-object v1, v3, v0

    const/16 v0, 0x18

    const-string v1, "db_id"

    aput-object v1, v3, v0

    const/16 v0, 0x19

    const-string v1, "db_password"

    aput-object v1, v3, v0

    const/16 v0, 0x1a

    const-string v1, "db_cred_type"

    aput-object v1, v3, v0

    const/16 v0, 0x1b

    const-string v1, "db_next_nonce"

    aput-object v1, v3, v0

    const/16 v0, 0x1c

    const-string v1, "last_anchor"

    aput-object v1, v3, v0

    const/16 v0, 0x1d

    const-string v1, "last_sync_time"

    aput-object v1, v3, v0

    const/16 v0, 0x1e

    const-string v1, "server_support_field_level"

    aput-object v1, v3, v0

    .line 184
    .local v3, From:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 188
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_b7
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->SyncItemDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "sync_item_profile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 190
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1fc

    .line 192
    :goto_de
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1fc

    .line 196
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1e6

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 201
    :goto_ee
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncType:I

    .line 202
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 203
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->ServerID:I

    .line 204
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->RealSyncType:I

    .line 205
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    .line 207
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1f2

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    .line 212
    :goto_11b
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1f7

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    .line 217
    :goto_126
    const/16 v0, 0x9

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 218
    const/16 v0, 0xa

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 219
    const/16 v0, 0xb

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 220
    const/16 v0, 0xc

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 221
    const/16 v0, 0xd

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 222
    const/16 v0, 0xe

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 223
    const/16 v0, 0xf

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 224
    const/16 v0, 0x10

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 225
    const/16 v0, 0x11

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    .line 226
    const/16 v0, 0x12

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    .line 227
    const/16 v0, 0x13

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    .line 228
    const/16 v0, 0x14

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    .line 229
    const/16 v0, 0x15

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    .line 230
    const/16 v0, 0x16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    .line 232
    const/16 v0, 0x17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 233
    const/16 v0, 0x18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBId:Ljava/lang/String;

    .line 234
    const/16 v0, 0x19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBPassWord:Ljava/lang/String;

    .line 235
    const/16 v0, 0x1a

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBCredType:I

    .line 236
    const/16 v0, 0x1b

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBNextNonce:Ljava/lang/String;

    .line 238
    const/16 v0, 0x1c

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    .line 239
    const/16 v0, 0x1d

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    .line 240
    const/16 v0, 0x1e

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->ServerSupportFieldLevel:I
    :try_end_1d6
    .catchall {:try_start_b7 .. :try_end_1d6} :catchall_1eb
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_1d6} :catch_1d8

    goto/16 :goto_de

    .line 244
    :catch_1d8
    move-exception v11

    .line 246
    .local v11, e:Ljava/lang/Exception;
    :try_start_1d9
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_1e0
    .catchall {:try_start_1d9 .. :try_end_1e0} :catchall_1eb

    .line 250
    if-eqz v10, :cond_1e5

    .line 251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 254
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1e5
    :goto_1e5
    return-object p2

    .line 199
    :cond_1e6
    const/4 v0, 0x1

    :try_start_1e7
    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z
    :try_end_1e9
    .catchall {:try_start_1e7 .. :try_end_1e9} :catchall_1eb
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1e9} :catch_1d8

    goto/16 :goto_ee

    .line 250
    :catchall_1eb
    move-exception v0

    if-eqz v10, :cond_1f1

    .line 251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1f1
    throw v0

    .line 210
    :cond_1f2
    const/4 v0, 0x1

    :try_start_1f3
    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    goto/16 :goto_11b

    .line 215
    :cond_1f7
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z
    :try_end_1fa
    .catchall {:try_start_1f3 .. :try_end_1fa} :catchall_1eb
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1fa} :catch_1d8

    goto/16 :goto_126

    .line 250
    :cond_1fc
    if-eqz v10, :cond_1e5

    .line 251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1e5
.end method

.method public static smlDbSqlSyncItemProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "Db"

    .prologue
    .line 17
    :try_start_0
    sput-object p0, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->SyncItemDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->SyncItemDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists sync_item_profile (rowid integer primary key autoincrement, sync boolean, last_sync_type integer, sync_type integer, server_id integer, real_sync_type integer, sync_db_result integer, is_device_full boolean, is_server_full boolean, s2p_add_item integer, s2p_replace_item integer, s2p_delete_item integer, s2p_total_item integer, p2s_add_item integer, p2s_replace_item integer, p2s_delete_item integer, p2s_total_item integer, s2p_add_item_fail integer, s2p_replace_item_fail integer, s2p_delete_item_fail integer, p2s_add_item_fail integer, p2s_replace_item_fail integer, p2s_delete_item_fail integer, db_name text, db_id text, db_password text, db_cred_type integer, db_next_nonce text, last_anchor text, last_sync_time text, server_support_field_level integer);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 24
    :goto_9
    return-void

    .line 20
    :catch_a
    move-exception v0

    .line 22
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static smlDbSqlSyncItemProfileInsertRow(Lcom/syncmldstmo/database/smlDbSyncItemInfo;)V
    .registers 6
    .parameter "SyncItemInfo"

    .prologue
    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "sync"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 45
    const-string v2, "last_sync_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v2, "sync_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v2, "server_id"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->ServerID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    const-string v2, "real_sync_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->RealSyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v2, "sync_db_result"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string v2, "is_device_full"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    const-string v2, "is_server_full"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    const-string v2, "s2p_add_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v2, "s2p_replace_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v2, "s2p_delete_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v2, "s2p_total_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v2, "p2s_add_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v2, "p2s_replace_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v2, "p2s_delete_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v2, "p2s_total_item"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v2, "s2p_add_item_fail"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v2, "s2p_replace_item_fail"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v2, "s2p_delete_item_fail"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v2, "p2s_add_item_fail"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v2, "p2s_replace_item_fail"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v2, "p2s_delete_item_fail"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v2, "db_name"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "db_id"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "db_password"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBPassWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "db_cred_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBCredType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v2, "db_next_nonce"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBNextNonce:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "last_anchor"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "last_sync_time"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "server_support_field_level"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->ServerSupportFieldLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->SyncItemDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "sync_item_profile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13f} :catch_140

    .line 84
    :goto_13f
    return-void

    .line 80
    :catch_140
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_13f
.end method

.method public static smlDbSqlSyncItemProfileUpdateRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)V
    .registers 9
    .parameter "RowId"
    .parameter "SyncItemInfo"

    .prologue
    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "sync"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    const-string v2, "last_sync_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v2, "sync_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v2, "server_id"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->ServerID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v2, "real_sync_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->RealSyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v2, "sync_db_result"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v2, "is_device_full"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    const-string v2, "is_server_full"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 113
    const-string v2, "s2p_add_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v2, "s2p_replace_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v2, "s2p_delete_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v2, "s2p_total_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v2, "p2s_add_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v2, "p2s_replace_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v2, "p2s_delete_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v2, "p2s_total_item"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v2, "s2p_add_item_fail"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v2, "s2p_replace_item_fail"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v2, "s2p_delete_item_fail"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v2, "p2s_add_item_fail"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v2, "p2s_replace_item_fail"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v2, "p2s_delete_item_fail"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItemFail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v2, "db_name"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "db_id"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "db_password"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBPassWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "db_cred_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBCredType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v2, "db_next_nonce"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBNextNonce:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "last_anchor"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "last_sync_time"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "server_support_field_level"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->ServerSupportFieldLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->SyncItemDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "sync_item_profile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_152} :catch_153

    .line 144
    :goto_152
    return-void

    .line 140
    :catch_153
    move-exception v1

    .line 142
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_152
.end method
