.class public Lcom/sprint/dsa/pack/PackBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackBroadcastReceiver.java"


# static fields
.field public static final ACTION_PACK_ACTIVATED:Ljava/lang/String; = "com.sprint.action.PACK_ACTIVATED"

.field public static final ACTION_PACK_INSTALLED:Ljava/lang/String; = "com.sprint.action.PACK_INSTALLED"

.field public static final ACTION_PACK_REMOVED:Ljava/lang/String; = "com.sprint.action.PACK_REMOVED"

.field public static final EXTRA_INSTALLED_PACK_IDS:Ljava/lang/String; = "com.sprint.extra.INSTALLED_PACK_IDS"

.field public static final EXTRA_INSTALLED_PACK_VERSIONS:Ljava/lang/String; = "com.sprint.extra.INSTALLED_PACK_VERSIONS"

.field public static final EXTRA_INSTALLED_PSI_PACK_IDS:Ljava/lang/String; = "com.sprint.extra.INSTALLED_PSI_PACK_IDS"

.field public static final EXTRA_PACK_ID:Ljava/lang/String; = "com.sprint.extra.PACK_ID"

.field public static final EXTRA_PACK_VERSION:Ljava/lang/String; = "com.sprint.extra.PACK_VERSION"

.field public static final EXTRA_PSI_PACK_ID:Ljava/lang/String; = "com.sprint.extra.PSI_PACK_ID"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Packs"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, action:Ljava/lang/String;
    const-string v11, "com.sprint.extra.PACK_ID"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, packId:Ljava/lang/String;
    const-string v11, "com.sprint.extra.PACK_VERSION"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, packVersion:Ljava/lang/String;
    const-string v11, "com.sprint.extra.PSI_PACK_ID"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, psiPackId:Ljava/lang/String;
    const-string v11, "com.sprint.extra.INSTALLED_PACK_IDS"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, installedIds:[Ljava/lang/String;
    const-string v11, "com.sprint.extra.INSTALLED_PACK_VERSIONS"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, packVersions:[Ljava/lang/String;
    if-eqz v5, :cond_28

    .line 58
    const/4 v4, 0x0

    .local v4, i:I
    :goto_25
    array-length v11, v5

    if-lt v4, v11, :cond_75

    .line 62
    .end local v4           #i:I
    :cond_28
    if-eqz v8, :cond_2e

    .line 63
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2b
    array-length v11, v8

    if-lt v4, v11, :cond_78

    .line 69
    .end local v4           #i:I
    :cond_2e
    new-instance v2, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v2, p1}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 73
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_37
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v11

    if-nez v11, :cond_40

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 75
    :cond_40
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
    const-string v11, "com.sprint.action.PACK_INSTALLED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 80
    const/4 v11, 0x0

    invoke-static {v1, v5, v8, v11}, Lcom/sprint/dsa/pack/DbPacks;->setPackIds(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {v2, v6, v7, v5}, Lcom/sprint/dsa/Reporting;->reportPackAdded(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    :cond_52
    :goto_52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_55} :catch_8e

    .line 105
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v11

    if-eqz v11, :cond_60

    .line 106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 109
    :cond_60
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    :cond_65
    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 115
    :cond_6a
    :goto_6a
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/sprint/dsa/UpdateService;

    invoke-direct {v10, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v10, update:Landroid/content/Intent;
    invoke-virtual {p1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    return-void

    .line 58
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    .end local v10           #update:Landroid/content/Intent;
    .restart local v4       #i:I
    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 63
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 83
    .end local v4           #i:I
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #dbAdapter:Lcom/sprint/dsa/data/DbAdapter;
    :cond_7b
    :try_start_7b
    const-string v11, "com.sprint.action.PACK_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ac

    .line 85
    invoke-static {v1, v6}, Lcom/sprint/dsa/pack/DbPacks;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 86
    const/4 v11, 0x0

    invoke-static {v1, v5, v8, v11}, Lcom/sprint/dsa/pack/DbPacks;->setPackIds(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v2, v6, v5}, Lcom/sprint/dsa/Reporting;->reportPackRemoved(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_7b .. :try_end_8d} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8d} :catch_8e

    goto :goto_52

    .line 101
    :catch_8e
    move-exception v3

    .line 102
    .local v3, ex:Ljava/lang/Exception;
    :try_start_8f
    const-string v11, "SprintZone_Packs"

    const-string v12, "PackBroadcastReceiver ERROR"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_bb

    .line 105
    if-eqz v1, :cond_a1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 109
    :cond_a1
    if-eqz v1, :cond_a6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    :cond_a6
    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    goto :goto_6a

    .line 89
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_ac
    :try_start_ac
    const-string v11, "com.sprint.action.PACK_ACTIVATED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 92
    invoke-static {v1, v5, v8, v6}, Lcom/sprint/dsa/pack/DbPacks;->setPackIds(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v2, v6, v5}, Lcom/sprint/dsa/Reporting;->reportPackActive(Lcom/sprint/dsa/data/DbAdapter;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_ac .. :try_end_ba} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ba} :catch_8e

    goto :goto_52

    .line 104
    :catchall_bb
    move-exception v11

    .line 105
    if-eqz v1, :cond_c7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v12

    if-eqz v12, :cond_c7

    .line 106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 109
    :cond_c7
    if-eqz v1, :cond_cc

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    :cond_cc
    if-eqz v2, :cond_d1

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 112
    :cond_d1
    throw v11
.end method
