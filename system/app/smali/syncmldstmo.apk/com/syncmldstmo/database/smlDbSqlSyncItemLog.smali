.class public Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;
.super Ljava/lang/Object;
.source "smlDbSqlSyncItemLog.java"


# static fields
.field private static SyncItemLogDbSql:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbSqlSyncItemLogCount()I
    .registers 13

    .prologue
    const/4 v2, 0x1

    .line 281
    const/4 v12, 0x0

    .line 283
    .local v12, nLogCount:I
    const/16 v0, 0xf

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "sync_type"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v1, "server_id"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "real_sync_type"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "sync_db_result"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "s2p_add_item"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "s2p_replace_item"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "s2p_delete_item"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "s2p_total_item"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "p2s_add_item"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "p2s_replace_item"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "p2s_delete_item"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "p2s_total_item"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "last_sync_time"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "error_code"

    aput-object v1, v3, v0

    .line 301
    .local v3, From:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 305
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_58
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;->SyncItemLogDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "sync_item_log"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 307
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_6a
    .catchall {:try_start_58 .. :try_end_6a} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6a} :catch_71

    move-result v12

    .line 315
    if-eqz v10, :cond_70

    .line 316
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_70
    :goto_70
    return v12

    .line 309
    :catch_71
    move-exception v11

    .line 311
    .local v11, e:Ljava/lang/Exception;
    :try_start_72
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7f

    .line 315
    if-eqz v10, :cond_70

    .line 316
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_70

    .line 315
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_7f
    move-exception v0

    if-eqz v10, :cond_85

    .line 316
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_85
    throw v0
.end method

.method public static smlDbSqlSyncItemLogDeInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "Db"

    .prologue
    .line 31
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS sync_item_log"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 37
    :goto_5
    return-void

    .line 33
    :catch_6
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static smlDbSqlSyncItemLogInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "Db"

    .prologue
    .line 17
    :try_start_0
    sput-object p0, Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;->SyncItemLogDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;->SyncItemLogDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists sync_item_log (rowid integer primary key autoincrement, sync_type integer, server_id integer, real_sync_type integer, sync_db_result integer, s2p_add_item integer, s2p_replace_item integer, s2p_delete_item integer, s2p_total_item integer, p2s_add_item integer, p2s_replace_item integer, p2s_delete_item integer, p2s_total_item integer, last_sync_time text,error_code integer);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 25
    :goto_9
    return-void

    .line 21
    :catch_a
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_9
.end method
