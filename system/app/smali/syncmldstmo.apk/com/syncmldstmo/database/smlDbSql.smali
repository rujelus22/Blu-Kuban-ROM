.class public Lcom/syncmldstmo/database/smlDbSql;
.super Ljava/lang/Object;
.source "smlDbSql.java"


# static fields
.field private static DsDbSql:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbSqlFullReset(Landroid/content/Context;)V
    .registers 4
    .parameter "Context"

    .prologue
    .line 26
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_e

    .line 27
    const-string v0, "syncmldstmodb.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    :cond_e
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;->smlDbSqlSyncItemLogDeInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapDeInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;->smlDbSqlSyncItemLogInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    return-void
.end method

.method public static smlDbSqlInit(Landroid/content/Context;)V
    .registers 4
    .parameter "Context"

    .prologue
    .line 12
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 22
    :goto_4
    return-void

    .line 15
    :cond_5
    const-string v0, "syncmldstmodb.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlProfile;->smlDbSqlProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 18
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->smlDbSqlNetworkProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlSyncItemLog;->smlDbSqlSyncItemLogInit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    sget-object v0, Lcom/syncmldstmo/database/smlDbSql;->DsDbSql:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->smlDbSqlCachedMapInit(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4
.end method
