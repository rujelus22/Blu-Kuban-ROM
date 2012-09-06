.class public Lcom/android/exchange/EmailSyncAdapterService;
.super Landroid/app/Service;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/EmailSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
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
    .line 38
    invoke-static/range {p0 .. p5}, Lcom/android/exchange/EmailSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 17
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
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "EAS EmailSyncAdapterService"

    const-string v2, "performSync"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/EmailSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, accountCursor:Landroid/database/Cursor;
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 102
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 104
    .local v7, accountId:J
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/EmailSyncAdapterService;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_73

    move-result-object v9

    .line 107
    .local v9, mailboxCursor:Landroid/database/Cursor;
    :try_start_3e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 108
    const-string v1, "EAS EmailSyncAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mail sync requested for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V
    :try_end_67
    .catchall {:try_start_3e .. :try_end_67} :catchall_6e

    .line 114
    :cond_67
    :try_start_67
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_73

    .line 118
    .end local v7           #accountId:J
    .end local v9           #mailboxCursor:Landroid/database/Cursor;
    :cond_6a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    return-void

    .line 114
    .restart local v7       #accountId:J
    .restart local v9       #mailboxCursor:Landroid/database/Cursor;
    :catchall_6e
    move-exception v1

    :try_start_6f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 118
    .end local v7           #accountId:J
    .end local v9           #mailboxCursor:Landroid/database/Cursor;
    :catchall_73
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 82
    sget-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    sget-object v1, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_6
    sget-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_15

    .line 75
    new-instance v0, Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/exchange/EmailSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/EmailSyncAdapterService;->sSyncAdapter:Lcom/android/exchange/EmailSyncAdapterService$SyncAdapterImpl;

    .line 77
    :cond_15
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
