.class public Lcom/syncmldstmo/database/smlDbSqlProfile;
.super Ljava/lang/Object;
.source "smlDbSqlProfile.java"


# static fields
.field private static ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbSqlProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "Db"

    .prologue
    .line 44
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS profile"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemContact;->smlDbSqlSyncItemContactDeInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemCalendar;->smlDbSqlSyncItemCalendarDeInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->smlDbSqlSyncItemProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 60
    :goto_e
    return-void

    .line 56
    :catch_f
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static smlDbSqlProfileExistsRow(J)Z
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 289
    const/4 v10, 0x0

    .line 291
    .local v10, bExist:Z
    const/16 v0, 0x1a

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "obex_type"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v1, "cred_type"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "next_nonce"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "old_imsi"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "ui_sync_type"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "server_url"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "server_id"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "server_pw"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "sync_result"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "auto_sync"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "http_conn_mode"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "network_conn_index"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "cached_map_flag"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "is_sync"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "magic_number"

    aput-object v1, v3, v0

    const/16 v0, 0x10

    const-string v1, "is_member"

    aput-object v1, v3, v0

    const/16 v0, 0x11

    const-string v1, "cp_count"

    aput-object v1, v3, v0

    const/16 v0, 0x12

    const-string v1, "AutoSync_Off_Contact"

    aput-object v1, v3, v0

    const/16 v0, 0x13

    const-string v1, "AutoSync_Off_Calendar"

    aput-object v1, v3, v0

    const/16 v0, 0x14

    const-string v1, "first_sync_complete"

    aput-object v1, v3, v0

    const/16 v0, 0x15

    const-string v1, "empty1"

    aput-object v1, v3, v0

    const/16 v0, 0x16

    const-string v1, "empty2"

    aput-object v1, v3, v0

    const/16 v0, 0x17

    const-string v1, "empty3"

    aput-object v1, v3, v0

    const/16 v0, 0x18

    const-string v1, "empty4"

    aput-object v1, v3, v0

    const/16 v0, 0x19

    const-string v1, "empty5"

    aput-object v1, v3, v0

    .line 319
    .local v3, From:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 323
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_9a
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "profile"

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

    .line 325
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_be
    .catchall {:try_start_9a .. :try_end_be} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_be} :catch_c8

    move-result v0

    if-lez v0, :cond_c2

    .line 327
    const/4 v10, 0x1

    .line 337
    :cond_c2
    if-eqz v11, :cond_c7

    .line 339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_c7
    :goto_c7
    return v10

    .line 331
    :catch_c8
    move-exception v12

    .line 333
    .local v12, e:Ljava/lang/Exception;
    :try_start_c9
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_d6

    .line 337
    if-eqz v11, :cond_c7

    .line 339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_c7

    .line 337
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_d6
    move-exception v0

    if-eqz v11, :cond_dc

    .line 339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_dc
    throw v0
.end method

.method public static smlDbSqlProfileFetchRow(JLcom/syncmldstmo/database/smlDbProfileInfo;)Ljava/lang/Object;
    .registers 15
    .parameter "RowId"
    .parameter "ProfileInfo"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    const/16 v0, 0x1a

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v3, v2

    const-string v0, "obex_type"

    aput-object v0, v3, v1

    const-string v0, "cred_type"

    aput-object v0, v3, v4

    const-string v0, "next_nonce"

    aput-object v0, v3, v5

    const/4 v0, 0x4

    const-string v1, "old_imsi"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "ui_sync_type"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "server_url"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "server_id"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "server_pw"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "sync_result"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "auto_sync"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "http_conn_mode"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "network_conn_index"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "cached_map_flag"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "is_sync"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "magic_number"

    aput-object v1, v3, v0

    const/16 v0, 0x10

    const-string v1, "is_member"

    aput-object v1, v3, v0

    const/16 v0, 0x11

    const-string v1, "cp_count"

    aput-object v1, v3, v0

    const/16 v0, 0x12

    const-string v1, "AutoSync_Off_Contact"

    aput-object v1, v3, v0

    const/16 v0, 0x13

    const-string v1, "AutoSync_Off_Calendar"

    aput-object v1, v3, v0

    const/16 v0, 0x14

    const-string v1, "first_sync_complete"

    aput-object v1, v3, v0

    const/16 v0, 0x15

    const-string v1, "empty1"

    aput-object v1, v3, v0

    const/16 v0, 0x16

    const-string v1, "empty2"

    aput-object v1, v3, v0

    const/16 v0, 0x17

    const-string v1, "empty3"

    aput-object v1, v3, v0

    const/16 v0, 0x18

    const-string v1, "empty4"

    aput-object v1, v3, v0

    const/16 v0, 0x19

    const-string v1, "empty5"

    aput-object v1, v3, v0

    .line 203
    .local v3, From:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 207
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_99
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "profile"

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

    .line 209
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1cb

    .line 211
    :goto_c0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 215
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ObexType:I

    .line 216
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->CredType:I

    .line 217
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->NextNonce:Ljava/lang/String;

    .line 218
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->OldIMSI:Ljava/lang/String;

    .line 219
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    .line 220
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 221
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    .line 222
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    .line 223
    const/16 v0, 0x9

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->SyncResult:I

    .line 225
    const/16 v0, 0xa

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1a9

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bAutoSync:Z

    .line 230
    :goto_112
    const/16 v0, 0xb

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->HttpConnectionMode:I

    .line 231
    const/16 v0, 0xc

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    .line 233
    const/16 v0, 0xd

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1b5

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bCachedmapflag:Z

    .line 238
    :goto_12d
    const/16 v0, 0xe

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1ba

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsSyncFlag:Z

    .line 243
    :goto_138
    const/16 v0, 0xf

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->magicNumber:I

    .line 245
    const/16 v0, 0x10

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1bf

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    .line 250
    :goto_14b
    const/16 v0, 0x11

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->CPCount:I

    .line 252
    const/16 v0, 0x12

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1c3

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffContact:Z

    .line 257
    :goto_15e
    const/16 v0, 0x13

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1c7

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffCalendar:Z

    .line 262
    :goto_169
    const/16 v0, 0x14

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->nFirstSyncComplete:I

    .line 264
    const/16 v0, 0x15

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty1:I

    .line 265
    const/16 v0, 0x16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty2:I

    .line 266
    const/16 v0, 0x17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty3:Ljava/lang/String;

    .line 267
    const/16 v0, 0x18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty4:Ljava/lang/String;

    .line 268
    const/16 v0, 0x19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty5:Ljava/lang/String;
    :try_end_199
    .catchall {:try_start_99 .. :try_end_199} :catchall_1ae
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_199} :catch_19b

    goto/16 :goto_c0

    .line 272
    :catch_19b
    move-exception v11

    .line 274
    .local v11, e:Ljava/lang/Exception;
    :try_start_19c
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_1a3
    .catchall {:try_start_19c .. :try_end_1a3} :catchall_1ae

    .line 278
    if-eqz v10, :cond_1a8

    .line 280
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 284
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1a8
    :goto_1a8
    return-object p2

    .line 228
    :cond_1a9
    const/4 v0, 0x1

    :try_start_1aa
    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bAutoSync:Z
    :try_end_1ac
    .catchall {:try_start_1aa .. :try_end_1ac} :catchall_1ae
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1ac} :catch_19b

    goto/16 :goto_112

    .line 278
    :catchall_1ae
    move-exception v0

    if-eqz v10, :cond_1b4

    .line 280
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1b4
    throw v0

    .line 236
    :cond_1b5
    const/4 v0, 0x1

    :try_start_1b6
    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bCachedmapflag:Z

    goto/16 :goto_12d

    .line 241
    :cond_1ba
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsSyncFlag:Z

    goto/16 :goto_138

    .line 248
    :cond_1bf
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    goto :goto_14b

    .line 255
    :cond_1c3
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffContact:Z

    goto :goto_15e

    .line 260
    :cond_1c7
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffCalendar:Z
    :try_end_1ca
    .catchall {:try_start_1b6 .. :try_end_1ca} :catchall_1ae
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1ca} :catch_19b

    goto :goto_169

    .line 278
    :cond_1cb
    if-eqz v10, :cond_1a8

    .line 280
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1a8
.end method

.method public static smlDbSqlProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "Db"

    .prologue
    .line 18
    :try_start_0
    sput-object p0, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists profile (rowid integer primary key autoincrement, obex_type integer, cred_type integer, next_nonce text, old_imsi text, ui_sync_type integer, server_url text, server_id text, server_pw text, sync_result integer, auto_sync boolean, http_conn_mode integer, network_conn_index integer, cached_map_flag boolean, is_sync boolean, magic_number integer, is_member boolean, cp_count integer, AutoSync_Off_Contact boolean, AutoSync_Off_Calendar boolean, first_sync_complete integer, empty1 integer, empty2 integer, empty3 text, empty4 text, empty5 text);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileUpdateColumn()V

    .line 24
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemContact;->smlDbSqlSyncItemContactInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 26
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemCalendar;->smlDbSqlSyncItemCalendarInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->smlDbSqlSyncItemProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 38
    :goto_15
    return-void

    .line 34
    :catch_16
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static smlDbSqlProfileInsertRow(Lcom/syncmldstmo/database/smlDbProfileInfo;)V
    .registers 6
    .parameter "ProfileInfo"

    .prologue
    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "obex_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ObexType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v2, "cred_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->CredType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v2, "next_nonce"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->NextNonce:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "old_imsi"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->OldIMSI:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "ui_sync_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v2, "server_url"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "server_id"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "server_pw"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "sync_result"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->SyncResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v2, "auto_sync"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bAutoSync:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    const-string v2, "http_conn_mode"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->HttpConnectionMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v2, "network_conn_index"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v2, "cached_map_flag"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bCachedmapflag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    const-string v2, "is_sync"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsSyncFlag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 82
    const-string v2, "magic_number"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->magicNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v2, "is_member"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    const-string v2, "cp_count"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->CPCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v2, "AutoSync_Off_Contact"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffContact:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    const-string v2, "AutoSync_Off_Calendar"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffCalendar:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    const-string v2, "first_sync_complete"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->nFirstSyncComplete:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v2, "empty1"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v2, "empty2"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v2, "empty3"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty3:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "empty4"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty4:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "empty5"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty5:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "profile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_100} :catch_101

    .line 100
    :goto_100
    return-void

    .line 96
    :catch_101
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_100
.end method

.method public static smlDbSqlProfileUpdateColumn()V
    .registers 31

    .prologue
    .line 348
    const/16 v23, 0x0

    .line 349
    .local v23, bIsMemberExist:Z
    const/16 v16, 0x0

    .line 350
    .local v16, bCpCountExist:Z
    const/4 v15, 0x0

    .line 351
    .local v15, bAutoSyncOffConExist:Z
    const/4 v14, 0x0

    .line 352
    .local v14, bAutoSyncOffCalExist:Z
    const/16 v22, 0x0

    .line 354
    .local v22, bFistSyncExist:Z
    const/16 v17, 0x0

    .line 355
    .local v17, bEmpty1:Z
    const/16 v18, 0x0

    .line 356
    .local v18, bEmpty2:Z
    const/16 v19, 0x0

    .line 357
    .local v19, bEmpty3:Z
    const/16 v20, 0x0

    .line 358
    .local v20, bEmpty4:Z
    const/16 v21, 0x0

    .line 360
    .local v21, bEmpty5:Z
    const-string v26, "select * from profile"

    .line 361
    .local v26, sql:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 363
    .local v24, c:Landroid/database/Cursor;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_24
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getColumnCount()I

    move-result v29

    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_ac

    .line 365
    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, ColumnName:Ljava/lang/String;
    const-string v29, "is_member"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_3e

    .line 369
    const/16 v23, 0x1

    .line 372
    :cond_3e
    const-string v29, "cp_count"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_4a

    .line 374
    const/16 v16, 0x1

    .line 377
    :cond_4a
    const-string v29, "AutoSync_Off_Contact"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_55

    .line 379
    const/4 v15, 0x1

    .line 382
    :cond_55
    const-string v29, "AutoSync_Off_Calendar"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_60

    .line 384
    const/4 v14, 0x1

    .line 387
    :cond_60
    const-string v29, "first_sync_complete"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_6c

    .line 389
    const/16 v22, 0x1

    .line 392
    :cond_6c
    const-string v29, "empty1"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_78

    .line 394
    const/16 v17, 0x1

    .line 397
    :cond_78
    const-string v29, "empty2"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_84

    .line 399
    const/16 v18, 0x1

    .line 402
    :cond_84
    const-string v29, "empty3"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_90

    .line 404
    const/16 v19, 0x1

    .line 407
    :cond_90
    const-string v29, "empty4"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_9c

    .line 409
    const/16 v20, 0x1

    .line 412
    :cond_9c
    const-string v29, "empty5"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_a8

    .line 414
    const/16 v21, 0x1

    .line 363
    :cond_a8
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_24

    .line 418
    .end local v3           #ColumnName:Ljava/lang/String;
    :cond_ac
    if-nez v23, :cond_e9

    .line 420
    const-string v29, "is_member added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 421
    const-string v13, "ALTER TABLE profile ADD is_member boolean"

    .line 422
    .local v13, add_column_Is_Member:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;->smlDbSqlSyncItemLogCount()I

    move-result v29

    if-lez v29, :cond_e9

    .line 426
    const-string v29, "is_member true"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 428
    const-string v28, "where server_id=\"T-Mobile\""

    .line 429
    .local v28, where:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "UPDATE profile SET is_member=1 "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 430
    .local v27, update_member:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    .end local v13           #add_column_Is_Member:Ljava/lang/String;
    .end local v27           #update_member:Ljava/lang/String;
    .end local v28           #where:Ljava/lang/String;
    :cond_e9
    if-nez v16, :cond_f9

    .line 436
    const-string v29, "cp_count added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 437
    const-string v6, "ALTER TABLE profile ADD cp_count integer"

    .line 438
    .local v6, add_column_CP_Count:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 441
    .end local v6           #add_column_CP_Count:Ljava/lang/String;
    :cond_f9
    if-nez v15, :cond_109

    .line 443
    const-string v29, "AutoSyncOffContcat added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 444
    const-string v5, "ALTER TABLE profile ADD AutoSync_Off_Contact boolean"

    .line 445
    .local v5, add_column_Autosync_Off_Contact:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    .end local v5           #add_column_Autosync_Off_Contact:Ljava/lang/String;
    :cond_109
    if-nez v14, :cond_119

    .line 450
    const-string v29, "AutoSyncOffCalendar added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 451
    const-string v4, "ALTER TABLE profile ADD AutoSync_Off_Calendar boolean"

    .line 452
    .local v4, add_column_Autosync_Off_Calendar:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    .end local v4           #add_column_Autosync_Off_Calendar:Ljava/lang/String;
    :cond_119
    if-nez v22, :cond_129

    .line 457
    const-string v29, "FirstSync added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 458
    const-string v12, "ALTER TABLE profile ADD first_sync_complete integer"

    .line 459
    .local v12, add_column_First_Sync_Complete:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    .end local v12           #add_column_First_Sync_Complete:Ljava/lang/String;
    :cond_129
    if-nez v17, :cond_139

    .line 464
    const-string v29, "Empty1 added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 465
    const-string v7, "ALTER TABLE profile ADD empty1 integer"

    .line 466
    .local v7, add_column_Empty1:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    .end local v7           #add_column_Empty1:Ljava/lang/String;
    :cond_139
    if-nez v18, :cond_149

    .line 471
    const-string v29, "Empty2 added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 472
    const-string v8, "ALTER TABLE profile ADD empty2 integer"

    .line 473
    .local v8, add_column_Empty2:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 476
    .end local v8           #add_column_Empty2:Ljava/lang/String;
    :cond_149
    if-nez v19, :cond_159

    .line 478
    const-string v29, "Empty3 added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 479
    const-string v9, "ALTER TABLE profile ADD empty3 integer"

    .line 480
    .local v9, add_column_Empty3:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    .end local v9           #add_column_Empty3:Ljava/lang/String;
    :cond_159
    if-nez v20, :cond_169

    .line 485
    const-string v29, "Empty4 added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 486
    const-string v10, "ALTER TABLE profile ADD empty4 integer"

    .line 487
    .local v10, add_column_Empty4:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    .end local v10           #add_column_Empty4:Ljava/lang/String;
    :cond_169
    if-nez v21, :cond_179

    .line 492
    const-string v29, "Empty5 added"

    invoke-static/range {v29 .. v29}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 493
    const-string v11, "ALTER TABLE profile ADD empty5 integer"

    .line 494
    .local v11, add_column_Empty5:Ljava/lang/String;
    sget-object v29, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 497
    .end local v11           #add_column_Empty5:Ljava/lang/String;
    :cond_179
    return-void
.end method

.method public static smlDbSqlProfileUpdateRow(JLcom/syncmldstmo/database/smlDbProfileInfo;)V
    .registers 9
    .parameter "RowId"
    .parameter "ProfileInfo"

    .prologue
    .line 126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "obex_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ObexType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v2, "cred_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->CredType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v2, "next_nonce"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->NextNonce:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "old_imsi"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->OldIMSI:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "ui_sync_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v2, "server_url"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "server_id"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "server_pw"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "sync_result"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->SyncResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string v2, "auto_sync"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bAutoSync:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    const-string v2, "http_conn_mode"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->HttpConnectionMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v2, "network_conn_index"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v2, "cached_map_flag"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bCachedmapflag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 143
    const-string v2, "is_sync"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsSyncFlag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    const-string v2, "magic_number"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->magicNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v2, "is_member"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 146
    const-string v2, "cp_count"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->CPCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v2, "AutoSync_Off_Contact"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffContact:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 148
    const-string v2, "AutoSync_Off_Calendar"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsAutoSyncOffCalendar:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    const-string v2, "first_sync_complete"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->nFirstSyncComplete:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v2, "empty1"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v2, "empty2"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v2, "empty3"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty3:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "empty4"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty4:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "empty5"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->empty5:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlProfile;->ProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "profile"

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

    .line 158
    iget-object v2, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {p0, p1, v2}, Lcom/syncmldstmo/database/smlDbSqlSyncItemContact;->smlDbSqlSyncItemContactUpdateRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)V

    .line 160
    iget-object v2, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {p0, p1, v2}, Lcom/syncmldstmo/database/smlDbSqlSyncItemCalendar;->smlDbSqlSyncItemCalendarUpdateRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)V

    .line 166
    iget-object v2, p2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    invoke-static {p0, p1, v2}, Lcom/syncmldstmo/database/smlDbSqlSyncItemProfile;->smlDbSqlSyncItemProfileUpdateRow(JLcom/syncmldstmo/database/smlDbSyncItemInfo;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_122} :catch_123

    .line 172
    :goto_122
    return-void

    .line 168
    :catch_123
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_122
.end method
