.class public Lcom/android/email/service/MailService;
.super Landroid/app/Service;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/MailService$EmailSyncStatusObserver;,
        Lcom/android/email/service/MailService$ControllerResults;,
        Lcom/android/email/service/MailService$AccountSyncReport;
    }
.end annotation


# static fields
.field static final SYNC_REPORTS_ALL_ACCOUNTS_IF_EMPTY:I = -0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SYNC_REPORTS_RESET:I = -0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static mSyncReports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/MailService$AccountSyncReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/SingleRunningTask",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/email/Controller;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mControllerCallback:Lcom/android/email/Controller$Result;

.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    .line 686
    new-instance v0, Lcom/android/email/service/MailService$6;

    const-string v1, "ReconcilePopImapAccountsSync"

    invoke-direct {v0, v1}, Lcom/android/email/service/MailService$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    new-instance v0, Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$ControllerResults;-><init>(Lcom/android/email/service/MailService;)V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 658
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/MailService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/service/MailService;JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/service/MailService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/service/MailService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/service/MailService;->refreshSyncReports()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/service/MailService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/email/service/MailService;->mStartId:I

    return v0
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    return-void
.end method

.method public static actionSendPendingMail(Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    return-void
.end method

.method private cancel()V
    .registers 7

    .prologue
    .line 288
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 289
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v1

    .line 290
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 291
    return-void
.end method

.method private createAlarmIntent(J[JZ)Landroid/app/PendingIntent;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 400
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 401
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 404
    if-eqz p4, :cond_21

    .line 405
    const-string v1, "com.android.email.intent.extra.WATCHDOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    :cond_21
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 408
    return-object v0
.end method

.method public static getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 666
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v11, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Account;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 670
    .local v9, c:Landroid/database/Cursor;
    :cond_14
    :goto_14
    :try_start_14
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 671
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 672
    .local v7, accountId:J
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 673
    .local v10, protocol:Ljava/lang/String;
    if-eqz v10, :cond_14

    const-string v0, "pop3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "imap"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 674
    :cond_35
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 675
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_14

    .line 676
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3f

    goto :goto_14

    .line 681
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v7           #accountId:J
    .end local v10           #protocol:Ljava/lang/String;
    :catchall_3f
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_44
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 683
    return-object v11
.end method

.method public static hasMismatchInPopImapAccounts(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 711
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.android.email"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 713
    .local v0, accountManagerAccounts:[Landroid/accounts/Account;
    invoke-static {p0}, Lcom/android/email/service/MailService;->getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 714
    .local v1, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Account;>;"
    invoke-static {p0, v1, v0}, Lcom/android/email/provider/AccountReconciler;->accountsNeedReconciling(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;)Z

    move-result v2

    return v2
.end method

.method public static reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V
    .registers 4
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "providerContext"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/provider/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V

    .line 731
    return-void
.end method

.method public static reconcilePopImapAccountsSync(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 703
    sget-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    invoke-virtual {v0, p0}, Lcom/android/email/SingleRunningTask;->run(Ljava/lang/Object;)V

    .line 704
    return-void
.end method

.method private refreshSyncReports()V
    .registers 9

    .prologue
    .line 297
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v5

    .line 299
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 303
    .local v3, oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    const-wide/16 v6, -0x2

    invoke-virtual {p0, v6, v7, p0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 306
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 307
    .local v1, newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 308
    .local v2, oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v2, :cond_19

    .line 309
    iget-wide v6, v2, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iput-wide v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 310
    #calls: Lcom/android/email/service/MailService$AccountSyncReport;->setNextSyncTime()V
    invoke-static {v1}, Lcom/android/email/service/MailService$AccountSyncReport;->access$800(Lcom/android/email/service/MailService$AccountSyncReport;)V

    goto :goto_19

    .line 313
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v2           #oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v3           #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :catchall_3b
    move-exception v4

    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :cond_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    .line 314
    return-void
.end method

.method private reschedule(Landroid/app/AlarmManager;)V
    .registers 27
    .parameter "alarmMgr"

    .prologue
    .line 324
    const-wide/16 v21, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 325
    sget-object v22, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v22

    .line 326
    :try_start_c
    sget-object v21, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 327
    .local v14, numAccounts:I
    mul-int/lit8 v21, v14, 0x2

    move/from16 v0, v21

    new-array v3, v0, [J

    .line 328
    .local v3, accountInfo:[J
    const/4 v4, 0x0

    .line 330
    .local v4, accountInfoIndex:I
    const-wide v10, 0x7fffffffffffffffL

    .line 331
    .local v10, nextCheckTime:J
    const/4 v9, 0x0

    .line 332
    .local v9, nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 334
    .local v19, timeNow:J
    sget-object v21, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #accountInfoIndex:I
    .local v5, accountInfoIndex:I
    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 335
    .local v18, report:Lcom/android/email/service/MailService$AccountSyncReport;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    move/from16 v21, v0

    if-lez v21, :cond_2e

    .line 338
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v16, v0

    .line 339
    .local v16, prevSyncTime:J
    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 342
    .local v12, nextSyncTime:J
    const-wide/16 v23, 0x0

    cmp-long v21, v16, v23

    if-eqz v21, :cond_56

    cmp-long v21, v12, v19

    if-gez v21, :cond_72

    .line 343
    :cond_56
    const-wide/16 v10, 0x0

    .line 344
    move-object/from16 v9, v18

    .line 351
    :cond_5a
    :goto_5a
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v5

    .line 352
    add-int/lit8 v5, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v4

    goto :goto_2e

    .line 376
    .end local v3           #accountInfo:[J
    .end local v5           #accountInfoIndex:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v10           #nextCheckTime:J
    .end local v12           #nextSyncTime:J
    .end local v14           #numAccounts:I
    .end local v16           #prevSyncTime:J
    .end local v18           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v19           #timeNow:J
    :catchall_6f
    move-exception v21

    monitor-exit v22
    :try_end_71
    .catchall {:try_start_c .. :try_end_71} :catchall_6f

    throw v21

    .line 345
    .restart local v3       #accountInfo:[J
    .restart local v5       #accountInfoIndex:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v10       #nextCheckTime:J
    .restart local v12       #nextSyncTime:J
    .restart local v14       #numAccounts:I
    .restart local v16       #prevSyncTime:J
    .restart local v18       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v19       #timeNow:J
    :cond_72
    cmp-long v21, v12, v10

    if-gez v21, :cond_5a

    .line 346
    move-wide v10, v12

    .line 347
    move-object/from16 v9, v18

    goto :goto_5a

    .line 356
    .end local v12           #nextSyncTime:J
    .end local v16           #prevSyncTime:J
    .end local v18           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_7a
    :goto_7a
    :try_start_7a
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_89

    .line 357
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    const-wide/16 v23, -0x1

    aput-wide v23, v3, v5

    move v5, v4

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    goto :goto_7a

    .line 361
    :cond_89
    if-nez v9, :cond_af

    const-wide/16 v7, -0x1

    .line 362
    .local v7, idToCheck:J
    :goto_8d
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v7, v8, v3, v1}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v15

    .line 364
    .local v15, pi:Landroid/app/PendingIntent;
    if-nez v9, :cond_b2

    .line 365
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 366
    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_ad

    .line 367
    const-string v21, "Email-MailService"

    const-string v23, "reschedule: alarm cancel - no account to check"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_ad
    :goto_ad
    monitor-exit v22

    .line 377
    return-void

    .line 361
    .end local v7           #idToCheck:J
    .end local v15           #pi:Landroid/app/PendingIntent;
    :cond_af
    iget-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    goto :goto_8d

    .line 370
    .restart local v7       #idToCheck:J
    .restart local v15       #pi:Landroid/app/PendingIntent;
    :cond_b2
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10, v11, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 371
    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_ad

    .line 372
    const-string v21, "Email-MailService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reschedule: alarm set at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_7a .. :try_end_e9} :catchall_6f

    goto :goto_ad
.end method

.method private restoreSyncReports(Landroid/content/Intent;)V
    .registers 18
    .parameter "restoreIntent"

    .prologue
    .line 594
    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 595
    sget-object v11, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v11

    .line 596
    :try_start_a
    const-string v10, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 597
    .local v3, accountInfo:[J
    if-nez v3, :cond_1d

    .line 598
    const-string v10, "Email-MailService"

    const-string v12, "no data in intent to restore"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    monitor-exit v11

    .line 615
    :goto_1c
    return-void

    .line 601
    :cond_1d
    const/4 v4, 0x0

    .line 602
    .local v4, accountInfoIndex:I
    array-length v6, v3

    .local v6, accountInfoLimit:I
    move v5, v4

    .line 603
    .end local v4           #accountInfoIndex:I
    .local v5, accountInfoIndex:I
    :cond_20
    :goto_20
    if-ge v5, v6, :cond_49

    .line 604
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    aget-wide v1, v3, v5

    .line 605
    .local v1, accountId:J
    add-int/lit8 v5, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    aget-wide v7, v3, v4

    .line 606
    .local v7, prevSync:J
    sget-object v10, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 607
    .local v9, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v9, :cond_20

    .line 608
    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_20

    .line 609
    iput-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 610
    #calls: Lcom/android/email/service/MailService$AccountSyncReport;->setNextSyncTime()V
    invoke-static {v9}, Lcom/android/email/service/MailService$AccountSyncReport;->access$800(Lcom/android/email/service/MailService$AccountSyncReport;)V

    goto :goto_20

    .line 614
    .end local v1           #accountId:J
    .end local v3           #accountInfo:[J
    .end local v5           #accountInfoIndex:I
    .end local v6           #accountInfoLimit:I
    .end local v7           #prevSync:J
    .end local v9           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_46
    move-exception v10

    monitor-exit v11
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_46

    throw v10

    .restart local v3       #accountInfo:[J
    .restart local v5       #accountInfoIndex:I
    .restart local v6       #accountInfoLimit:I
    :cond_49
    :try_start_49
    monitor-exit v11
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_46

    goto :goto_1c
.end method

.method private setWatchdog(JLandroid/app/AlarmManager;)V
    .registers 11
    .parameter "accountId"
    .parameter "alarmMgr"

    .prologue
    .line 387
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v2

    .line 388
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 389
    .local v3, timeNow:J
    const-wide/32 v5, 0x927c0

    add-long v0, v3, v5

    .line 390
    .local v0, nextCheckTime:J
    const/4 v5, 0x2

    invoke-virtual {p3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 391
    return-void
.end method

.method public static setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "email"
    .parameter "calendar"
    .parameter "contacts"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "ZZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 736
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v4, options:Landroid/os/Bundle;
    iget-wide v5, p1, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v8

    .line 738
    .local v8, hostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;
    if-nez v8, :cond_f

    .line 750
    :goto_e
    return-void

    .line 740
    :cond_f
    const-string v0, "username"

    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "password"

    iget-object v3, v8, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "contacts"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 743
    const-string v0, "calendar"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 744
    const-string v0, "email"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 745
    iget-object v0, v8, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v1, "com.android.exchange"

    .line 748
    .local v1, accountType:Ljava/lang/String;
    :goto_38
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v3, v2

    move-object v5, v2

    move-object v6, p5

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_e

    .line 745
    .end local v1           #accountType:Ljava/lang/String;
    :cond_44
    const-string v1, "com.android.email"

    goto :goto_38
.end method

.method private setupSyncReports(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 470
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    .line 471
    :try_start_3
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private syncOneAccount(Lcom/android/email/Controller;JI)Z
    .registers 12
    .parameter "controller"
    .parameter "checkAccountId"
    .parameter "startId"

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-static {p0, p2, p3, v0}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 421
    .local v3, inboxId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_c

    .line 425
    :goto_b
    return v0

    .line 424
    :cond_c
    int-to-long v5, p4

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->serviceCheckMail(JJJ)V

    .line 425
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .registers 9
    .parameter "accountId"
    .parameter "newCount"

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 567
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v2

    .line 568
    :try_start_6
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 569
    .local v0, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-nez v0, :cond_33

    .line 571
    const-string v1, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No account to update for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, 0x0

    monitor-exit v2

    .line 581
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :goto_32
    return-object v0

    .line 576
    .restart local v0       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 577
    #calls: Lcom/android/email/service/MailService$AccountSyncReport;->setNextSyncTime()V
    invoke-static {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->access$800(Lcom/android/email/service/MailService$AccountSyncReport;)V

    .line 578
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_5c

    .line 579
    const-string v1, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_5c
    monitor-exit v2

    goto :goto_32

    .line 582
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_5e
    move-exception v1

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_5e

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 284
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 285
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 141
    new-instance v0, Lcom/android/email/service/MailService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$1;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 149
    iput p3, p0, Lcom/android/email/service/MailService;->mStartId:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, action:Ljava/lang/String;
    const-string v0, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 153
    .local v3, accountId:J
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    .line 154
    iget-object v0, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    .line 156
    iput-object p0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    .line 158
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 160
    .local v5, alarmManager:Landroid/app/AlarmManager;
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 162
    new-instance v0, Lcom/android/email/service/MailService$2;

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/email/service/MailService$2;-><init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 273
    :cond_49
    :goto_49
    const/4 v0, 0x2

    return v0

    .line 207
    :cond_4b
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 208
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_5e

    .line 209
    const-string v0, "Email-MailService"

    const-string v1, "action: cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_5e
    invoke-direct {p0}, Lcom/android/email/service/MailService;->cancel()V

    .line 212
    invoke-virtual {p0, p3}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_49

    .line 214
    :cond_65
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_DELETE_EXCHANGE_ACCOUNTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 215
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_78

    .line 216
    const-string v0, "Email-MailService"

    const-string v1, "action: delete exchange accounts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_78
    new-instance v0, Lcom/android/email/service/MailService$3;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$3;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 237
    invoke-virtual {p0, p3}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_49

    .line 239
    :cond_84
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 240
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_97

    .line 241
    const-string v0, "Email-MailService"

    const-string v1, "action: send pending mail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_97
    new-instance v0, Lcom/android/email/service/MailService$4;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/email/service/MailService$4;-><init>(Lcom/android/email/service/MailService;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 249
    invoke-virtual {p0, p3}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_49

    .line 251
    :cond_a3
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 252
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b6

    .line 253
    const-string v0, "Email-MailService"

    const-string v1, "action: reschedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_b6
    new-instance v0, Lcom/android/email/service/MailService$5;

    invoke-direct {v0, p0, v5, p3}, Lcom/android/email/service/MailService$5;-><init>(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_49
.end method

.method setupSyncReportsLocked(JLandroid/content/Context;)V
    .registers 13
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 481
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_9e

    .line 483
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 484
    const-wide/16 p1, -0x1

    .line 499
    :cond_11
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_ba

    .line 500
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    .line 505
    :goto_19
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v6

    .line 507
    if-eqz v6, :cond_2a

    .line 508
    const-string v2, "Email-MailService"

    const-string v3, "One-minute refresh enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2a
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 514
    :cond_33
    :goto_33
    :try_start_33
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 515
    const-class v0, Lcom/android/emailcommon/provider/Account;

    invoke-static {v4, v0}, Lcom/android/emailcommon/provider/Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 519
    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-wide v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_33

    iget-wide v1, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_33

    .line 526
    new-instance v5, Lcom/android/email/service/MailService$AccountSyncReport;

    invoke-direct {v5}, Lcom/android/email/service/MailService$AccountSyncReport;-><init>()V

    .line 527
    iget v1, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 530
    iget-object v2, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v2, v7, v8}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 531
    const/4 v1, -0x1

    move v3, v1

    .line 536
    :goto_6c
    iget-wide v1, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    .line 537
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 538
    if-lez v3, :cond_c9

    const-wide/16 v1, 0x0

    :goto_78
    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 540
    iput v3, v5, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    .line 543
    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.email"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "com.android.email.provider"

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    .line 550
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    iget-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catchall {:try_start_33 .. :try_end_98} :catchall_99

    goto :goto_33

    .line 553
    :catchall_99
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 485
    :cond_9e
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_ad

    .line 487
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 555
    :goto_ac
    return-void

    .line 492
    :cond_ad
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_ac

    .line 502
    :cond_ba
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_19

    .line 532
    :cond_c2
    if-eqz v6, :cond_d0

    if-ltz v1, :cond_d0

    .line 533
    const/4 v1, 0x1

    move v3, v1

    goto :goto_6c

    .line 538
    :cond_c9
    const-wide/16 v1, -0x1

    goto :goto_78

    .line 553
    :cond_cc
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_ac

    :cond_d0
    move v3, v1

    goto :goto_6c
.end method
