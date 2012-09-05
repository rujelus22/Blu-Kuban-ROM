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
.field private static AccountRefreshRequst:Z

.field private static final NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field public static NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I

.field public static NOTIFICATION_ID_NEW_MESSAGES:I

.field public static NOTIFICATION_ID_SECURITY_NEEDED:I

.field private static RefreshRequestAccountId:J

.field static mClearNewMessages:Landroid/content/ContentValues;

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

.field private static sMailService:Lcom/android/email/service/MailService;

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

.field private final mControllerCallback:Lcom/android/email/Controller$Result;

.field private mHandler:Landroid/os/Handler;

.field public mIsSocialHubOnTop:Z

.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    sput v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    .line 94
    const/4 v0, 0x2

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    .line 95
    const/4 v0, 0x3

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I

    .line 134
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "newMessageCount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 145
    sput-boolean v2, Lcom/android/email/service/MailService;->AccountRefreshRequst:Z

    .line 146
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/service/MailService;->RefreshRequestAccountId:J

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    .line 158
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    .line 159
    sget-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1410
    new-instance v0, Lcom/android/email/service/MailService$10;

    const-string v1, "ReconcilePopImapAccountsSync"

    invoke-direct {v0, v1}, Lcom/android/email/service/MailService$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 139
    new-instance v0, Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$ControllerResults;-><init>(Lcom/android/email/service/MailService;)V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mHandler:Landroid/os/Handler;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/MailService;->mIsSocialHubOnTop:Z

    .line 1374
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/MailService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/email/service/MailService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/service/MailService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/service/MailService;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->notifyNewMessages(JJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/service/MailService;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->notifySendFailed_OutOfMemoryError(JJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/service/MailService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/email/service/MailService;->mStartId:I

    return v0
.end method

.method public static accountDeleted(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 1455
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 1456
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 1457
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 1458
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 1459
    return-void
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    return-void
.end method

.method public static actionNotifyNewMessages(Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    return-void
.end method

.method public static actionNotifyNewMessages(Landroid/content/Context;JJI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 266
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 267
    const-string v1, "com.android.email.intent.extra.MSG_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 268
    const-string v1, "com.android.email.intent.extra.MSG_COUNT"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 270
    return-void
.end method

.method public static actionNotifySendFailedOutOfMemoryError(Landroid/content/Context;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SENDFAIL_OUTOFMEMORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 276
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 277
    const-string v1, "com.android.email.intent.extra.MESSAGE"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    return-void
.end method

.method public static actionNotifySendResult(Landroid/content/Context;JJZLjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SEND_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 285
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 286
    const-string v1, "com.android.email.intent.extra.MESSAGE"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    const-string v1, "com.android.email.intent.extra.MESSAGE_SEND_FAILED"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const-string v1, "com.android.email.intent.extra.MESSAGE_TITLE"

    if-nez p6, :cond_21

    const-string p6, ""

    :cond_21
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 290
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 176
    return-void
.end method

.method public static actionSendPendingMail(Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    return-void
.end method

.method public static actionSyncOneAccount(Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    return-void
.end method

.method private cancel()V
    .registers 7

    .prologue
    .line 762
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 763
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v1

    .line 764
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 765
    return-void
.end method

.method public static getCountofAccounts(Landroid/content/Context;)I
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1582
    .line 1587
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "SUM(unreadCount)"

    aput-object v1, v2, v0

    .line 1591
    const-string v3, "type=0"

    .line 1592
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_4c

    move-result-object v1

    .line 1595
    if-eqz v1, :cond_5c

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1596
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1597
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_5a

    move-result v0

    .line 1602
    :goto_28
    if-eqz v1, :cond_33

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1603
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1606
    :cond_33
    const-string v1, "Email-MailService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getCountofAccounts, total email count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    return v0

    .line 1602
    :catchall_4c
    move-exception v0

    move-object v1, v6

    :goto_4e
    if-eqz v1, :cond_59

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_59

    .line 1603
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1602
    :cond_59
    throw v0

    :catchall_5a
    move-exception v0

    goto :goto_4e

    :cond_5c
    move v0, v7

    goto :goto_28
.end method

.method static getMailServiceForTest()Lcom/android/email/service/MailService;
    .registers 1

    .prologue
    .line 293
    sget-object v0, Lcom/android/email/service/MailService;->sMailService:Lcom/android/email/service/MailService;

    return-object v0
.end method

.method public static getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1382
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_6d

    move-result-object v1

    .line 1387
    if-nez v1, :cond_17

    .line 1389
    :cond_17
    :goto_17
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1390
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1391
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1393
    if-eqz v0, :cond_17

    const-string v4, "pop3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "imap"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "snc"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1396
    :cond_40
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1397
    if-eqz v0, :cond_17

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "snc@snc.snc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1398
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_17 .. :try_end_53} :catchall_54

    goto :goto_17

    .line 1404
    :catchall_54
    move-exception v0

    :goto_55
    if-eqz v1, :cond_60

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_60

    .line 1405
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1404
    :cond_60
    throw v0

    :cond_61
    if-eqz v1, :cond_6c

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1405
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1407
    :cond_6c
    return-object v7

    .line 1404
    :catchall_6d
    move-exception v0

    move-object v1, v6

    goto :goto_55
.end method

.method private isBackgroundDataEnabled()Z
    .registers 2

    .prologue
    .line 1370
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1371
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method private notifyNewMessages(JJ)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 1333
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    .line 1334
    :try_start_3
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 1335
    if-eqz v0, :cond_19

    iget v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    if-eqz v2, :cond_19

    iget-boolean v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    if-nez v2, :cond_1b

    .line 1336
    :cond_19
    monitor-exit v1

    .line 1359
    :goto_1a
    return-void

    .line 1338
    :cond_1b
    iget v5, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 1339
    invoke-virtual {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->getJustFetchedMessageCount()I

    move-result v6

    .line 1340
    iget v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    iput v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    .line 1341
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_a7

    .line 1342
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->isEmailListActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3f

    .line 1343
    :cond_36
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->showNewMessageNotification(JJII)V

    .line 1346
    :cond_3f
    const-string v0, "Email-MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNewMessages accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unseenMessageCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " justFetchedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1356
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/service/TextToSpeechService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1357
    const-string v2, "TTS_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    invoke-virtual {p0, v1}, Lcom/android/email/service/MailService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1a

    .line 1341
    :catchall_a7
    move-exception v0

    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v0
.end method

.method private notifySendFailed_OutOfMemoryError(JJ)V
    .registers 11
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 1362
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/NotificationController;->showSendFailedNotification(JJI)V

    .line 1364
    return-void
.end method

.method public static reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;ZLandroid/content/ContentResolver;)V
    .registers 7
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "blockExternalChanges"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Z",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1475
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Account;>;"
    invoke-static {p0, p1, p2, p4}, Lcom/android/emailcommon/utility/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1480
    .local v0, accountsDeleted:Z
    invoke-static {p0, p1, p2, p4}, Lcom/android/email/service/MailService;->reconcileAccountsforprovider(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z

    .line 1483
    if-nez p3, :cond_e

    if-eqz v0, :cond_e

    .line 1484
    invoke-static {p0}, Lcom/android/email/service/MailService;->accountDeleted(Landroid/content/Context;)V

    .line 1488
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    .line 1491
    return-void
.end method

.method public static reconcileAccountsforprovider(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1524
    .line 1525
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1526
    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 1528
    array-length v7, p2

    move v4, v2

    :goto_18
    if-ge v4, v7, :cond_73

    aget-object v8, p2, v4

    .line 1529
    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    move v4, v3

    .line 1534
    :goto_25
    if-nez v4, :cond_71

    .line 1535
    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_38

    .line 1536
    const-string v0, "Email"

    const-string v4, "Account reconciler noticed incomplete account; ignoring"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1528
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1547
    :cond_38
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    if-nez v1, :cond_66

    .line 1554
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3, v1, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1560
    :try_start_4b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "content://logs/email"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "account_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_66} :catch_6f

    .line 1573
    :cond_66
    :goto_66
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    move v0, v3

    :goto_6c
    move v1, v0

    .line 1577
    goto :goto_8

    .line 1578
    :cond_6e
    return v1

    .line 1565
    :catch_6f
    move-exception v1

    goto :goto_66

    :cond_71
    move v0, v1

    goto :goto_6c

    :cond_73
    move v4, v2

    goto :goto_25
.end method

.method public static reconcilePopImapAccountsSync(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 1441
    sget-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    invoke-virtual {v0, p0}, Lcom/android/email/SingleRunningTask;->run(Ljava/lang/Object;)V

    .line 1442
    return-void
.end method

.method public static resetNewMessageCount(Landroid/content/Context;J)V
    .registers 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 224
    sget-object v3, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v3

    .line 225
    :try_start_3
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 226
    .local v1, report:Lcom/android/email/service/MailService$AccountSyncReport;
    const-wide/16 v4, -0x1

    cmp-long v2, p1, v4

    if-eqz v2, :cond_25

    iget-wide v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    cmp-long v2, p1, v4

    if-nez v2, :cond_d

    .line 227
    :cond_25
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 228
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    goto :goto_d

    .line 231
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2f
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 233
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 235
    new-instance v2, Lcom/android/email/service/MailService$1;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/email/service/MailService$1;-><init>(JLandroid/content/Context;)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method

.method private setWatchdog(JLandroid/app/AlarmManager;)V
    .registers 11
    .parameter "accountId"
    .parameter "alarmMgr"

    .prologue
    .line 884
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v2

    .line 885
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 886
    .local v3, timeNow:J
    const-wide/32 v5, 0x927c0

    add-long v0, v3, v5

    .line 887
    .local v0, nextCheckTime:J
    const/4 v5, 0x2

    invoke-virtual {p3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 888
    return-void
.end method

.method public static setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "ZZZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1496
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1497
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 1500
    :try_start_b
    const-string v1, "username"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    const-string v1, "password"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string v1, "contacts"

    invoke-virtual {v4, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1503
    const-string v1, "calendar"

    invoke-virtual {v4, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1504
    const-string v1, "email"

    invoke-virtual {v4, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1505
    const-string v1, "tasks"

    invoke-virtual {v4, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1507
    const-string v1, "account_id"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1509
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v1, "com.android.exchange"

    .line 1511
    :goto_40
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1516
    :goto_4c
    return-void

    .line 1509
    :cond_4d
    const-string v1, "com.android.email"
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_50

    goto :goto_40

    .line 1513
    :catch_50
    move-exception v0

    .line 1514
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c
.end method

.method private syncOneAccount(Lcom/android/email/Controller;JI)Z
    .registers 13
    .parameter "controller"
    .parameter "checkAccountId"
    .parameter "startId"

    .prologue
    const/4 v0, 0x0

    .line 919
    invoke-static {p0, p2, p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 920
    .local v3, inboxId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_c

    .line 927
    :goto_b
    return v0

    .line 923
    :cond_c
    int-to-long v5, p4

    sget-boolean v7, Lcom/android/email/service/MailService;->AccountRefreshRequst:Z

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->serviceCheckMail(JJJZ)V

    .line 927
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static updateBadgeProvider(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 1613
    new-instance v0, Lcom/android/email/service/MailService$11;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$11;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/service/MailService$11;->start()V

    .line 1652
    return-void
.end method


# virtual methods
.method createAlarmIntent(J[JZ)Landroid/app/PendingIntent;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 898
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 899
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 901
    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 902
    if-eqz p4, :cond_21

    .line 903
    const-string v1, "com.android.email.intent.extra.WATCHDOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 905
    :cond_21
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 906
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 752
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 757
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 758
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 759
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 53
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 298
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 300
    sput-object p0, Lcom/android/email/service/MailService;->sMailService:Lcom/android/email/service/MailService;

    .line 302
    invoke-static/range {p0 .. p0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    .line 304
    new-instance v4, Lcom/android/email/service/MailService$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/email/service/MailService$2;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 311
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/service/MailService;->mStartId:I

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    .line 313
    .local v32, action:Ljava/lang/String;
    const-string v4, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 314
    .local v7, accountId:J
    const-string v4, "com.android.email.intent.extra.MSG_ID"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    .line 315
    .local v42, lastestMsgLong:Ljava/lang/Long;
    if-nez v42, :cond_8d

    const-wide/16 v15, -0x1

    .line 316
    .local v15, lastestMsgId:J
    :goto_38
    const-string v4, "com.android.email.intent.extra.MSG_COUNT"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 317
    .local v43, msgCountInt:Ljava/lang/Integer;
    if-nez v43, :cond_92

    const/4 v14, 0x0

    .line 319
    .local v14, msgCountfromEAS:I
    :goto_48
    invoke-static/range {p0 .. p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    .line 323
    const-string v4, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 324
    .local v9, alarmManager:Landroid/app/AlarmManager;
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 327
    new-instance v4, Lcom/android/email/service/MailService$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/email/service/MailService$3;-><init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 747
    :cond_8b
    :goto_8b
    const/4 v4, 0x2

    return v4

    .line 315
    .end local v9           #alarmManager:Landroid/app/AlarmManager;
    .end local v14           #msgCountfromEAS:I
    .end local v15           #lastestMsgId:J
    .end local v43           #msgCountInt:Ljava/lang/Integer;
    :cond_8d
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_38

    .line 317
    .restart local v15       #lastestMsgId:J
    .restart local v43       #msgCountInt:Ljava/lang/Integer;
    :cond_92
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_48

    .line 382
    .restart local v9       #alarmManager:Landroid/app/AlarmManager;
    .restart local v14       #msgCountfromEAS:I
    :cond_97
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 383
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_ac

    .line 384
    const-string v4, "Email-MailService"

    const-string v5, "action: cancel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_ac
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/MailService;->cancel()V

    .line 387
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_8b

    .line 388
    :cond_b7
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_DELETE_EXCHANGE_ACCOUNTS"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 389
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_cc

    .line 390
    const-string v4, "Email-MailService"

    const-string v5, "action: delete exchange accounts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_cc
    new-instance v4, Lcom/android/email/service/MailService$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/email/service/MailService$4;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_8b

    .line 411
    :cond_de
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 412
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_f3

    .line 413
    const-string v4, "Email-MailService"

    const-string v5, "action: send pending mail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_f3
    new-instance v4, Lcom/android/email/service/MailService$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7, v8}, Lcom/android/email/service/MailService$5;-><init>(Lcom/android/email/service/MailService;J)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 420
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_8b

    .line 421
    :cond_105
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 422
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_11a

    .line 423
    const-string v4, "Email-MailService"

    const-string v5, "action: reschedule"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_11a
    invoke-static/range {p0 .. p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v44

    .line 428
    .local v44, nc:Lcom/android/email/NotificationController;
    new-instance v4, Lcom/android/email/service/MailService$6;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v9, v1}, Lcom/android/email/service/MailService$6;-><init>(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;I)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_8b

    .line 451
    .end local v44           #nc:Lcom/android/email/NotificationController;
    :cond_12c
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_145

    .line 454
    new-instance v10, Lcom/android/email/service/MailService$7;

    move-object/from16 v11, p0

    move-wide v12, v7

    move/from16 v17, p3

    invoke-direct/range {v10 .. v17}, Lcom/android/email/service/MailService$7;-><init>(Lcom/android/email/service/MailService;JIJI)V

    invoke-static {v10}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_8b

    .line 493
    :cond_145
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SENDFAIL_OUTOFMEMORY"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 494
    const-string v4, "com.android.email.intent.extra.MESSAGE"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 496
    .local v21, messageId:J
    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify accountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "notify messageId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v17, Lcom/android/email/service/MailService$8;

    move-object/from16 v18, p0

    move-wide/from16 v19, v7

    move/from16 v23, p3

    invoke-direct/range {v17 .. v23}, Lcom/android/email/service/MailService$8;-><init>(Lcom/android/email/service/MailService;JJI)V

    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_8b

    .line 510
    .end local v21           #messageId:J
    :cond_193
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SEND_RESULT"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    .line 511
    const-string v4, "com.android.email.intent.extra.MESSAGE"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v21

    .line 512
    .restart local v21       #messageId:J
    const-string v4, "com.android.email.intent.extra.MESSAGE_SEND_FAILED"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 513
    .local v20, sendfailed:Z
    const-string v4, "com.android.email.intent.extra.MESSAGE_TITLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 515
    .local v25, title:Ljava/lang/String;
    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send result : notify accountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "notify messageId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v18, Lcom/android/email/service/MailService$9;

    move-object/from16 v19, p0

    move-wide/from16 v23, v7

    move/from16 v26, p3

    invoke-direct/range {v18 .. v26}, Lcom/android/email/service/MailService$9;-><init>(Lcom/android/email/service/MailService;ZJJLjava/lang/String;I)V

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_8b

    .line 537
    .end local v20           #sendfailed:Z
    .end local v21           #messageId:J
    .end local v25           #title:Ljava/lang/String;
    :cond_1f2
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_206

    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_ONE_ACCOUNT"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27e

    .line 540
    :cond_206
    :try_start_206
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 541
    const-string v4, "Email-MailService"

    const-string v5, "onStartCommand: sleep 1000"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21c
    .catch Ljava/lang/InterruptedException; {:try_start_206 .. :try_end_21c} :catch_275

    .line 550
    :cond_21c
    :goto_21c
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    .line 551
    const-string v4, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    .line 553
    .local v34, checkAccountId:J
    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: sync one account for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sput-wide v34, Lcom/android/email/service/MailService;->RefreshRequestAccountId:J

    .line 557
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/email/service/MailService;->AccountRefreshRequst:Z

    .line 561
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_25e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    move/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 564
    :cond_25e
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_26c

    .line 565
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 568
    :cond_26c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto/16 :goto_8b

    .line 544
    .end local v34           #checkAccountId:J
    :catch_275
    move-exception v37

    .line 545
    .local v37, e:Ljava/lang/InterruptedException;
    const-string v4, "Email-MailService"

    const-string v5, "onStartCommand: InterruptedException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c

    .line 573
    .end local v37           #e:Ljava/lang/InterruptedException;
    :cond_27e
    const-string v4, "com.android.email.intent.action.MAIL_SERVICE_REFRESH_MULTI_ACCOUNT"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f4

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v28, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v26 .. v31}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 577
    .local v33, c:Landroid/database/Cursor;
    :cond_29c
    :goto_29c
    :try_start_29c
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4dc

    .line 578
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 579
    .restart local v34       #checkAccountId:J
    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: sync multi accounts for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_2d9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    move/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v4

    if-nez v4, :cond_29c

    .line 582
    :cond_2d9
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_2e7

    .line 583
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 585
    :cond_2e7
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V
    :try_end_2ee
    .catchall {:try_start_29c .. :try_end_2ee} :catchall_2ef

    goto :goto_29c

    .line 589
    .end local v34           #checkAccountId:J
    :catchall_2ef
    move-exception v4

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    throw v4

    .line 593
    .end local v33           #c:Landroid/database/Cursor;
    :cond_2f4
    const-string v4, "com.android.email.intent.action.ACTION_SOCIALHUB_ON_TOP"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32a

    .line 594
    const-string v4, "com.android.email.intent.extra.SOCIALHUB_ON_TOP"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/email/service/MailService;->mIsSocialHubOnTop:Z

    .line 595
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/email/service/MailService;->mIsSocialHubOnTop:Z

    if-eqz v4, :cond_8b

    .line 596
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/app/NotificationManager;

    .line 597
    .local v46, notificationManager:Landroid/app/NotificationManager;
    sget v4, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 598
    const/4 v4, 0x5

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_8b

    .line 603
    .end local v46           #notificationManager:Landroid/app/NotificationManager;
    :cond_32a
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_EMAIL_DELETE"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_368

    .line 604
    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 609
    .local v41, isTest:Z
    if-eqz v41, :cond_35f

    .line 610
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v48

    .line 617
    .local v48, tempString:[Ljava/lang/String;
    :goto_34b
    new-instance v36, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    .line 618
    .local v36, der:Lcom/android/email/service/DoExternalRequest;
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/email/service/DoExternalRequest;->onMultiDeleteRequest([Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 613
    .end local v36           #der:Lcom/android/email/service/DoExternalRequest;
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_35f
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .restart local v48       #tempString:[Ljava/lang/String;
    goto :goto_34b

    .line 623
    .end local v41           #isTest:Z
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_368
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_ACCOUNT_DELETE"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c3

    .line 624
    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 628
    .restart local v41       #isTest:Z
    if-eqz v41, :cond_3ba

    .line 629
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v47

    .line 635
    .local v47, tString:[Ljava/lang/String;
    :goto_389
    if-eqz v47, :cond_8b

    move-object/from16 v0, v47

    array-length v4, v0

    if-lez v4, :cond_8b

    .line 636
    const/16 v38, 0x0

    .line 637
    .local v38, i:I
    const/16 v38, 0x0

    :goto_394
    move-object/from16 v0, v47

    array-length v4, v0

    move/from16 v0, v38

    if-ge v0, v4, :cond_8b

    .line 638
    aget-object v4, v47, v38

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 654
    .restart local v34       #checkAccountId:J
    new-instance v36, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    .line 655
    .restart local v36       #der:Lcom/android/email/service/DoExternalRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    move-wide/from16 v1, v34

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/email/service/DoExternalRequest;->removeAccounts(Landroid/content/Context;J)Z

    .line 637
    add-int/lit8 v38, v38, 0x1

    goto :goto_394

    .line 632
    .end local v34           #checkAccountId:J
    .end local v36           #der:Lcom/android/email/service/DoExternalRequest;
    .end local v38           #i:I
    .end local v47           #tString:[Ljava/lang/String;
    :cond_3ba
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .restart local v47       #tString:[Ljava/lang/String;
    goto :goto_389

    .line 660
    .end local v41           #isTest:Z
    .end local v47           #tString:[Ljava/lang/String;
    :cond_3c3
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_MARK_AS_READ"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40c

    .line 661
    const-string v4, "is_read"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v40

    .line 662
    .local v40, isRead:Z
    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 667
    .restart local v41       #isTest:Z
    if-eqz v41, :cond_403

    .line 668
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v48

    .line 675
    .restart local v48       #tempString:[Ljava/lang/String;
    :goto_3ed
    new-instance v36, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    .line 676
    .restart local v36       #der:Lcom/android/email/service/DoExternalRequest;
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/DoExternalRequest;->onMarkAsReadRequest([Ljava/lang/String;Z)V

    goto/16 :goto_8b

    .line 671
    .end local v36           #der:Lcom/android/email/service/DoExternalRequest;
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_403
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .restart local v48       #tempString:[Ljava/lang/String;
    goto :goto_3ed

    .line 680
    .end local v40           #isRead:Z
    .end local v41           #isTest:Z
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_40c
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_DB_SET_FAVORITE"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_455

    .line 681
    const-string v4, "is_favorite"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v39

    .line 683
    .local v39, isFavorite:Z
    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 688
    .restart local v41       #isTest:Z
    if-eqz v41, :cond_44c

    .line 689
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v48

    .line 696
    .restart local v48       #tempString:[Ljava/lang/String;
    :goto_436
    new-instance v36, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    .line 697
    .restart local v36       #der:Lcom/android/email/service/DoExternalRequest;
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/DoExternalRequest;->onSetFavoriteRequest([Ljava/lang/String;Z)V

    goto/16 :goto_8b

    .line 692
    .end local v36           #der:Lcom/android/email/service/DoExternalRequest;
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_44c
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .restart local v48       #tempString:[Ljava/lang/String;
    goto :goto_436

    .line 700
    .end local v39           #isFavorite:Z
    .end local v41           #isTest:Z
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_455
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_REQUESTS_DATA"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_493

    .line 701
    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 706
    .restart local v41       #isTest:Z
    if-eqz v41, :cond_48a

    .line 707
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v48

    .line 714
    .restart local v48       #tempString:[Ljava/lang/String;
    :goto_476
    new-instance v36, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    .line 715
    .restart local v36       #der:Lcom/android/email/service/DoExternalRequest;
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/email/service/DoExternalRequest;->onRequest([Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 710
    .end local v36           #der:Lcom/android/email/service/DoExternalRequest;
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_48a
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .restart local v48       #tempString:[Ljava/lang/String;
    goto :goto_476

    .line 719
    .end local v41           #isTest:Z
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_493
    const-string v4, "com.android.email.intent.action.ACTION_EXTERNAL_DB_SET_FOLLOWUPFLAG"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 720
    const-string v4, "status_followupflag"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    .line 722
    .local v45, newFollowUpFlag:I
    const-string v4, "is_test"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 727
    .restart local v41       #isTest:Z
    if-eqz v41, :cond_4d3

    .line 728
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/service/DoExternalRequest;->getStringArrayFromLongArray([J)[Ljava/lang/String;

    move-result-object v48

    .line 735
    .restart local v48       #tempString:[Ljava/lang/String;
    :goto_4bd
    new-instance v36, Lcom/android/email/service/DoExternalRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/email/service/DoExternalRequest;-><init>(Landroid/content/Context;)V

    .line 736
    .restart local v36       #der:Lcom/android/email/service/DoExternalRequest;
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/DoExternalRequest;->onSetFollowUpFlagRequest([Ljava/lang/String;I)V

    goto/16 :goto_8b

    .line 731
    .end local v36           #der:Lcom/android/email/service/DoExternalRequest;
    .end local v48           #tempString:[Ljava/lang/String;
    :cond_4d3
    const-string v4, "id_array"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .restart local v48       #tempString:[Ljava/lang/String;
    goto :goto_4bd

    .line 589
    .end local v41           #isTest:Z
    .end local v45           #newFollowUpFlag:I
    .end local v48           #tempString:[Ljava/lang/String;
    .restart local v33       #c:Landroid/database/Cursor;
    :cond_4dc
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8b
.end method

.method refreshSyncReports()V
    .registers 13

    .prologue
    .line 772
    sget-object v7, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v7

    .line 775
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    sget-object v6, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 779
    .local v3, oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    sget-object v6, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 780
    const-wide/16 v8, -0x2

    invoke-virtual {p0, v8, v9, p0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 783
    sget-object v6, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 784
    .local v1, newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v8, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 786
    .local v2, oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v2, :cond_58

    .line 787
    iget-wide v8, v2, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iput-wide v8, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 793
    :goto_3c
    iget v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v6, :cond_1e

    iget-wide v8, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1e

    .line 794
    iget-wide v8, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v6, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_1e

    .line 800
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v2           #oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v3           #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v6

    .line 789
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v2       #oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v3       #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :cond_58
    :try_start_58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 790
    .local v4, timeNow:J
    iput-wide v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    goto :goto_3c

    .line 798
    .end local v1           #newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v2           #oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v4           #timeNow:J
    :cond_5f
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 800
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_55

    .line 801
    return-void
.end method

.method reschedule(Landroid/app/AlarmManager;)V
    .registers 28
    .parameter "alarmMgr"

    .prologue
    .line 812
    const-wide/16 v21, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 813
    sget-object v22, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v22

    .line 814
    :try_start_c
    sget-object v21, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 815
    .local v14, numAccounts:I
    mul-int/lit8 v21, v14, 0x2

    move/from16 v0, v21

    new-array v3, v0, [J

    .line 818
    .local v3, accountInfo:[J
    const/4 v4, 0x0

    .line 819
    .local v4, accountInfoIndex:I
    const-wide v10, 0x7fffffffffffffffL

    .line 820
    .local v10, nextCheckTime:J
    const/4 v9, 0x0

    .line 821
    .local v9, nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 822
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

    if-eqz v21, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 823
    .local v18, report:Lcom/android/email/service/MailService$AccountSyncReport;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    move/from16 v21, v0

    if-lez v21, :cond_2e

    .line 826
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v16, v0

    .line 827
    .local v16, prevSyncTime:J
    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 829
    .local v12, nextSyncTime:J
    const-wide/16 v23, 0x0

    cmp-long v21, v16, v23

    if-eqz v21, :cond_56

    cmp-long v21, v12, v19

    if-gez v21, :cond_74

    .line 839
    :cond_56
    const-wide/16 v23, 0x1388

    add-long v10, v19, v23

    .line 841
    move-object/from16 v9, v18

    .line 849
    :cond_5c
    :goto_5c
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v5

    .line 850
    add-int/lit8 v5, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v23, v0

    aput-wide v23, v3, v4

    goto :goto_2e

    .line 871
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
    :catchall_71
    move-exception v21

    monitor-exit v22
    :try_end_73
    .catchall {:try_start_c .. :try_end_73} :catchall_71

    throw v21

    .line 842
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
    :cond_74
    cmp-long v21, v12, v10

    if-gez v21, :cond_5c

    .line 843
    move-wide v10, v12

    .line 844
    move-object/from16 v9, v18

    goto :goto_5c

    .line 853
    .end local v12           #nextSyncTime:J
    .end local v16           #prevSyncTime:J
    .end local v18           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_7c
    :goto_7c
    :try_start_7c
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_8b

    .line 854
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    const-wide/16 v23, -0x1

    aput-wide v23, v3, v5

    move v5, v4

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    goto :goto_7c

    .line 857
    :cond_8b
    if-nez v9, :cond_b1

    const-wide/16 v7, -0x1

    .line 858
    .local v7, idToCheck:J
    :goto_8f
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v7, v8, v3, v1}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v15

    .line 859
    .local v15, pi:Landroid/app/PendingIntent;
    if-nez v9, :cond_b4

    .line 860
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 861
    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_af

    .line 862
    const-string v21, "Email-MailService"

    const-string v23, "reschedule: alarm cancel - no account to check"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_af
    :goto_af
    monitor-exit v22

    .line 872
    return-void

    .line 857
    .end local v7           #idToCheck:J
    .end local v15           #pi:Landroid/app/PendingIntent;
    :cond_b1
    iget-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    goto :goto_8f

    .line 865
    .restart local v7       #idToCheck:J
    .restart local v15       #pi:Landroid/app/PendingIntent;
    :cond_b4
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10, v11, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 866
    sget-boolean v21, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v21, :cond_af

    .line 867
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

    iget-wide v0, v9, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_7c .. :try_end_ed} :catchall_71

    goto :goto_af
.end method

.method restoreSyncReports(Landroid/content/Intent;)V
    .registers 18
    .parameter "restoreIntent"

    .prologue
    .line 1114
    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 1115
    sget-object v11, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v11

    .line 1116
    :try_start_a
    const-string v10, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 1117
    .local v3, accountInfo:[J
    if-nez v3, :cond_1d

    .line 1118
    const-string v10, "Email-MailService"

    const-string v12, "no data in intent to restore"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    monitor-exit v11

    .line 1138
    :goto_1c
    return-void

    .line 1121
    :cond_1d
    const/4 v4, 0x0

    .line 1122
    .local v4, accountInfoIndex:I
    array-length v6, v3

    .local v6, accountInfoLimit:I
    move v5, v4

    .line 1123
    .end local v4           #accountInfoIndex:I
    .local v5, accountInfoIndex:I
    :cond_20
    :goto_20
    if-ge v5, v6, :cond_5e

    .line 1124
    add-int/lit8 v4, v5, 0x1

    .end local v5           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    aget-wide v1, v3, v5

    .line 1125
    .local v1, accountId:J
    add-int/lit8 v5, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v5       #accountInfoIndex:I
    aget-wide v7, v3, v4

    .line 1126
    .local v7, prevSync:J
    sget-object v10, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 1127
    .local v9, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v9, :cond_20

    .line 1128
    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_20

    .line 1129
    iput-wide v7, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 1130
    iget v10, v9, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v10, :cond_20

    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_20

    .line 1131
    iget-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v10, v9, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v14, v10

    add-long/2addr v12, v14

    iput-wide v12, v9, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_20

    .line 1137
    .end local v1           #accountId:J
    .end local v3           #accountInfo:[J
    .end local v5           #accountInfoIndex:I
    .end local v6           #accountInfoLimit:I
    .end local v7           #prevSync:J
    .end local v9           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_5b
    move-exception v10

    monitor-exit v11
    :try_end_5d
    .catchall {:try_start_a .. :try_end_5d} :catchall_5b

    throw v10

    .restart local v3       #accountInfo:[J
    .restart local v5       #accountInfoIndex:I
    .restart local v6       #accountInfoLimit:I
    :cond_5e
    :try_start_5e
    monitor-exit v11
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5b

    goto :goto_1c
.end method

.method setupSyncReports(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 978
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    .line 979
    :try_start_3
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 980
    monitor-exit v1

    .line 981
    return-void

    .line 980
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setupSyncReportsLocked(JLandroid/content/Context;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 988
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 989
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_d4

    .line 991
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 992
    const-wide/16 p1, -0x1

    .line 1006
    :cond_11
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_f0

    .line 1007
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 1011
    :goto_19
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v6

    .line 1013
    if-eqz v6, :cond_2a

    .line 1014
    const-string v2, "Email-MailService"

    const-string v3, "One-minute refresh enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_2a
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1020
    :cond_33
    :goto_33
    :try_start_33
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1021
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v4, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1028
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_33

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_33

    .line 1033
    new-instance v5, Lcom/android/email/service/MailService$AccountSyncReport;

    invoke-direct {v5}, Lcom/android/email/service/MailService$AccountSyncReport;-><init>()V

    .line 1034
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 1035
    const/16 v2, 0x8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1036
    const/16 v2, 0xc

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1039
    iget-object v2, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v9, v10}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v2

    if-nez v2, :cond_f8

    .line 1040
    const/4 v1, -0x1

    move v3, v1

    .line 1044
    :goto_78
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    .line 1045
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 1046
    if-lez v3, :cond_100

    const-wide/16 v1, 0x0

    :goto_84
    iput-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 1049
    const/4 v1, 0x0

    iput v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 1050
    const/4 v1, 0x0

    iput v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    .line 1051
    iput v3, v5, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    .line 1052
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_103

    const/4 v1, 0x1

    :goto_95
    iput-boolean v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    .line 1053
    and-int/lit8 v1, v7, 0x2

    if-eqz v1, :cond_105

    const/4 v1, 0x1

    :goto_9c
    iput-boolean v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->vibrate:Z

    .line 1054
    and-int/lit8 v1, v7, 0x40

    if-eqz v1, :cond_107

    const/4 v1, 0x1

    :goto_a3
    iput-boolean v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->vibrateWhenSilent:Z

    .line 1055
    if-nez v8, :cond_109

    const/4 v1, 0x0

    :goto_a8
    iput-object v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->ringtoneUri:Landroid/net/Uri;

    .line 1056
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->displayName:Ljava/lang/String;

    .line 1058
    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.email"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v0, "com.android.email.provider"

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    .line 1063
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    iget-wide v1, v5, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catchall {:try_start_33 .. :try_end_cd} :catchall_cf

    goto/16 :goto_33

    .line 1066
    :catchall_cf
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 993
    :cond_d4
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_e3

    .line 995
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 1068
    :goto_e2
    return-void

    .line 1000
    :cond_e3
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_e2

    .line 1009
    :cond_f0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_19

    .line 1041
    :cond_f8
    if-eqz v6, :cond_112

    if-ltz v1, :cond_112

    .line 1042
    const/4 v1, 0x1

    move v3, v1

    goto/16 :goto_78

    .line 1046
    :cond_100
    const-wide/16 v1, -0x1

    goto :goto_84

    .line 1052
    :cond_103
    const/4 v1, 0x0

    goto :goto_95

    .line 1053
    :cond_105
    const/4 v1, 0x0

    goto :goto_9c

    .line 1054
    :cond_107
    const/4 v1, 0x0

    goto :goto_a3

    .line 1055
    :cond_109
    :try_start_109
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_cf

    move-result-object v1

    goto :goto_a8

    .line 1066
    :cond_10e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_e2

    :cond_112
    move v3, v1

    goto/16 :goto_78
.end method

.method updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .registers 11
    .parameter "accountId"
    .parameter "newCount"

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 1082
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v2

    .line 1083
    :try_start_6
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 1084
    .local v0, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-nez v0, :cond_33

    .line 1086
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

    .line 1087
    const/4 v0, 0x0

    monitor-exit v2

    .line 1101
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :goto_32
    return-object v0

    .line 1091
    .restart local v0       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 1092
    iget v1, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v1, :cond_49

    .line 1093
    iget-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v1, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 1095
    :cond_49
    const/4 v1, -0x1

    if-eq p3, v1, :cond_4e

    .line 1096
    iput p3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 1098
    :cond_4e
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_6a

    .line 1099
    const-string v1, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_6a
    monitor-exit v2

    goto :goto_32

    .line 1102
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_6c
    move-exception v1

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6 .. :try_end_6e} :catchall_6c

    throw v1
.end method
