.class public Lcom/android/exchange/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
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
    .line 42
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 11
    .parameter "resolver"
    .parameter "uri"
    .parameter "dirtyColumn"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 95
    sget-object v2, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_28

    .line 98
    const-string v0, "Exchange"

    const-string v1, "Contact Symc, Cursor is null, maybe bind transaction failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_27
    return v7

    .line 102
    :cond_28
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_36

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x1

    .line 104
    :goto_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_27

    :cond_34
    move v0, v7

    .line 102
    goto :goto_2f

    .line 104
    :catchall_36
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 22
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
    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 120
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "upload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 121
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 126
    .local v14, uri:Landroid/net/Uri;
    const-string v2, "dirty"

    invoke-static {v1, v14, v2}, Lcom/android/exchange/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    .line 127
    .local v10, changed:Z
    if-nez v10, :cond_54

    .line 128
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 131
    const-string v2, "dirty"

    invoke-static {v1, v14, v2}, Lcom/android/exchange/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v10

    .line 133
    :cond_54
    if-nez v10, :cond_5e

    .line 134
    const-string v2, "EAS ContactsSyncAdapterService"

    const-string v3, "Upload sync; no changes"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v10           #changed:Z
    .end local v14           #uri:Landroid/net/Uri;
    :goto_5d
    return-void

    .line 140
    :cond_5e
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v4, "emailAddress=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 147
    .local v7, accountCursor:Landroid/database/Cursor;
    :try_start_73
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 148
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 152
    .local v8, accountId:J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 154
    .local v12, syncInterval:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_a1

    .line 155
    const-string v2, "force"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a1

    const-string v2, "ignore_settings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_9a
    .catchall {:try_start_73 .. :try_end_9a} :catchall_d1

    move-result v2

    if-nez v2, :cond_a1

    .line 185
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .line 169
    :cond_a1
    :try_start_a1
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? AND type=66"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b5
    .catchall {:try_start_a1 .. :try_end_b5} :catchall_d1

    move-result-object v11

    .line 174
    .local v11, mailboxCursor:Landroid/database/Cursor;
    :try_start_b6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 177
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_c5
    .catchall {:try_start_b6 .. :try_end_c5} :catchall_cc

    .line 181
    :cond_c5
    :try_start_c5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_d1

    .line 185
    .end local v8           #accountId:J
    .end local v11           #mailboxCursor:Landroid/database/Cursor;
    .end local v12           #syncInterval:J
    :cond_c8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .line 181
    .restart local v8       #accountId:J
    .restart local v11       #mailboxCursor:Landroid/database/Cursor;
    .restart local v12       #syncInterval:J
    :catchall_cc
    move-exception v2

    :try_start_cd
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_d1

    .line 185
    .end local v8           #accountId:J
    .end local v11           #mailboxCursor:Landroid/database/Cursor;
    .end local v12           #syncInterval:J
    :catchall_d1
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 91
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    sget-object v1, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_6
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_15

    .line 84
    new-instance v0, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/ContactsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 86
    :cond_15
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
