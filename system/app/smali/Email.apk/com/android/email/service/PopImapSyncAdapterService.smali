.class public Lcom/android/email/service/PopImapSyncAdapterService;
.super Landroid/app/Service;
.source "PopImapSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
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
    invoke-static/range {p0 .. p5}, Lcom/android/email/service/PopImapSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 16
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
    .line 87
    const-string v0, "force"

    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 88
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 90
    .local v7, emailAddress:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 96
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 97
    .local v1, accountId:J
    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 99
    .local v3, mailboxId:J
    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-lez v0, :cond_56

    .line 100
    const-string v0, "PopImapSyncAdapterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting manual sync for account "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    .line 105
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #emailAddress:Ljava/lang/String;
    :cond_56
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 78
    sget-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    sget-object v1, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_6
    sget-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_15

    .line 71
    new-instance v0, Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/android/email/service/PopImapSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/service/PopImapSyncAdapterService;->sSyncAdapter:Lcom/android/email/service/PopImapSyncAdapterService$SyncAdapterImpl;

    .line 73
    :cond_15
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method
