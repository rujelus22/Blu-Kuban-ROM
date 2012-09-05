.class public Lcom/android/exchange/CalendarSyncAdapterService;
.super Landroid/app/Service;
.source "CalendarSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 149
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
    .line 87
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/CalendarSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 25
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
    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 246
    .local v1, cr:Landroid/content/ContentResolver;
    sget-boolean v11, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    .line 248
    .local v11, logging:Z
    const-string v2, "upload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 250
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "dirty=1 AND account_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 260
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_37

    .line 262
    const-string v2, "Exchange"

    const-string v3, "Calendar Sync , Cursor is null, maybe bind transaction failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v10           #c:Landroid/database/Cursor;
    :goto_36
    return-void

    .line 270
    .restart local v10       #c:Landroid/database/Cursor;
    :cond_37
    :try_start_37
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_89

    move-result v2

    if-nez v2, :cond_41

    .line 296
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_36

    :cond_41
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 306
    .end local v10           #c:Landroid/database/Cursor;
    :cond_44
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v4, "emailAddress=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 330
    .local v7, accountCursor:Landroid/database/Cursor;
    :try_start_5b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 332
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 340
    .local v8, accountId:J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 344
    .local v15, syncInterval:J
    const-wide/16 v2, -0x1

    cmp-long v2, v15, v2

    if-nez v2, :cond_8e

    .line 346
    const-string v2, "force"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "ignore_settings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_82
    .catchall {:try_start_5b .. :try_end_82} :catchall_f0

    move-result v2

    if-nez v2, :cond_8e

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 296
    .end local v7           #accountCursor:Landroid/database/Cursor;
    .end local v8           #accountId:J
    .end local v15           #syncInterval:J
    .restart local v10       #c:Landroid/database/Cursor;
    :catchall_89
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 372
    .end local v10           #c:Landroid/database/Cursor;
    .restart local v7       #accountCursor:Landroid/database/Cursor;
    .restart local v8       #accountId:J
    .restart local v15       #syncInterval:J
    :cond_8e
    :try_start_8e
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/exchange/CalendarSyncAdapterService;->ID_SYNC_KEY_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? AND type=65"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_f0

    move-result-object v13

    .line 382
    .local v13, mailboxCursor:Landroid/database/Cursor;
    :try_start_a3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 390
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_a3 .. :try_end_ad} :catchall_eb

    move-result-object v17

    .line 396
    .local v17, syncKey:Ljava/lang/String;
    const/4 v12, -0x2

    .line 400
    .local v12, mSyncInterval:I
    const/4 v2, 0x2

    :try_start_b0
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_eb
    .catch Ljava/lang/NullPointerException; {:try_start_b0 .. :try_end_b3} :catch_e6

    move-result v12

    .line 408
    :goto_b4
    :try_start_b4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performSync() for Calendar: mSyncInterval :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 422
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->checkServiceExist(J)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 423
    if-eqz v11, :cond_de

    .line 425
    const-string v2, "EAS CalendarSyncAdapterService"

    const-string v3, "Can\'t sync; mailbox in initial state, or manual sync already active"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_b4 .. :try_end_de} :catchall_eb

    .line 449
    :cond_de
    :try_start_de
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_f0

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_36

    .line 402
    :catch_e6
    move-exception v14

    .line 404
    .local v14, ne:Ljava/lang/NullPointerException;
    :try_start_e7
    invoke-virtual {v14}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    goto :goto_b4

    .line 449
    .end local v12           #mSyncInterval:I
    .end local v14           #ne:Ljava/lang/NullPointerException;
    .end local v17           #syncKey:Ljava/lang/String;
    :catchall_eb
    move-exception v2

    :try_start_ec
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_f0
    .catchall {:try_start_ec .. :try_end_f0} :catchall_f0

    .line 457
    .end local v8           #accountId:J
    .end local v13           #mailboxCursor:Landroid/database/Cursor;
    .end local v15           #syncInterval:J
    :catchall_f0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 441
    .restart local v8       #accountId:J
    .restart local v12       #mSyncInterval:I
    .restart local v13       #mailboxCursor:Landroid/database/Cursor;
    .restart local v15       #syncInterval:J
    .restart local v17       #syncKey:Ljava/lang/String;
    :cond_f5
    const/4 v2, 0x0

    :try_start_f6
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_fe
    .catchall {:try_start_f6 .. :try_end_fe} :catchall_eb

    .line 449
    .end local v12           #mSyncInterval:I
    .end local v17           #syncKey:Ljava/lang/String;
    :cond_fe
    :try_start_fe
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_f0

    .line 457
    .end local v8           #accountId:J
    .end local v13           #mailboxCursor:Landroid/database/Cursor;
    .end local v15           #syncInterval:J
    :cond_101
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_36
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 220
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 202
    sget-object v1, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_6
    sget-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_15

    .line 206
    new-instance v0, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/CalendarSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/CalendarSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/CalendarSyncAdapterService$SyncAdapterImpl;

    .line 210
    :cond_15
    monitor-exit v1

    .line 212
    return-void

    .line 210
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
