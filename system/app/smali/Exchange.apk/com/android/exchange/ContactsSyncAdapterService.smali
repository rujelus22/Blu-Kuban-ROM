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
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 45
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
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
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
    .line 40
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 10
    .parameter "resolver"
    .parameter "uri"
    .parameter "dirtyColumn"

    .prologue
    const/4 v4, 0x0

    .line 88
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

    .line 90
    .local v6, c:Landroid/database/Cursor;
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2a

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x1

    .line 92
    :goto_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_24

    .line 92
    :catchall_2a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 19
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
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "upload"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 109
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    const-string v3, "com.android.exchange"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 114
    .local v11, uri:Landroid/net/Uri;
    const-string v1, "dirty"

    invoke-static {v0, v11, v1}, Lcom/android/exchange/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v9

    .line 115
    .local v9, changed:Z
    if-nez v9, :cond_4e

    .line 116
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    const-string v3, "com.android.exchange"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 121
    const-string v1, "dirty"

    invoke-static {v0, v11, v1}, Lcom/android/exchange/ContactsSyncAdapterService;->hasDirtyRows(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v9

    .line 123
    :cond_4e
    if-nez v9, :cond_58

    .line 124
    const-string v1, "EAS ContactsSyncAdapterService"

    const-string v2, "Upload sync; no changes"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v9           #changed:Z
    .end local v11           #uri:Landroid/net/Uri;
    :goto_57
    return-void

    .line 130
    :cond_58
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    .local v6, accountCursor:Landroid/database/Cursor;
    :try_start_6b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 135
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 137
    .local v7, accountId:J
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/ContactsSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=66"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_c0

    move-result-object v10

    .line 140
    .local v10, mailboxCursor:Landroid/database/Cursor;
    :try_start_8b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 141
    const-string v1, "EAS ContactsSyncAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact sync requested for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_b4
    .catchall {:try_start_8b .. :try_end_b4} :catchall_bb

    .line 147
    :cond_b4
    :try_start_b4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_c0

    .line 151
    .end local v7           #accountId:J
    .end local v10           #mailboxCursor:Landroid/database/Cursor;
    :cond_b7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_57

    .line 147
    .restart local v7       #accountId:J
    .restart local v10       #mailboxCursor:Landroid/database/Cursor;
    :catchall_bb
    move-exception v1

    :try_start_bc
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_c0

    .line 151
    .end local v7           #accountId:J
    .end local v10           #mailboxCursor:Landroid/database/Cursor;
    :catchall_c0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 84
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    sget-object v1, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_6
    sget-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_15

    .line 77
    new-instance v0, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/ContactsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/ContactsSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/ContactsSyncAdapterService$SyncAdapterImpl;

    .line 79
    :cond_15
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
