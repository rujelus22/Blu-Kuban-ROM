.class public Lcom/android/exchange/TasksSyncAdapterService;
.super Landroid/app/Service;
.source "TasksSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/TasksSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 33
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Inside TaskSyncADapterService"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v5, "emailAddress=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 135
    .local v14, accountCursor:Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 136
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 140
    .local v15, accountId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 142
    .local v25, syncInterval:J
    const-wide/16 v6, -0x1

    cmp-long v3, v25, v6

    if-nez v3, :cond_4e

    .line 143
    const-string v3, "force"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "ignore_settings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_e6

    move-result v3

    if-nez v3, :cond_4e

    .line 304
    .end local v15           #accountId:J
    .end local v25           #syncInterval:J
    :cond_4a
    :goto_4a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 307
    return-void

    .line 164
    .restart local v15       #accountId:J
    .restart local v25       #syncInterval:J
    :cond_4e
    const/4 v3, 0x1

    :try_start_4f
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "accountKey"

    aput-object v6, v4, v3

    .line 167
    .local v4, TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v12, v3

    .line 170
    .local v12, MAILBOX_ID_PROJECTION:[Ljava/lang/String;
    const-string v13, "accountKey="

    .line 171
    .local v13, TASK_ACCOUNT_KEY_SELECTION:Ljava/lang/String;
    const-string v5, "_sync_dirty=1"

    .line 172
    .local v5, sync_dirty:Ljava/lang/String;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v24, mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x7f07

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_eb

    .line 178
    sget-object v3, Lcom/android/emailcommon/provider/Tasks;->Q1_TASK_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7b
    .catchall {:try_start_4f .. :try_end_7b} :catchall_e6

    move-result-object v19

    .line 189
    .local v19, c:Landroid/database/Cursor;
    :goto_7c
    :try_start_7c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 190
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 198
    .local v17, accountKey:J
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v9, "accountKey=? AND type=67"

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9e
    .catchall {:try_start_7c .. :try_end_9e} :catchall_e1

    move-result-object v21

    .line 203
    .local v21, mailboxCursor:Landroid/database/Cursor;
    :cond_9f
    :goto_9f
    :try_start_9f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_26a

    .line 204
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 207
    .local v22, mailboxId:J
    const-string v3, "EAS TasksSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The mailbox id for newly inserted tasks to sync is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 210
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catchall {:try_start_9f .. :try_end_db} :catchall_dc

    goto :goto_9f

    .line 214
    .end local v22           #mailboxId:J
    :catchall_dc
    move-exception v3

    :try_start_dd
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_e1

    .line 218
    .end local v17           #accountKey:J
    .end local v21           #mailboxCursor:Landroid/database/Cursor;
    :catchall_e1
    move-exception v3

    :try_start_e2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_e6

    .line 304
    .end local v4           #TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    .end local v5           #sync_dirty:Ljava/lang/String;
    .end local v12           #MAILBOX_ID_PROJECTION:[Ljava/lang/String;
    .end local v13           #TASK_ACCOUNT_KEY_SELECTION:Ljava/lang/String;
    .end local v15           #accountId:J
    .end local v19           #c:Landroid/database/Cursor;
    .end local v24           #mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v25           #syncInterval:J
    :catchall_e6
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 182
    .restart local v4       #TASK_ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;
    .restart local v5       #sync_dirty:Ljava/lang/String;
    .restart local v12       #MAILBOX_ID_PROJECTION:[Ljava/lang/String;
    .restart local v13       #TASK_ACCOUNT_KEY_SELECTION:Ljava/lang/String;
    .restart local v15       #accountId:J
    .restart local v24       #mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v25       #syncInterval:J
    :cond_eb
    :try_start_eb
    sget-object v3, Lcom/android/emailcommon/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .restart local v19       #c:Landroid/database/Cursor;
    goto :goto_7c

    .line 218
    :cond_f4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x7f07

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_179

    .line 224
    sget-object v7, Lcom/android/emailcommon/provider/Tasks;->Q1_DELETED_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10e
    .catchall {:try_start_eb .. :try_end_10e} :catchall_e6

    move-result-object v19

    .line 234
    :goto_10f
    :try_start_10f
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_185

    .line 235
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 236
    .restart local v17       #accountKey:J
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v9, "accountKey=? AND type=67"

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_131
    .catchall {:try_start_10f .. :try_end_131} :catchall_174

    move-result-object v21

    .line 241
    .restart local v21       #mailboxCursor:Landroid/database/Cursor;
    :cond_132
    :goto_132
    :try_start_132
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 242
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 243
    .restart local v22       #mailboxId:J
    const-string v3, "EAS TasksSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The mailbox id for newly deleted tasks to sync is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_132

    .line 246
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16e
    .catchall {:try_start_132 .. :try_end_16e} :catchall_16f

    goto :goto_132

    .line 250
    .end local v22           #mailboxId:J
    :catchall_16f
    move-exception v3

    :try_start_170
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_174
    .catchall {:try_start_170 .. :try_end_174} :catchall_174

    .line 254
    .end local v17           #accountKey:J
    .end local v21           #mailboxCursor:Landroid/database/Cursor;
    :catchall_174
    move-exception v3

    :try_start_175
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v3

    .line 228
    :cond_179
    sget-object v7, Lcom/android/emailcommon/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_10f

    .line 254
    :cond_185
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x7f07

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_20a

    .line 260
    sget-object v7, Lcom/android/emailcommon/provider/Tasks;->Q1_UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19f
    .catchall {:try_start_175 .. :try_end_19f} :catchall_e6

    move-result-object v19

    .line 270
    :goto_1a0
    :try_start_1a0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_216

    .line 271
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 272
    .restart local v17       #accountKey:J
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/exchange/TasksSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v9, "accountKey=? AND type=67"

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v3

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c2
    .catchall {:try_start_1a0 .. :try_end_1c2} :catchall_205

    move-result-object v21

    .line 277
    .restart local v21       #mailboxCursor:Landroid/database/Cursor;
    :cond_1c3
    :goto_1c3
    :try_start_1c3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_274

    .line 278
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 279
    .restart local v22       #mailboxId:J
    const-string v3, "EAS TasksSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The mailbox id for newly updated tasks to sync is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c3

    .line 282
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ff
    .catchall {:try_start_1c3 .. :try_end_1ff} :catchall_200

    goto :goto_1c3

    .line 286
    .end local v22           #mailboxId:J
    :catchall_200
    move-exception v3

    :try_start_201
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_205
    .catchall {:try_start_201 .. :try_end_205} :catchall_205

    .line 290
    .end local v17           #accountKey:J
    .end local v21           #mailboxCursor:Landroid/database/Cursor;
    :catchall_205
    move-exception v3

    :try_start_206
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v3

    .line 264
    :cond_20a
    sget-object v7, Lcom/android/emailcommon/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_1a0

    .line 290
    :cond_216
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 294
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_21d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    .line 296
    .local v22, mailboxId:Ljava/lang/Long;
    const-string v3, "EAS TasksSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "goign to notifify tasks mailboxes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v3, 0x0

    invoke-static {v6, v7, v3}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V

    goto :goto_21d

    .line 299
    .end local v22           #mailboxId:Ljava/lang/Long;
    :cond_24c
    const-string v3, "EAS TasksSyncAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Tasks Changed/Deleted messages: , mailboxes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_268
    .catchall {:try_start_206 .. :try_end_268} :catchall_e6

    goto/16 :goto_4a

    .line 214
    .end local v20           #i$:Ljava/util/Iterator;
    .restart local v17       #accountKey:J
    .restart local v21       #mailboxCursor:Landroid/database/Cursor;
    :cond_26a
    :try_start_26a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_26d
    .catchall {:try_start_26a .. :try_end_26d} :catchall_e1

    goto/16 :goto_7c

    .line 250
    :cond_26f
    :try_start_26f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_272
    .catchall {:try_start_26f .. :try_end_272} :catchall_174

    goto/16 :goto_10f

    .line 286
    :cond_274
    :try_start_274
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_277
    .catchall {:try_start_274 .. :try_end_277} :catchall_205

    goto/16 :goto_1a0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 96
    sget-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    sget-object v1, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_6
    sget-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_15

    .line 89
    new-instance v0, Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/TasksSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/TasksSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/TasksSyncAdapterService$SyncAdapterImpl;

    .line 91
    :cond_15
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
