.class public Lcom/android/email/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$CommandInfo;,
        Lcom/android/email/MessagingController$ImapIdleFolder;,
        Lcom/android/email/MessagingController$Command;,
        Lcom/android/email/MessagingController$LocalMessageInfo;,
        Lcom/android/email/MessagingController$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

.field private static final PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static final PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/MessagingController;


# instance fields
.field private mBusy:Z

.field private final mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private mHandler:Landroid/os/Handler;

.field private mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/MessagingController$ImapIdleFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private mRemoteSync:Z

.field private mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    .line 135
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    .line 140
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    .line 157
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 163
    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/email/Controller;)V
    .registers 5
    .parameter "_context"
    .parameter "_controller"

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 175
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    .line 185
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    .line 208
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    .line 209
    iget-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method

.method private IsEAS(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2015
    .line 2019
    :try_start_2
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_43

    move-result-object v1

    .line 2029
    const/4 v0, -0x1

    :try_start_14
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2030
    :cond_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2032
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2034
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 2035
    const-string v2, "pop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "imap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_64

    move-result v2

    if-eqz v2, :cond_4d

    .line 2048
    :cond_3e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 2050
    :goto_42
    return v0

    .line 2022
    :catch_43
    move-exception v0

    .line 2023
    const-string v0, "MsgControl >>>"

    const-string v1, "Exception is occured, in IsEAS method "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 2024
    goto :goto_42

    .line 2037
    :cond_4d
    :try_start_4d
    const-string v2, "eas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_64

    move-result v0

    if-eqz v0, :cond_5a

    .line 2048
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_42

    :cond_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_42

    :cond_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 2050
    goto :goto_42

    .line 2044
    :catch_64
    move-exception v0

    .line 2045
    :try_start_65
    const-string v0, "MsgControl >>>"

    const-string v2, "onSwitchingTitle -----"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_71

    .line 2048
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_42

    :catchall_71
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/MessagingController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/MessagingController;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->loadMessageForViewSyncronous(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/MessagingController;JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z

    move-result v0

    return v0
.end method

.method private checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2007
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->IsEAS(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2008
    const/4 v0, 0x0

    .line 2011
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .registers 4
    .parameter "_context"
    .parameter "_controller"

    .prologue
    .line 218
    const-class v1, Lcom/android/email/MessagingController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    if-nez v0, :cond_e

    .line 219
    new-instance v0, Lcom/android/email/MessagingController;

    invoke-direct {v0, p0, p1}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 221
    :cond_e
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 218
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .registers 1
    .parameter "mockController"

    .prologue
    .line 229
    sput-object p0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 230
    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v0

    return v0
.end method

.method private isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 5760
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    .line 5761
    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPushScheduledNow | syncSchedule - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5762
    invoke-static {v3}, Lcom/android/emailcommon/utility/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 5763
    const/4 v2, 0x1

    .line 5766
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5768
    if-eqz v0, :cond_6c

    .line 5769
    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    .line 5770
    if-nez v0, :cond_6c

    .line 5771
    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Fail. Roaming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5783
    :goto_6b
    return v1

    .line 5777
    :cond_6c
    if-eqz v4, :cond_74

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    if-ne v0, v6, :cond_7c

    :cond_74
    if-nez v4, :cond_ad

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    if-eq v0, v6, :cond_ad

    :cond_7c
    move v0, v1

    .line 5781
    :goto_7d
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPush - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 5783
    goto :goto_6b

    :cond_ad
    move v0, v2

    goto :goto_7d
.end method

.method private loadMessageForViewSyncronous(J)Z
    .registers 15
    .parameter "messageId"

    .prologue
    .line 3736
    :try_start_0
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 3738
    .local v4, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v4, :cond_a

    .line 3739
    const/4 v9, 0x0

    .line 3803
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_9
    return v9

    .line 3741
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_a
    iget v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 3742
    const/4 v9, 0x0

    goto :goto_9

    .line 3748
    :cond_11
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3750
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3752
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_25

    if-nez v2, :cond_27

    .line 3753
    :cond_25
    const/4 v9, 0x0

    goto :goto_9

    .line 3756
    :cond_27
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v7

    .line 3757
    .local v7, remoteStore:Lcom/android/email/mail/Store;
    iget-object v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 3758
    .local v5, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v9, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3783
    iget-object v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    .line 3784
    .local v6, remoteMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v1, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v1}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3785
    .local v1, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3786
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 3791
    if-eqz v6, :cond_60

    .line 3792
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v0, v2, v9}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    :try_end_60
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_60} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_60} :catch_65

    .line 3803
    :cond_60
    const/4 v9, 0x1

    goto :goto_9

    .line 3795
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v5           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v6           #remoteMessage:Lcom/android/emailcommon/mail/Message;
    .end local v7           #remoteStore:Lcom/android/email/mail/Store;
    :catch_62
    move-exception v3

    .line 3798
    .local v3, me:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v9, 0x0

    goto :goto_9

    .line 3799
    .end local v3           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_65
    move-exception v8

    .line 3800
    .local v8, rte:Ljava/lang/RuntimeException;
    const/4 v9, 0x0

    goto :goto_9
.end method

.method private processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;J)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3381
    const/4 v0, 0x0

    .line 3383
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p7, p8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 3386
    if-nez v6, :cond_22

    .line 3387
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync failed for null message, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    :goto_21
    return v0

    .line 3388
    :cond_22
    iget v1, p6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    .line 3389
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 3390
    :cond_40
    iget v1, p6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5e

    .line 3391
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 3400
    :cond_5e
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsyc triggered for message id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 3401
    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController;->processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto :goto_21
.end method

.method private processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    .registers 20
    .parameter "messageId"
    .parameter "target_accountId"
    .parameter "account"
    .parameter "target_boxkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3327
    const/4 v11, 0x0

    .line 3328
    .local v11, bret:Z
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3329
    .local v7, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p5

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    .local v8, accountIdArgs:[Ljava/lang/String;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v9, p6

    .line 3333
    invoke-direct/range {v1 .. v10}, Lcom/android/email/MessagingController;->processPendingAccountMoveUploadsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z

    move-result v11

    .line 3336
    return v11
.end method

.method private processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3416
    iget-object v3, p5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 3417
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_29

    .line 3418
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3423
    const-string v1, "processPendingAccountMoveAppend"

    const-string v2, "This Pop account do not allowed upload sync. So we will just local move."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    :goto_1e
    return v0

    .line 3441
    :cond_1f
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_29

    move v0, v1

    .line 3444
    goto :goto_1e

    .line 3447
    :cond_29
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v4, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3448
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v4, v5, :cond_42

    .line 3449
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "remoteFolder.getMode() != OpenMode.READ_WRITE."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3452
    goto :goto_1e

    .line 3457
    :cond_42
    iget-object v4, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_54

    iget-object v4, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_54

    .line 3458
    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 3463
    :cond_54
    if-nez v2, :cond_97

    .line 3479
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p6}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 3482
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3483
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3485
    const/4 v4, 0x1

    :try_start_67
    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V
    :try_end_6f
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_67 .. :try_end_6f} :catch_91

    .line 3494
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3502
    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_85

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_a4

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a4

    .line 3504
    :cond_85
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "message.mServerId is null. Sending is failed...."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3507
    goto :goto_1e

    .line 3488
    :catch_91
    move-exception v0

    .line 3489
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3490
    goto :goto_1e

    .line 3496
    :cond_97
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "Target Account Server Already have same message. Something wrong. Do nothing."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3499
    goto/16 :goto_1e

    .line 3518
    :cond_a4
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1e
.end method

.method private processPendingAccountMoveUploadsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z
    .registers 22
    .parameter "messageId"
    .parameter "target_accountId"
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"
    .parameter "target_boxkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3349
    const/4 v11, 0x0

    .line 3351
    .local v11, bret:Z
    const/4 v4, 0x0

    .line 3353
    .local v4, remoteStore:Lcom/android/email/mail/Store;
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-ltz v2, :cond_34

    .line 3354
    const/4 v8, 0x0

    .line 3358
    .local v8, target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v4, :cond_1a

    .line 3359
    :try_start_b
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    .line 3362
    :cond_1a
    if-nez v8, :cond_24

    .line 3363
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 3366
    :cond_24
    if-eqz v8, :cond_31

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v5, p5

    move-wide v6, p3

    move-wide v9, p1

    .line 3367
    invoke-direct/range {v2 .. v10}, Lcom/android/email/MessagingController;->processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;J)Z
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_32

    move-result v11

    .line 3375
    .end local v8           #target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_31
    :goto_31
    return v11

    .line 3370
    .restart local v8       #target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catchall_32
    move-exception v2

    throw v2

    .line 3373
    .end local v8           #target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_34
    const/4 v11, 0x0

    goto :goto_31
.end method

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3821
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3825
    const-string v2, "MsgControl >>>"

    const-string v3, "PERFORMANCE DELETE START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingMultiDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 3829
    const-string v2, "MsgControl >>>"

    const-string v3, "PERFORMANCE DELETE END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 3835
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 3836
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4499
    .line 4502
    if-eqz p1, :cond_59

    .line 4506
    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 4507
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_64

    .line 4508
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 4514
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_59

    .line 4515
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 4516
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 4518
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4519
    const-string v4, "syncServerId"

    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4520
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4650
    :cond_59
    :goto_59
    return v1

    .line 4524
    :cond_5a
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_64

    move v1, v2

    .line 4528
    goto :goto_59

    .line 4533
    :cond_64
    :try_start_64
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4534
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_180

    if-eq v3, v4, :cond_7f

    .line 4645
    if-eqz v5, :cond_7d

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 4646
    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_7d
    move v1, v2

    goto :goto_59

    .line 4540
    :cond_7f
    :try_start_7f
    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_91

    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_91

    .line 4541
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 4546
    :cond_91
    if-nez v0, :cond_108

    .line 4548
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 4551
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4552
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4553
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 4558
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v3, v2

    move v0, v1

    move v4, v1

    .line 4613
    :goto_b5
    if-eqz v4, :cond_e2

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;
    :try_end_b9
    .catchall {:try_start_7f .. :try_end_b9} :catchall_180

    if-eqz v4, :cond_e2

    .line 4615
    :try_start_bb
    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 4616
    if-eqz v4, :cond_e2

    .line 4617
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4618
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4619
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4622
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_e1
    .catchall {:try_start_bb .. :try_end_e1} :catchall_180
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_e1} :catch_18d

    move v0, v1

    .line 4631
    :cond_e2
    :goto_e2
    if-nez v3, :cond_e6

    if-eqz v0, :cond_fb

    .line 4632
    :cond_e6
    :try_start_e6
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 4634
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 4635
    if-eqz v3, :cond_160

    .line 4636
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v4, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_e6 .. :try_end_fb} :catchall_180

    .line 4645
    :cond_fb
    :goto_fb
    if-eqz v5, :cond_59

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4646
    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_59

    .line 4566
    :cond_108
    :try_start_108
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4567
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4568
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4571
    new-instance v4, Ljava/util/Date;

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 4572
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v6

    .line 4573
    if-eqz v6, :cond_133

    invoke-virtual {v6, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_133

    move v3, v1

    move v0, v2

    move v4, v2

    .line 4579
    goto :goto_b5

    .line 4587
    :cond_133
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 4590
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 4591
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4592
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4593
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 4599
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 4605
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    move v3, v2

    move v0, v1

    move v4, v1

    goto/16 :goto_b5

    .line 4637
    :cond_160
    if-eqz v0, :cond_fb

    .line 4638
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4639
    const-string v3, "syncServerId"

    iget-object v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4640
    const-string v3, "syncServerTimeStamp"

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4641
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v0, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17e
    .catchall {:try_start_108 .. :try_end_17e} :catchall_180

    goto/16 :goto_fb

    .line 4645
    :catchall_180
    move-exception v0

    if-eqz v5, :cond_18c

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 4646
    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_18c
    throw v0

    .line 4625
    :catch_18d
    move-exception v4

    goto/16 :goto_e2
.end method

.method private processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 4190
    const/4 v0, 0x0

    .line 4194
    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, "Local-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    if-nez p2, :cond_1c

    .line 4278
    :cond_1b
    :goto_1b
    return-void

    .line 4204
    :cond_1c
    if-eqz p6, :cond_135

    .line 4206
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 4209
    :goto_26
    if-eqz v0, :cond_1b

    .line 4214
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1b

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1b

    .line 4219
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 4220
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4225
    :try_start_3e
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4226
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_127

    if-eq v0, v2, :cond_59

    .line 4274
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4275
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1b

    .line 4231
    :cond_59
    :try_start_59
    iget-object v0, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_127

    move-result-object v0

    .line 4232
    if-nez v0, :cond_6e

    .line 4274
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4275
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1b

    .line 4235
    :cond_6e
    :try_start_6e
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_b0

    .line 4236
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update for msg id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new mailbox="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    :cond_b0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 4243
    if-eqz p3, :cond_bf

    .line 4244
    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4246
    :cond_bf
    if-eqz p4, :cond_c8

    .line 4247
    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4250
    :cond_c8
    if-eqz p5, :cond_d1

    .line 4251
    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4254
    :cond_d1
    if-eqz p6, :cond_119

    .line 4255
    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 4256
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z
    :try_end_dc
    .catchall {:try_start_6e .. :try_end_dc} :catchall_127

    move-result v4

    if-nez v4, :cond_ed

    .line 4274
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4275
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1b

    .line 4260
    :cond_ed
    const/4 v4, 0x0

    :try_start_ee
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 4262
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4263
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 4267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4268
    const-string v2, "syncServerId"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_ee .. :try_end_119} :catchall_127

    .line 4274
    :cond_119
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4275
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1b

    .line 4274
    :catchall_127
    move-exception v0

    if-eqz v1, :cond_134

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_134

    .line 4275
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_134
    throw v0

    :cond_135
    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    goto/16 :goto_26
.end method

.method private processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 10
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter "oldMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3530
    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 3531
    .local v1, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 3552
    :goto_d
    return-void

    .line 3535
    :cond_e
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3536
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_20

    .line 3537
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_d

    .line 3542
    :cond_20
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 3543
    .local v0, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v0, :cond_2c

    .line 3544
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_d

    .line 3549
    :cond_2c
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 3550
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 3551
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_d
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 4295
    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4433
    :cond_1a
    :goto_1a
    return-void

    .line 4302
    :cond_1b
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 4303
    if-eqz v0, :cond_1a

    .line 4308
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eq v1, v4, :cond_1a

    .line 4322
    if-eqz p2, :cond_31

    .line 4323
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 4340
    :cond_31
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 4341
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4346
    :try_start_3d
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4347
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v2, :cond_5b

    .line 4348
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_df

    .line 4429
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4430
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1a

    .line 4353
    :cond_5b
    :try_start_5b
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 4354
    if-nez v0, :cond_73

    .line 4355
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_df

    .line 4429
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4430
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_1a

    .line 4360
    :cond_73
    :try_start_73
    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 4361
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_84

    .line 4365
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 4372
    :cond_84
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z
    :try_end_87
    .catchall {:try_start_73 .. :try_end_87} :catchall_df

    move-result v3

    if-eqz v3, :cond_ec

    .line 4379
    :try_start_8a
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4380
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_b1

    .line 4381
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 4382
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_a0
    .catchall {:try_start_8a .. :try_end_a0} :catchall_d9

    .line 4414
    const/4 v0, 0x0

    :try_start_a1
    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_df

    .line 4429
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4430
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1a

    .line 4386
    :cond_b1
    const/4 v3, 0x1

    :try_start_b2
    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Lcom/android/email/MessagingController$16;

    invoke-direct {v4, p0, p5}, Lcom/android/email/MessagingController$16;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    :try_end_bf
    .catchall {:try_start_b2 .. :try_end_bf} :catchall_d9

    .line 4414
    const/4 v3, 0x0

    :try_start_c0
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 4425
    :goto_c3
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4426
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;
    :try_end_cc
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_df

    .line 4429
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4430
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1a

    .line 4414
    :catchall_d9
    move-exception v0

    const/4 v3, 0x0

    :try_start_db
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    throw v0
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_df

    .line 4429
    :catchall_df
    move-exception v0

    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 4430
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_eb
    throw v0

    .line 4417
    :cond_ec
    :try_start_ec
    iget v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v2, v4, :cond_f8

    .line 4418
    const-string v2, "MsgControl >>>"

    const-string v3, "server does not support to create folder"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_ec .. :try_end_f7} :catchall_df

    goto :goto_c3

    .line 4429
    :cond_f8
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4430
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_1a
.end method

.method private processPendingMultiDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashSet;)V
    .registers 14
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/email/mail/Store;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p4, messageServerId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4449
    iget v5, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_8

    .line 4483
    :cond_7
    :goto_7
    return-void

    .line 4455
    :cond_8
    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 4456
    .local v3, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4460
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v5, v8}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4461
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_25

    .line 4462
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_7

    .line 4466
    :cond_25
    const/4 v2, 0x0

    .line 4468
    .local v2, remoteMessages:[Lcom/android/emailcommon/mail/Message;
    invoke-virtual {p4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_40

    .line 4469
    invoke-virtual {p4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/String;

    .line 4470
    .local v4, serverIds:[Ljava/lang/String;
    invoke-virtual {p4, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lcom/android/emailcommon/mail/Folder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 4474
    .end local v4           #serverIds:[Ljava/lang/String;
    :cond_40
    if-eqz v2, :cond_54

    .line 4475
    array-length v5, v2

    new-array v0, v5, [Lcom/android/emailcommon/mail/Flag;

    .line 4476
    .local v0, flags:[Lcom/android/emailcommon/mail/Flag;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_46
    array-length v5, v2

    if-ge v1, v5, :cond_50

    .line 4477
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v5, v0, v1

    .line 4476
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 4479
    :cond_50
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4481
    .end local v0           #flags:[Lcom/android/emailcommon/mail/Flag;
    .end local v1           #i:I
    :cond_54
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 4482
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_7
.end method

.method private processPendingMultiDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3848
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const-string v6, "mailboxKey"

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3852
    const-wide/16 v3, -0x1

    .line 3855
    const/4 v1, 0x0

    .line 3857
    const/4 v2, 0x0

    .line 3860
    :try_start_14
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3861
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 3864
    if-nez v1, :cond_d5

    .line 3865
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v1, v5, v9}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    move-object v5, v1

    .line 3867
    :goto_30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 3868
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v6, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3870
    if-eqz v1, :cond_67

    .line 3871
    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 3873
    if-eqz v2, :cond_4c

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_54

    .line 3874
    :cond_4c
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3876
    :cond_54
    iget v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_67

    .line 3877
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3878
    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_67
    move-object v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move-wide v13, v2

    move-wide v3, v13

    move-object v2, v1

    .line 3881
    goto :goto_30

    .line 3884
    :cond_6e
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_79

    .line 3885
    move-object/from16 v0, p1

    invoke-direct {p0, v5, v0, v2, v7}, Lcom/android/email/MessagingController;->processPendingMultiDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashSet;)V

    .line 3889
    :cond_79
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3890
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3892
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_14 .. :try_end_9a} :catchall_cc
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_9a} :catch_9b

    goto :goto_7d

    .line 3895
    :catch_9b
    move-exception v1

    .line 3899
    :try_start_9c
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_c2

    .line 3900
    const-string v2, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    :cond_c2
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cc
    .catchall {:try_start_9c .. :try_end_cc} :catchall_cc

    .line 3904
    :catchall_cc
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_d1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3906
    return-void

    :cond_d5
    move-object v5, v1

    goto/16 :goto_30
.end method

.method private processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3120
    .line 3122
    const/4 v0, 0x0

    .line 3124
    :try_start_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 3125
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3126
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p6, p7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3128
    if-eqz v2, :cond_f0

    if-eqz v3, :cond_f0

    if-eqz v1, :cond_f0

    .line 3130
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_f3

    move-result-object v1

    .line 3131
    :try_start_26
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 3136
    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 3138
    :cond_31
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    .line 3139
    const/4 v0, 0x0

    .line 3228
    :goto_38
    return v0

    .line 3142
    :cond_39
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3143
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v4, :cond_4d

    .line 3144
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3145
    const/4 v0, 0x0

    goto :goto_38

    .line 3149
    :cond_4d
    const/4 v0, 0x0

    .line 3156
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_74

    .line 3157
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3158
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/android/emailcommon/mail/Folder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 3162
    :cond_74
    if-eqz v0, :cond_79

    array-length v4, v0

    if-gtz v4, :cond_7f

    .line 3163
    :cond_79
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3164
    const/4 v0, 0x0

    goto :goto_38

    .line 3167
    :cond_7f
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 3168
    const-string v4, "processPendingMultiMoveSynchronous"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newMailbox.mDisplayName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_aa

    .line 3175
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 3182
    :cond_aa
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 3187
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3188
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_c9

    .line 3189
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3190
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3191
    const/4 v0, 0x0

    goto/16 :goto_38

    .line 3194
    :cond_c9
    new-instance v3, Lcom/android/email/MessagingController$14;

    invoke-direct {v3, p0}, Lcom/android/email/MessagingController$14;-><init>(Lcom/android/email/MessagingController;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 3202
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3205
    if-eqz v0, :cond_e3

    .line 3210
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 3214
    :cond_e3
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 3215
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_ea} :catch_103

    .line 3216
    const/4 v0, 0x1

    goto/16 :goto_38

    .line 3218
    :cond_ed
    const/4 v0, 0x0

    goto/16 :goto_38

    .line 3220
    :cond_f0
    const/4 v0, 0x0

    goto/16 :goto_38

    .line 3221
    :catch_f3
    move-exception v1

    .line 3222
    :goto_f4
    if-eqz v0, :cond_100

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 3223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3225
    :cond_100
    const/4 v0, 0x0

    goto/16 :goto_38

    .line 3221
    :catch_103
    move-exception v0

    move-object v0, v1

    goto :goto_f4
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 25
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4026
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 4030
    const-wide/16 v4, -0x1

    .line 4031
    const/4 v2, 0x0

    .line 4034
    if-eqz p1, :cond_31

    .line 4035
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v3

    .line 4037
    if-eqz v3, :cond_31

    .line 4038
    const-string v6, "pop3"

    iget-object v3, v3, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_30} :catch_73

    move-result v2

    :cond_31
    move/from16 v17, v2

    .line 4045
    :goto_33
    const/4 v3, 0x0

    .line 4047
    const/4 v2, 0x0

    .line 4049
    :cond_35
    :goto_35
    :try_start_35
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 4050
    const/4 v8, 0x0

    .line 4053
    const/4 v14, 0x0

    .line 4057
    const-class v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 4060
    if-eqz v6, :cond_35

    .line 4061
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_138
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_35 .. :try_end_4d} :catch_13d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4d} :catch_130

    .line 4062
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 4064
    if-eqz v7, :cond_cd

    .line 4065
    if-eqz v2, :cond_63

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v9, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_7e

    .line 4066
    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_6c
    .catchall {:try_start_4d .. :try_end_6c} :catchall_138
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4d .. :try_end_6c} :catch_103
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6c} :catch_130

    move-result-object v5

    .line 4068
    if-nez v5, :cond_7f

    move-object v2, v5

    move-wide/from16 v4, v18

    .line 4069
    goto :goto_35

    .line 4040
    :catch_73
    move-exception v3

    .line 4041
    const-string v3, "Email"

    const-string v6, "Error !!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v2

    goto :goto_33

    :cond_7e
    move-object v5, v2

    .line 4073
    :cond_7f
    :try_start_7f
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v11, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v2, v9, v11

    if-eqz v2, :cond_141

    .line 4074
    iget v2, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_e0

    .line 4075
    const/4 v2, 0x1

    .line 4080
    :goto_8d
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v4, v8, :cond_e3

    const/4 v11, 0x1

    .line 4081
    :goto_94
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v4, v8, :cond_e5

    const/4 v12, 0x1

    .line 4083
    :goto_9b
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    if-eq v4, v8, :cond_e7

    const/4 v13, 0x1

    .line 4086
    :goto_a2
    if-nez v3, :cond_c3

    if-eqz p1, :cond_c3

    if-nez v2, :cond_b0

    if-nez v11, :cond_b0

    if-nez v12, :cond_b0

    if-nez v13, :cond_b0

    if-eqz v14, :cond_c3

    .line 4090
    :cond_b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 4095
    :cond_c3
    if-eqz v2, :cond_e9

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 4097
    invoke-direct/range {v2 .. v7}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    move-object v2, v5

    .line 4107
    :cond_cd
    :goto_cd
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 4109
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v4, v18

    goto/16 :goto_35

    .line 4077
    :cond_e0
    const/4 v14, 0x1

    move v2, v8

    goto :goto_8d

    .line 4080
    :cond_e3
    const/4 v11, 0x0

    goto :goto_94

    .line 4081
    :cond_e5
    const/4 v12, 0x0

    goto :goto_9b

    .line 4083
    :cond_e7
    const/4 v13, 0x0

    goto :goto_a2

    .line 4099
    :cond_e9
    if-nez v17, :cond_fd

    if-nez v11, :cond_f3

    if-nez v12, :cond_f3

    if-nez v13, :cond_f3

    if-eqz v14, :cond_fd

    :cond_f3
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v5

    move-object v15, v6

    move-object/from16 v16, v7

    .line 4101
    invoke-direct/range {v8 .. v16}, Lcom/android/email/MessagingController;->processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_fd
    .catchall {:try_start_7f .. :try_end_fd} :catchall_138
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7f .. :try_end_fd} :catch_103
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_fd} :catch_130

    :cond_fd
    move-object v2, v5

    goto :goto_cd

    .line 4124
    :cond_ff
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 4126
    :goto_102
    return-void

    .line 4113
    :catch_103
    move-exception v2

    .line 4117
    :goto_104
    :try_start_104
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_12c

    .line 4118
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process pending update for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catchall {:try_start_104 .. :try_end_12c} :catchall_138

    .line 4124
    :cond_12c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_102

    .line 4121
    :catch_130
    move-exception v2

    .line 4122
    :try_start_131
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_138

    .line 4124
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_102

    :catchall_138
    move-exception v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v2

    .line 4113
    :catch_13d
    move-exception v2

    move-wide/from16 v18, v4

    goto :goto_104

    :cond_141
    move v2, v8

    goto/16 :goto_8d
.end method

.method private processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3923
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? and type=5"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3926
    const-wide/16 v7, -0x1

    .line 3929
    const/4 v1, 0x0

    move-object v9, v1

    .line 3930
    :goto_13
    :try_start_13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 3931
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3932
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    .line 3936
    const/4 v10, 0x0

    .line 3939
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_13 .. :try_end_36} :catch_124

    move-result-object v15

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .line 3945
    :goto_3c
    :try_start_3c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 3947
    if-nez v10, :cond_12a

    .line 3948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 3952
    :goto_57
    if-nez v9, :cond_66

    .line 3953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 3954
    if-nez v5, :cond_67

    move-object v9, v5

    move-object v10, v3

    .line 3955
    goto :goto_3c

    :cond_66
    move-object v5, v9

    .line 3960
    :cond_67
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6b
    .catchall {:try_start_3c .. :try_end_6b} :catchall_be

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 3962
    :try_start_72
    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_126

    move-object v9, v5

    move-object v10, v3

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 3963
    goto :goto_3c

    .line 3965
    :cond_7c
    if-eqz v15, :cond_81

    .line 3966
    :try_start_7e
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3972
    :cond_81
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8e
    .catchall {:try_start_7e .. :try_end_8e} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7e .. :try_end_8e} :catch_124

    move-result-object v14

    move-object v5, v9

    move-object v1, v10

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    .line 3976
    :goto_95
    :try_start_95
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 3978
    if-nez v1, :cond_128

    .line 3979
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 3983
    :goto_b0
    if-nez v5, :cond_f4

    .line 3984
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_b9
    .catchall {:try_start_95 .. :try_end_b9} :catchall_110

    move-result-object v5

    .line 3985
    if-nez v5, :cond_f4

    move-object v1, v3

    .line 3986
    goto :goto_95

    .line 3965
    :catchall_be
    move-exception v1

    move-wide v6, v7

    :goto_c0
    if-eqz v15, :cond_c5

    .line 3966
    :try_start_c2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_c5
    throw v1
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c2 .. :try_end_c6} :catch_c6

    .line 4001
    :catch_c6
    move-exception v1

    move-wide v7, v6

    .line 4005
    :goto_c8
    :try_start_c8
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_ee

    .line 4006
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process pending upsync for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_c8 .. :try_end_ee} :catchall_117

    .line 4010
    :cond_ee
    if-eqz v11, :cond_f3

    .line 4011
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4014
    :cond_f3
    :goto_f3
    return-void

    .line 3991
    :cond_f4
    const/4 v1, 0x0

    :try_start_f5
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 3993
    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_102
    .catchall {:try_start_f5 .. :try_end_102} :catchall_110

    move-object v1, v3

    .line 3994
    goto :goto_95

    .line 3996
    :cond_104
    if-eqz v14, :cond_109

    .line 3997
    :try_start_106
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_109
    move-object v9, v1

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 4000
    goto/16 :goto_13

    .line 3996
    :catchall_110
    move-exception v1

    if-eqz v14, :cond_116

    .line 3997
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_116
    throw v1
    :try_end_117
    .catchall {:try_start_106 .. :try_end_117} :catchall_117
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_106 .. :try_end_117} :catch_c6

    .line 4010
    :catchall_117
    move-exception v1

    if-eqz v11, :cond_11d

    .line 4011
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_11d
    throw v1

    .line 4010
    :cond_11e
    if-eqz v11, :cond_f3

    .line 4011
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_f3

    .line 4001
    :catch_124
    move-exception v1

    goto :goto_c8

    .line 3965
    :catchall_126
    move-exception v1

    goto :goto_c0

    :cond_128
    move-object v3, v1

    goto :goto_b0

    :cond_12a
    move-object v3, v10

    goto/16 :goto_57
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 4148
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 4151
    if-nez v1, :cond_2f

    .line 4152
    const/4 v0, 0x1

    .line 4153
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync failed for null message, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    :goto_23
    if-eqz v0, :cond_2e

    .line 4169
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4171
    invoke-virtual {p1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4173
    :cond_2e
    return-void

    .line 4154
    :cond_2f
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4d

    .line 4156
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 4157
    :cond_4d
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6b

    .line 4159
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 4160
    :cond_6b
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_89

    .line 4162
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 4164
    :cond_89
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsyc triggered for message id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_23
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingController$CommandInfo;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .registers 8
    .parameter "description"
    .parameter "info"
    .parameter "listener"
    .parameter "runnable"

    .prologue
    .line 300
    :try_start_0
    new-instance v0, Lcom/android/email/MessagingController$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 301
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iput-object p3, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 302
    iput-object p4, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 303
    iput-object p1, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 304
    iput-object p2, v0, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    .line 305
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_14

    .line 309
    return-void

    .line 306
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_14
    move-exception v1

    .line 307
    .local v1, ie:Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .registers 7
    .parameter "description"
    .parameter "listener"
    .parameter "runnable"

    .prologue
    .line 313
    :try_start_0
    new-instance v0, Lcom/android/email/MessagingController$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 314
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 315
    iput-object p3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 316
    iput-object p1, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 317
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_11} :catch_12

    .line 321
    return-void

    .line 318
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_12
    move-exception v1

    .line 319
    .local v1, ie:Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "description"
    .parameter "runnable"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V
    .registers 12
    .parameter "description"
    .parameter "runnable"
    .parameter "info"

    .prologue
    .line 268
    :try_start_0
    new-instance v1, Lcom/android/email/MessagingController$Command;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 269
    .local v1, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v1, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 270
    iput-object p1, v1, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 271
    iput-object p3, v1, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    .line 272
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_4c

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v4, :cond_4c

    .line 273
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< put cmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | desc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_4c
    if-eqz p3, :cond_c1

    const-string v4, "synchronizeMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5e

    const-string v4, "qreSyncMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 282
    :cond_5e
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_64
    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;

    .line 283
    .local v0, c:Lcom/android/email/MessagingController$Command;
    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    if-eqz v4, :cond_64

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    iget-wide v4, v4, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    iget-wide v6, p3, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_64

    .line 285
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 286
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [REMOVE] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b9} :catch_ba

    goto :goto_64

    .line 292
    .end local v0           #c:Lcom/android/email/MessagingController$Command;
    .end local v1           #command:Lcom/android/email/MessagingController$Command;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_ba
    move-exception v3

    .line 293
    .local v3, ie:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 290
    .end local v3           #ie:Ljava/lang/IllegalStateException;
    .restart local v1       #command:Lcom/android/email/MessagingController$Command;
    :cond_c1
    :try_start_c1
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [ADD] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/IllegalStateException; {:try_start_c1 .. :try_end_f4} :catch_ba

    .line 295
    return-void
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .registers 4
    .parameter "content"
    .parameter "context"

    .prologue
    .line 1719
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1720
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1724
    :goto_d
    return-void

    .line 1722
    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_d
.end method

.method private syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .registers 27
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1730
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** syncSearchOnServer *** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1733
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_30

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_45

    .line 1734
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1735
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 2000
    :goto_44
    return-object v3

    .line 1738
    :cond_45
    const/4 v9, 0x0

    .line 1739
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1742
    :try_start_4b
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6e
    .catchall {:try_start_4b .. :try_end_6e} :catchall_3e1

    move-result-object v4

    .line 1747
    :goto_6f
    :try_start_6f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1748
    new-instance v5, Lcom/android/email/MessagingController$LocalMessageInfo;

    invoke-direct {v5, v4}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 1749
    iget-object v6, v5, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_80

    goto :goto_6f

    .line 1752
    :catchall_80
    move-exception v3

    :goto_81
    if-eqz v4, :cond_86

    .line 1753
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_86
    throw v3

    .line 1752
    :cond_87
    if-eqz v4, :cond_8c

    .line 1753
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1757
    :cond_8c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    .line 1758
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v13

    .line 1760
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_bc

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_bc

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d3

    .line 1762
    :cond_bc
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_d3

    .line 1763
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v13, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_d3

    .line 1764
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_44

    .line 1769
    :cond_d3
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1770
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v14

    .line 1772
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 1773
    if-gtz v4, :cond_f9

    .line 1774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    .line 1776
    if-eqz v4, :cond_f9

    .line 1777
    iget v4, v4, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    .line 1780
    :cond_f9
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 1781
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1784
    const/4 v6, 0x0

    .line 1785
    if-lez v14, :cond_3eb

    .line 1788
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0, v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    .line 1789
    if-eqz v5, :cond_147

    .line 1790
    array-length v7, v5

    const/4 v4, 0x0

    :goto_115
    if-ge v4, v7, :cond_125

    aget-object v8, v5, v4

    .line 1791
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    .line 1793
    :cond_125
    array-length v8, v5

    const/4 v4, 0x0

    move v7, v4

    :goto_128
    if-ge v7, v8, :cond_147

    aget-object v9, v5, v7

    .line 1794
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1795
    if-nez v4, :cond_13a

    .line 1796
    add-int/lit8 v6, v6, 0x1

    .line 1798
    :cond_13a
    if-eqz v4, :cond_140

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v4, :cond_143

    .line 1800
    :cond_140
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    :cond_143
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_128

    :cond_147
    move-object v11, v5

    .line 1806
    :goto_148
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_185

    .line 1808
    new-instance v17, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1809
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1810
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1811
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1814
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Lcom/android/emailcommon/mail/Message;

    new-instance v4, Lcom/android/email/MessagingController$8;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v10, v0, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1858
    :cond_185
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1859
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1860
    const/4 v5, 0x0

    invoke-virtual {v13, v11, v4, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1861
    const/4 v5, 0x0

    .line 1862
    const/4 v6, 0x0

    .line 1863
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v8

    array-length v10, v8

    const/4 v4, 0x0

    move v7, v4

    :goto_19c
    if-ge v7, v10, :cond_1b4

    aget-object v17, v8, v7

    .line 1864
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_3e8

    .line 1865
    const/4 v4, 0x1

    .line 1867
    :goto_1a7
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_3e5

    .line 1868
    const/4 v5, 0x1

    .line 1863
    :goto_1ae
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_19c

    .line 1872
    :cond_1b4
    if-nez v5, :cond_1b8

    if-eqz v6, :cond_231

    .line 1873
    :cond_1b8
    array-length v0, v11

    move/from16 v17, v0

    const/4 v4, 0x0

    move v10, v4

    :goto_1bd
    move/from16 v0, v17

    if-ge v10, v0, :cond_231

    aget-object v8, v11, v10

    .line 1874
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1875
    if-nez v4, :cond_1d3

    .line 1873
    :cond_1cf
    :goto_1cf
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_1bd

    .line 1878
    :cond_1d3
    iget-boolean v7, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 1879
    sget-object v18, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v18

    .line 1880
    if-eqz v5, :cond_22d

    move/from16 v0, v18

    if-eq v0, v7, :cond_22d

    const/4 v7, 0x1

    .line 1881
    :goto_1e4
    iget-boolean v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v19, v0

    .line 1882
    sget-object v20, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v20

    .line 1883
    if-eqz v6, :cond_22f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22f

    const/4 v8, 0x1

    .line 1884
    :goto_1f9
    if-nez v7, :cond_1fd

    if-eqz v8, :cond_1cf

    .line 1885
    :cond_1fd
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1887
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1888
    const-string v8, "flagRead"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1889
    const-string v8, "flagFavorite"

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1890
    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v7, v8, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1cf

    .line 1880
    :cond_22d
    const/4 v7, 0x0

    goto :goto_1e4

    .line 1883
    :cond_22f
    const/4 v8, 0x0

    goto :goto_1f9

    .line 1895
    :cond_231
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1896
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 1897
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1898
    const/16 v4, 0x3e8

    .line 1899
    const/4 v7, 0x0

    sub-int v4, v14, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1902
    if-lez v14, :cond_26b

    .line 1903
    const/4 v7, 0x0

    invoke-virtual {v13, v4, v14, v7}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v7

    .line 1904
    array-length v8, v7

    const/4 v4, 0x0

    :goto_256
    if-ge v4, v8, :cond_264

    aget-object v10, v7, v4

    .line 1905
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    add-int/lit8 v4, v4, 0x1

    goto :goto_256

    .line 1907
    :cond_264
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1910
    :cond_26b
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_26f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ba

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1911
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1912
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v8, v10, v11, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1914
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1916
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1918
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1920
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1921
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1923
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_26f

    .line 1926
    :cond_2ba
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1928
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2c8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_302

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 1929
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v10

    if-eqz v10, :cond_2f2

    .line 1930
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v11

    if-le v10, v11, :cond_2ee

    .line 1931
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c8

    .line 1933
    :cond_2ee
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c8

    .line 1936
    :cond_2f2
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v10

    const/16 v11, 0x6400

    if-le v10, v11, :cond_2fe

    .line 1937
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c8

    .line 1939
    :cond_2fe
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c8

    .line 1944
    :cond_302
    new-instance v8, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v8}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1945
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1946
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    new-instance v7, Lcom/android/email/MessagingController$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/android/email/MessagingController$9;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-virtual {v13, v3, v8, v7}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1958
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1959
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1960
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v7, 0x0

    invoke-virtual {v13, v3, v8, v7}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1961
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_342
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 1962
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    if-nez v4, :cond_38c

    .line 1963
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1964
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1965
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_381

    .line 1966
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v13, v4, v8, v10, v11}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 1974
    :goto_376
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_342

    .line 1970
    :cond_381
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    invoke-virtual {v13, v4, v8, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_376

    .line 1977
    :cond_38c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1978
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1979
    invoke-static {v3, v4, v10}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1980
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_39d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3ba

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 1981
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1982
    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1983
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v8, v11}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_39d

    .line 1987
    :cond_3ba
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_342

    .line 1991
    :cond_3c6
    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 1993
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1994
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 1996
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1998
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2000
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v14, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_44

    .line 1752
    :catchall_3e1
    move-exception v3

    move-object v4, v9

    goto/16 :goto_81

    :cond_3e5
    move v5, v6

    goto/16 :goto_1ae

    :cond_3e8
    move v4, v5

    goto/16 :goto_1a7

    :cond_3eb
    move-object v11, v4

    goto/16 :goto_148
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .registers 28
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2069
    .line 2070
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2072
    const/4 v11, 0x0

    .line 2074
    const-string v3, "Email"

    const-string v4, "*** synchronizeMailboxGeneric ***"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2080
    :try_start_15
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_23

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_40

    .line 2081
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 2082
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_84

    .line 2725
    if-eqz v11, :cond_3f

    throw v11

    move-result v4

    if-eqz v4, :cond_3f

    .line 2726
    const/4 v4, 0x0

    throw v11

    .line 2729
    :cond_3f
    :goto_3f
    return-object v3

    .line 2089
    :cond_40
    const/4 v10, 0x0

    .line 2090
    :try_start_41
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_84

    .line 2093
    :try_start_46
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_69
    .catchall {:try_start_46 .. :try_end_69} :catchall_50f

    move-result-object v4

    .line 2098
    :goto_6a
    :try_start_6a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 2099
    new-instance v5, Lcom/android/email/MessagingController$LocalMessageInfo;

    invoke-direct {v5, v4}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 2100
    iget-object v6, v5, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_6a .. :try_end_7c} :catchall_7d

    goto :goto_6a

    .line 2103
    :catchall_7d
    move-exception v3

    :goto_7e
    if-eqz v4, :cond_83

    .line 2104
    :try_start_80
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_83
    throw v3
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_84

    .line 2725
    :catchall_84
    move-exception v3

    move-object v4, v11

    :goto_86
    if-eqz v4, :cond_92

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 2726
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_92
    throw v3

    .line 2103
    :cond_93
    if-eqz v4, :cond_98

    .line 2104
    :try_start_95
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2121
    :cond_98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    .line 2122
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_b2
    .catchall {:try_start_95 .. :try_end_b2} :catchall_84

    move-result-object v17

    .line 2132
    :try_start_b3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_c8

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_c8

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_ef

    .line 2134
    :cond_c8
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_ef

    .line 2135
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_ef

    .line 2136
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_df
    .catchall {:try_start_b3 .. :try_end_df} :catchall_16d

    .line 2725
    if-eqz v17, :cond_3f

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2726
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_3f

    .line 2144
    :cond_ef
    :try_start_ef
    const-string v4, "EMAIL_PERFORMANCE"

    const-string v5, "synchronizeMailboxGeneric() BEFORE OPEN"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 2146
    const-string v4, "EMAIL_PERFORMANCE"

    const-string v5, "synchronizeMailboxGeneric() AFTER OPEN"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v19

    .line 2155
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 2156
    if-gtz v4, :cond_51f

    .line 2157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    .line 2159
    iget v4, v4, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move v5, v4

    .line 2163
    :goto_124
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 2164
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 2167
    const/4 v6, 0x0

    .line 2168
    if-lez v19, :cond_51c

    .line 2172
    const/4 v4, 0x0

    sub-int v5, v19, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2174
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    .line 2175
    array-length v7, v5

    const/4 v4, 0x0

    :goto_148
    if-ge v4, v7, :cond_15a

    aget-object v8, v5, v4

    .line 2176
    if-eqz v8, :cond_157

    .line 2177
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    :cond_157
    add-int/lit8 v4, v4, 0x1

    goto :goto_148

    .line 2181
    :cond_15a
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    if-nez v4, :cond_172

    .line 2182
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2183
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 2725
    :catchall_16d
    move-exception v3

    move-object/from16 v4, v17

    goto/16 :goto_86

    .line 2196
    :cond_172
    array-length v8, v5

    const/4 v4, 0x0

    move v7, v4

    :goto_175
    if-ge v7, v8, :cond_198

    aget-object v10, v5, v7

    .line 2197
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 2198
    if-nez v4, :cond_189

    .line 2199
    add-int/lit8 v6, v6, 0x1

    .line 2201
    :cond_189
    if-eqz v4, :cond_18f

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v4, :cond_194

    .line 2203
    :cond_18f
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    :cond_194
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_175

    :cond_198
    move-object v13, v5

    .line 2221
    :goto_199
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d2

    .line 2222
    new-instance v11, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2223
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2224
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2225
    new-instance v6, Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2228
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    move-object v10, v0

    new-instance v4, Lcom/android/email/MessagingController$10;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController$10;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2284
    :cond_1d2
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    if-nez v4, :cond_1e5

    .line 2285
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2286
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 2292
    :cond_1e5
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2293
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2294
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v4, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2295
    const/4 v12, 0x0

    .line 2296
    const/4 v11, 0x0

    .line 2298
    const/4 v5, 0x0

    .line 2300
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v10

    array-length v14, v10

    const/4 v4, 0x0

    move v8, v4

    :goto_1ff
    if-ge v8, v14, :cond_21b

    aget-object v15, v10, v8

    .line 2301
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_519

    .line 2302
    const/4 v4, 0x1

    move v7, v4

    .line 2304
    :goto_209
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_516

    .line 2305
    const/4 v4, 0x1

    move v6, v4

    .line 2307
    :goto_20f
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_513

    .line 2308
    const/4 v4, 0x1

    .line 2300
    :goto_214
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v11, v6

    move v12, v7

    move v5, v4

    goto :goto_1ff

    .line 2314
    :cond_21b
    if-nez v12, :cond_221

    if-nez v11, :cond_221

    if-eqz v5, :cond_2a9

    .line 2315
    :cond_221
    array-length v14, v13

    const/4 v4, 0x0

    move v10, v4

    :goto_224
    if-ge v10, v14, :cond_2a9

    aget-object v15, v13, v10

    .line 2316
    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 2317
    if-nez v4, :cond_23a

    .line 2315
    :cond_236
    :goto_236
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_224

    .line 2320
    :cond_23a
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 2321
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v15, v7}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v16

    .line 2322
    if-eqz v12, :cond_2a1

    move/from16 v0, v16

    if-eq v0, v6, :cond_2a1

    const/4 v6, 0x1

    move v8, v6

    .line 2323
    :goto_24a
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    .line 2324
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v15, v7}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v22

    .line 2325
    if-eqz v11, :cond_2a4

    move/from16 v0, v22

    if-eq v6, v0, :cond_2a4

    const/4 v6, 0x1

    move v7, v6

    .line 2327
    :goto_25a
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagReply:Z

    .line 2328
    sget-object v23, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v15

    .line 2329
    if-eqz v5, :cond_2a7

    if-eq v6, v15, :cond_2a7

    const/4 v6, 0x1

    .line 2331
    :goto_269
    if-nez v8, :cond_26f

    if-nez v7, :cond_26f

    if-eqz v6, :cond_236

    .line 2332
    :cond_26f
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2334
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2335
    const-string v8, "flagRead"

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2336
    const-string v8, "flagFavorite"

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2337
    const-string v8, "flagReply"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2338
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_236

    .line 2322
    :cond_2a1
    const/4 v6, 0x0

    move v8, v6

    goto :goto_24a

    .line 2325
    :cond_2a4
    const/4 v6, 0x0

    move v7, v6

    goto :goto_25a

    .line 2329
    :cond_2a7
    const/4 v6, 0x0

    goto :goto_269

    .line 2387
    :cond_2a9
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2388
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2390
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2bd
    :goto_2bd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2395
    if-eqz v4, :cond_2bd

    const-string v7, "LocalAccountMoved-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2bd

    .line 2400
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 2405
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v12, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11, v12, v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2409
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2411
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2414
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2416
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2417
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2419
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2423
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v11, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v12, 0x190

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v14, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v7

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_2bd

    .line 2446
    :cond_32b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2448
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_339
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_373

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 2449
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v8

    if-eqz v8, :cond_363

    .line 2450
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    if-le v8, v10, :cond_35f

    .line 2451
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_339

    .line 2453
    :cond_35f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_339

    .line 2456
    :cond_363
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v8

    const/16 v10, 0x6400

    if-le v8, v10, :cond_36f

    .line 2457
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_339

    .line 2459
    :cond_36f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_339

    .line 2476
    :cond_373
    new-instance v7, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2477
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2478
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    new-instance v5, Lcom/android/email/MessagingController$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/android/email/MessagingController$11;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2497
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2498
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2499
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2500
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3b7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 2501
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    if-nez v4, :cond_405

    .line 2508
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2509
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2518
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_3f8

    .line 2519
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5, v10}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 2530
    :goto_3ed
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_3b7

    .line 2523
    :cond_3f8
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_3ed

    .line 2539
    :cond_405
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2540
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2541
    invoke-static {v3, v10, v4}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2543
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_496

    .line 2544
    const/4 v4, 0x0

    .line 2545
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v4

    :goto_41e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_431

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 2546
    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v4

    add-int/2addr v4, v5

    move v5, v4

    goto :goto_41e

    .line 2548
    :cond_431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v4

    if-le v5, v4, :cond_467

    .line 2549
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2550
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2551
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5, v10}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 2554
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_3b7

    .line 2557
    :cond_467
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_46b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 2558
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2559
    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2560
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_46b

    .line 2564
    :cond_48a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_3b7

    .line 2569
    :cond_496
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_49a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 2570
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2571
    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2576
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_49a

    .line 2582
    :cond_4b9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_3b7

    .line 2589
    :cond_4c5
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_4d8

    .line 2590
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2591
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 2599
    :cond_4d8
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 2601
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2603
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 2718
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_4f4

    .line 2719
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2720
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3
    :try_end_4f4
    .catchall {:try_start_ef .. :try_end_4f4} :catchall_16d

    .line 2725
    :cond_4f4
    if-eqz v17, :cond_502

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_502

    .line 2726
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2729
    :cond_502
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_3f

    .line 2103
    :catchall_50f
    move-exception v3

    move-object v4, v10

    goto/16 :goto_7e

    :cond_513
    move v4, v5

    goto/16 :goto_214

    :cond_516
    move v6, v11

    goto/16 :goto_20f

    :cond_519
    move v7, v12

    goto/16 :goto_209

    :cond_51c
    move-object v13, v4

    goto/16 :goto_199

    :cond_51f
    move v5, v4

    goto/16 :goto_124
.end method

.method private synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .registers 15
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1300
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 1302
    .local v8, nc:Lcom/android/email/NotificationController;
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1307
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 1308
    .local v9, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 1309
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_3c

    .line 1310
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v10

    .line 1315
    .local v10, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_29
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v5, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 1318
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 1329
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v9           #remoteStore:Lcom/android/email/mail/Store;
    .end local v10           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_3b
    return-void

    .line 1312
    .restart local v7       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v9       #remoteStore:Lcom/android/email/mail/Store;
    :cond_3c
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_43
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_43} :catch_45

    move-result-object v10

    .restart local v10       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_29

    .line 1319
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v9           #remoteStore:Lcom/android/email/mail/Store;
    .end local v10           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_45
    move-exception v5

    .line 1323
    .local v5, e:Lcom/android/emailcommon/mail/MessagingException;
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_4f

    .line 1325
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 1327
    :cond_4f
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_3b
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 22
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1443
    invoke-direct/range {p0 .. p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronousForSnc(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1497
    :cond_15
    :goto_15
    return-void

    .line 1447
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v16

    .line 1448
    .local v16, nc:Lcom/android/email/NotificationController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1450
    :try_start_2d
    const-string v2, "EMAIL_PERFORMANCE"

    const-string v3, "synchronizeMailboxGeneric() START"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v17

    .line 1457
    .local v17, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v15

    .line 1458
    .local v15, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v15, :cond_ee

    .line 1459
    invoke-direct/range {p0 .. p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v18

    .line 1465
    .local v18, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_54
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->updatesynctime(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 1469
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 1470
    const-string v2, "EMAIL_PERFORMANCE"

    const-string v3, "synchronizeMailboxGeneric() END_SUCCESS"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v2, :cond_15

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v4, 0x190

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_a4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2d .. :try_end_a4} :catch_a6

    goto/16 :goto_15

    .line 1480
    .end local v15           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v17           #remoteStore:Lcom/android/email/mail/Store;
    .end local v18           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_a6
    move-exception v7

    .line 1481
    .local v7, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v2, "EMAIL_PERFORMANCE"

    const-string v3, "synchronizeMailboxGeneric() END_FAIL"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    instance-of v2, v7, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v2, :cond_bb

    .line 1487
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 1489
    :cond_bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    .line 1491
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v2, :cond_15

    .line 1492
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v10, 0x190

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto/16 :goto_15

    .line 1461
    .end local v7           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v15       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v17       #remoteStore:Lcom/android/email/mail/Store;
    :cond_ee
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1, v2, v3}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_fd
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_ee .. :try_end_fd} :catch_a6

    move-result-object v18

    .restart local v18       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto/16 :goto_54
.end method

.method private synchronizeMailboxSynchronousForSnc(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 23
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 1510
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous Starts for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v15

    .line 1516
    .local v15, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v4, 0x0

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1518
    :try_start_62
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1519
    const/4 v11, 0x0

    .line 1521
    .local v11, customSync:Lcom/android/email/mail/StoreSynchronizer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v17

    .line 1522
    .local v17, remoteStore:Lcom/android/email/mail/Store;
    const/16 v16, 0x0

    .line 1524
    .local v16, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_185

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    .line 1531
    :goto_9d
    if-eqz v16, :cond_a5

    .line 1532
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    check-cast v11, Lcom/android/email/mail/StoreSynchronizer;

    .line 1539
    .restart local v11       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    :cond_a5
    if-nez v11, :cond_191

    .line 1540
    invoke-direct/range {p0 .. p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v18

    .line 1543
    .local v18, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    if-eqz v18, :cond_de

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    if-lez v3, :cond_de

    .line 1544
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1545
    .local v12, cv:Landroid/content/ContentValues;
    const-string v3, "newMessageCount"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1546
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1548
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1556
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_de
    :goto_de
    if-eqz v18, :cond_321

    .line 1558
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_19f

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1561
    .local v13, folderSyncStatus:I
    :goto_f2
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous | ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " results Total/New/Fetched - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v4, 0x0

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v9, 0x64

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1570
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    if-ge v3, v5, :cond_172

    const/4 v3, 0x2

    if-ne v13, v3, :cond_22b

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-lt v3, v5, :cond_22b

    .line 1572
    :cond_172
    const/4 v3, 0x2

    if-ne v13, v3, :cond_1a2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-ge v3, v5, :cond_1a2

    .line 1574
    const-string v3, "MsgControl >>>"

    const-string v5, "Sync results ignored. Waiting for SMS from Gateway"

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    .end local v11           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v13           #folderSyncStatus:I
    .end local v16           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v17           #remoteStore:Lcom/android/email/mail/Store;
    .end local v18           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :cond_184
    :goto_184
    return-void

    .line 1528
    .restart local v11       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v16       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v17       #remoteStore:Lcom/android/email/mail/Store;
    :cond_185
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    goto/16 :goto_9d

    .line 1553
    :cond_191
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v3}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v18

    .restart local v18       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto/16 :goto_de

    .line 1558
    :cond_19f
    const/4 v13, 0x0

    goto/16 :goto_f2

    .line 1582
    .restart local v13       #folderSyncStatus:I
    :cond_1a2
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Setting initial_sync success since all r fetched"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V
    :try_end_1e4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_62 .. :try_end_1e4} :catch_1e5

    goto :goto_184

    .line 1647
    .end local v11           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v13           #folderSyncStatus:I
    .end local v16           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v17           #remoteStore:Lcom/android/email/mail/Store;
    .end local v18           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_1e5
    move-exception v4

    .line 1648
    .local v4, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous [accId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][mbId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Got exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto/16 :goto_184

    .line 1596
    .end local v4           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v11       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v13       #folderSyncStatus:I
    .restart local v16       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v17       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v18       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :cond_22b
    move-object/from16 v14, p2

    .line 1601
    .local v14, mbInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz p2, :cond_184

    :try_start_22f
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_253

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_184

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_184

    .line 1607
    :cond_253
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-ge v3, v5, :cond_2fe

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    sub-int/2addr v3, v5

    if-lez v3, :cond_2fe

    .line 1609
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "## Run the synchronizeMailbox for acct "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " folder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Messages Fetched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TotalMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1615
    .restart local v12       #cv:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p2

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 1616
    const-string v3, "visibleLimit"

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1617
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1619
    .restart local v19       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    goto/16 :goto_184

    .line 1628
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_2fe
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_313

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_184

    .line 1631
    :cond_313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    goto/16 :goto_184

    .line 1640
    .end local v13           #folderSyncStatus:I
    .end local v14           #mbInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1642
    if-eqz v11, :cond_184

    .line 1643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    :try_end_349
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_22f .. :try_end_349} :catch_1e5

    goto/16 :goto_184
.end method

.method private updateHistoryForEmailSend(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2842
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2846
    :try_start_6
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->toFriendlyUseInBubbleButton([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    .line 2858
    const-string v2, "MsgControl >>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHistoryForEmailSend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2861
    const-string v2, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2862
    const-string v2, "account_name"

    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    const-string v2, "contactid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2864
    const-string v2, "account_id"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2865
    const-string v2, "name"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    const-string v1, "messageid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2867
    const-string v1, "m_subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 2875
    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 2876
    const-string v2, ""

    .line 2878
    if-eqz v1, :cond_e0

    .line 2888
    :goto_87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_105

    .line 2889
    const-string v2, "m_content"

    const/4 v4, 0x0

    const/16 v5, 0x31

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    :goto_9b
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v1, :cond_10c

    .line 2893
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2894
    array-length v2, v1

    :goto_ab
    if-ge v0, v2, :cond_10c

    aget-object v4, v1, v0

    .line 2895
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2897
    array-length v5, v4

    if-lez v5, :cond_dd

    .line 2898
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 2899
    const-string v5, "number"

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/email"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2894
    :cond_dd
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 2880
    :cond_e0
    if-eqz v4, :cond_110

    .line 2881
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2882
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2883
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_87

    .line 2891
    :cond_105
    const-string v2, "m_content"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10a} :catch_10b

    goto :goto_9b

    .line 2906
    :catch_10b
    move-exception v0

    .line 2909
    :cond_10c
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 2910
    return-void

    :cond_110
    move-object v1, v2

    goto/16 :goto_87
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    .line 352
    return-void
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5427
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    .line 5430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 5433
    const-string v6, "checkMail"

    new-instance v0, Lcom/android/email/MessagingController$21;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$21;-><init>(Lcom/android/email/MessagingController;JJ)V

    invoke-direct {p0, v6, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 5465
    return-void
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2927
    if-nez p1, :cond_4

    .line 2957
    :cond_3
    :goto_3
    return-void

    .line 2933
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-wide v7, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_66
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_34} :catch_5b

    move-result-object v7

    .line 2943
    :try_start_35
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2944
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v7, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2945
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2946
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 2947
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_55} :catch_73

    .line 2953
    :cond_55
    if-eqz v7, :cond_3

    .line 2954
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 2950
    :catch_5b
    move-exception v0

    move-object v1, v6

    .line 2951
    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_70

    .line 2953
    if-eqz v1, :cond_3

    .line 2954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 2953
    :catchall_66
    move-exception v0

    :goto_67
    if-eqz v6, :cond_6c

    .line 2954
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6c
    throw v0

    .line 2953
    :catchall_6d
    move-exception v0

    move-object v6, v7

    goto :goto_67

    :catchall_70
    move-exception v0

    move-object v6, v1

    goto :goto_67

    .line 2950
    :catch_73
    move-exception v0

    move-object v1, v7

    goto :goto_5d
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2974
    :try_start_0
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    .line 2976
    if-nez v0, :cond_139

    .line 2977
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_fa
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_118

    move-object v8, v0

    .line 2981
    :goto_e
    :try_start_e
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget v7, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 2985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2986
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2987
    invoke-static {p1, v0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2989
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, p2, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    :try_end_34
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_e .. :try_end_34} :catch_e0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_34} :catch_fa
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_34} :catch_118

    .line 2994
    :try_start_34
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-nez v0, :cond_44

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 2995
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_136
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_34 .. :try_end_44} :catch_e0
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_44} :catch_fa
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_44} :catch_118

    .line 3001
    :cond_44
    :goto_44
    :try_start_44
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " f : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    if-eqz p6, :cond_8b

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 3004
    iget-object v5, p6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)Z

    .line 3010
    :cond_8b
    invoke-direct {p0, p2, p5}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 3011
    invoke-direct {p0, v8, p5}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 3014
    invoke-static {p5, p2, v6, p6}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3017
    iput p4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 3019
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3020
    const-string v1, "flagAttachment"

    iget-boolean v2, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3021
    const-string v1, "flagLoaded"

    iget v2, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3022
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3024
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3027
    iget-boolean v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    if-eqz v0, :cond_df

    .line 3029
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_df
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_44 .. :try_end_df} :catch_e0
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_df} :catch_fa
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_df} :catch_118

    .line 3043
    :cond_df
    :goto_df
    return-void

    .line 3034
    :catch_e0
    move-exception v0

    .line 3035
    :try_start_e1
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Ljava/lang/RuntimeException; {:try_start_e1 .. :try_end_f9} :catch_fa
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f9} :catch_118

    goto :goto_df

    .line 3038
    :catch_fa
    move-exception v0

    .line 3039
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 3040
    :catch_118
    move-exception v0

    .line 3041
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing attachment."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 2997
    :catch_136
    move-exception v0

    goto/16 :goto_44

    :cond_139
    move-object v8, v0

    goto/16 :goto_e
.end method

.method public createFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;JLcom/android/email/MessagingListener;)V
    .registers 14
    .parameter "mailbox"
    .parameter "mailboxName"
    .parameter "accountKey"
    .parameter "listener"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 597
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v6, :cond_9

    .line 829
    :goto_8
    return-void

    .line 603
    :cond_9
    const-string v7, "createFolder"

    new-instance v0, Lcom/android/email/MessagingController$2;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v7, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public deleteFolder(JLjava/util/ArrayList;Lcom/android/email/MessagingListener;)V
    .registers 12
    .parameter "accountKey"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/MessagingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p3, mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    .line 1074
    .local v5, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v5, :cond_9

    .line 1281
    :goto_8
    return-void

    .line 1079
    :cond_9
    const-string v6, "deleteFolder"

    new-instance v0, Lcom/android/email/MessagingController$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$4;-><init>(Lcom/android/email/MessagingController;JLjava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v6, p4, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public deleteUserAccount(J)V
    .registers 11
    .parameter

    .prologue
    .line 5682
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 5684
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_13

    .line 5685
    :try_start_b
    const-string v0, "MsgControl >>>"

    const-string v1, "Invalid Account Id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5756
    :goto_12
    return-void

    .line 5689
    :cond_13
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 5691
    if-nez v0, :cond_44

    .line 5692
    const-string v0, "MsgControl >>>"

    const-string v1, "Account is Empty: Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    const-string v0, "validate_result_code"

    const/16 v1, 0x5b

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5695
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, v7, p1, p2}, Lcom/android/email/GroupMessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_2f

    goto :goto_12

    .line 5750
    :catch_2f
    move-exception v0

    .line 5751
    const-string v1, "MsgControl >>>"

    const-string v2, "Exception while deleting account"

    invoke-static {v1, v2, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5753
    :goto_37
    const-string v0, "validate_result_code"

    const/16 v1, 0x1a

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5754
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, v7, p1, p2}, Lcom/android/email/GroupMessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_12

    .line 5699
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5703
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 5704
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/Store;->delete()V

    .line 5706
    invoke-static {v1}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .line 5710
    :cond_5d
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5713
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 5714
    invoke-static {v1}, Lcom/android/email/mail/Sender;->removeInstance(Ljava/lang/String;)V

    .line 5717
    :cond_6c
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 5718
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_7d} :catch_2f

    .line 5722
    :try_start_7d
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/email"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5729
    if-eqz v0, :cond_b0

    .line 5730
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 5734
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_b0} :catch_c5

    .line 5744
    :cond_b0
    :goto_b0
    :try_start_b0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 5747
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 5749
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c3} :catch_2f

    goto/16 :goto_37

    .line 5739
    :catch_c5
    move-exception v0

    goto :goto_b0
.end method

.method public dumpConnectionStatus()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 6546
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS START ***** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6547
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 6548
    if-nez v2, :cond_18

    .line 6549
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS END *** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6565
    :goto_17
    return-void

    .line 6552
    :cond_18
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    if-ge v1, v3, :cond_44

    aget-object v0, v2, v1

    .line 6553
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isLegacy(J)Z

    move-result v4

    if-nez v4, :cond_2f

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 6556
    :cond_2f
    :try_start_2f
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    :try_end_3b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2f .. :try_end_3b} :catch_3f

    .line 6552
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 6558
    :catch_3f
    move-exception v0

    .line 6560
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_3b

    .line 6564
    :cond_44
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS END ***** \n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public dumpIdleStatus()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 6514
    const-string v1, "MsgControl >>>"

    const-string v2, " ***** IDLE STATISTICS START  *****"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6515
    const-string v1, "MsgControl >>>"

    const-string v2, "IDLE ResetTimer - 600000 RestartTimer - 1800000 DelayedFetchTimer - 10000 DelayedQresyncTimer - 30000"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6518
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE Is Reset Timer Running? ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_65

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6520
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 6521
    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 6522
    if-eqz v0, :cond_49

    .line 6523
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_49

    .line 6518
    :cond_65
    const/4 v0, 0x0

    goto :goto_34

    .line 6525
    :cond_67
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** IDLE STATISTICS  END   *****\n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6526
    const-string v0, "MsgControl >>>"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6527
    return-void
.end method

.method public dumpStatus()V
    .registers 6

    .prologue
    .line 6530
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY COMMAND STATISTICS START ***** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6531
    iget-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 6532
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No. of pending commands: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6533
    if-lez v0, :cond_45

    .line 6534
    iget-object v1, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    new-array v0, v0, [Lcom/android/email/MessagingController$Command;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/MessagingController$Command;

    check-cast v0, [Lcom/android/email/MessagingController$Command;

    .line 6535
    array-length v2, v0

    const/4 v1, 0x0

    :goto_35
    if-ge v1, v2, :cond_45

    aget-object v3, v0, v1

    .line 6536
    const-string v4, "MsgControl >>>"

    invoke-virtual {v3}, Lcom/android/email/MessagingController$Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6535
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 6539
    :cond_45
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY COMMAND STATISTICS END ***** \n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6540
    const-string v0, "MsgControl >>>"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6541
    invoke-virtual {p0}, Lcom/android/email/MessagingController;->dumpIdleStatus()V

    .line 6542
    invoke-virtual {p0}, Lcom/android/email/MessagingController;->dumpConnectionStatus()V

    .line 6543
    return-void
.end method

.method public getMailboxSyncState(J)I
    .registers 4
    .parameter "mailboxId"

    .prologue
    .line 6443
    const/4 v0, -0x1

    return v0
.end method

.method public listFolders(JLcom/android/email/MessagingListener;)V
    .registers 7
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 424
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_9

    .line 591
    :goto_8
    return-void

    .line 427
    :cond_9
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    .line 428
    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$1;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4789
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_2e

    const/4 v9, 0x1

    :goto_f
    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    .line 4792
    const-string v13, "loadAttachment"

    new-instance v2, Lcom/android/email/MessagingController$18;

    move-object v3, p0

    move-wide/from16 v4, p7

    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p10

    move-wide/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/email/MessagingController$18;-><init>(Lcom/android/email/MessagingController;JJJZJ)V

    move-object/from16 v0, p9

    invoke-direct {p0, v13, v0, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 4939
    return-void

    .line 4789
    :cond_2e
    const/4 v9, 0x0

    goto :goto_f
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;ZZZ)V
    .registers 32
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4955
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v6, :cond_48

    const/4 v12, 0x1

    :goto_13
    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p7

    invoke-virtual/range {v5 .. v12}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1c} :catch_4a

    .line 4965
    :goto_1c
    const-string v17, "loadAttachment"

    new-instance v18, Lcom/android/email/MessagingController$CommandInfo;

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-wide/from16 v3, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController$CommandInfo;-><init>(JJ)V

    new-instance v5, Lcom/android/email/MessagingController$19;

    move-object/from16 v6, p0

    move/from16 v7, p10

    move-wide/from16 v8, p1

    move-wide/from16 v10, p5

    move-wide/from16 v12, p3

    move-wide/from16 v14, p7

    move/from16 v16, p12

    invoke-direct/range {v5 .. v16}, Lcom/android/email/MessagingController$19;-><init>(Lcom/android/email/MessagingController;ZJJJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p9

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingController$CommandInfo;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 5116
    return-void

    .line 4955
    :cond_48
    const/4 v12, 0x0

    goto :goto_13

    .line 4961
    :catch_4a
    move-exception v5

    .line 4962
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Nullpointer Exception!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public loadAttachmentSyncronous(JJJJ)Z
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3647
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 3649
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3651
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 3654
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 3656
    if-eqz v2, :cond_24

    if-eqz v3, :cond_24

    if-eqz v4, :cond_24

    if-nez v5, :cond_37

    .line 3657
    :cond_24
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Account, mailbox, message or attachment are null"

    invoke-direct {v9, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 3660
    const/4 v2, 0x0

    .line 3721
    :goto_36
    return v2

    .line 3663
    :cond_37
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 3664
    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 3665
    if-nez v3, :cond_5f

    .line 3666
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Error while getting remoteFolder."

    invoke-direct {v9, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 3668
    const/4 v2, 0x0

    goto :goto_36

    .line 3670
    :cond_5f
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3675
    iget-object v2, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 3676
    new-instance v6, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v6}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 3677
    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v7

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 3678
    const-string v2, "X-Android-Attachment-StoreData"

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    const-string v2, "Content-Type"

    const-string v7, "%s;\n name=\"%s\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3687
    const-string v2, "base64"

    .line 3688
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    if-eqz v7, :cond_a5

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a5

    .line 3689
    iget-object v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 3691
    :cond_a5
    const-string v7, "Content-Transfer-Encoding"

    invoke-virtual {v6, v7, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    new-instance v2, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v2}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 3696
    const-string v7, "mixed"

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 3697
    invoke-virtual {v2, v6}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 3699
    const-string v7, "Content-Type"

    const-string v8, "multipart/mixed"

    invoke-virtual {v4, v7, v8}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3700
    invoke-virtual {v4, v2}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 3704
    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3705
    invoke-virtual {v2, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3706
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v2, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 3712
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v5, p1, p2}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 3714
    iget-object v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;
    :try_end_da
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_da} :catch_e2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_da} :catch_e6

    if-eqz v2, :cond_df

    const/4 v2, 0x1

    goto/16 :goto_36

    :cond_df
    const/4 v2, 0x0

    goto/16 :goto_36

    .line 3715
    :catch_e2
    move-exception v2

    .line 3718
    const/4 v2, 0x0

    goto/16 :goto_36

    .line 3719
    :catch_e6
    move-exception v2

    .line 3720
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing attachment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    const/4 v2, 0x0

    goto/16 :goto_36
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4660
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    .line 4661
    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/MessagingController$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$17;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 4776
    return-void
.end method

.method public loadMore(J)V
    .registers 5
    .parameter

    .prologue
    .line 5500
    const-string v0, "MsgControl >>>"

    const-string v1, "load More"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    return-void
.end method

.method public onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 6454
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE onIdleExists [Delayed by 30000 ]| accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6456
    iget-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/MessagingController$23;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/MessagingController$23;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6466
    return-void
.end method

.method public processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V
    .registers 34
    .parameter
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJJJJII)V"
        }
    .end annotation

    .prologue
    .line 3236
    const-string v18, "processPendingAccountMoveActions"

    const/16 v19, 0x0

    new-instance v3, Lcom/android/email/MessagingController$15;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move/from16 v16, p12

    move/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/android/email/MessagingController$15;-><init>(Lcom/android/email/MessagingController;Ljava/util/ArrayList;JJJJJII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3314
    return-void
.end method

.method public processPendingActions(J)V
    .registers 6
    .parameter

    .prologue
    .line 3046
    const-string v0, "processPendingActions"

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/MessagingController$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$12;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3066
    return-void
.end method

.method public processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3560
    const-wide/16 v3, -0x1

    .line 3563
    const/4 v2, 0x0

    .line 3565
    const/4 v5, 0x0

    .line 3567
    :try_start_4
    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 3570
    if-eqz v6, :cond_d2

    .line 3571
    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 3572
    if-eqz v5, :cond_16

    throw v5

    throw v6

    cmp-long v7, v7, v9

    if-eqz v7, :cond_d2

    .line 3573
    :cond_16
    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p1, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_ce
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_1b} :catch_d0

    move-result-object v5

    move-wide v9, v3

    move-object v3, v5

    .line 3578
    :goto_1e
    if-nez v2, :cond_29

    .line 3579
    :try_start_20
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 3582
    :cond_29
    if-eqz v3, :cond_2e

    .line 3583
    invoke-direct {p0, v2, p2, v3, v6}, Lcom/android/email/MessagingController;->processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 3588
    :cond_2e
    const/4 v2, 0x3

    move/from16 v0, p8

    if-ne v0, v2, :cond_4f

    .line 3592
    move-wide/from16 v0, p6

    invoke-static {p1, p3, p4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 3594
    const-string v2, "processPendingDeletesForeverSynchronous"

    const-string v3, "target_server_type is IMAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p6

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3596
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3640
    :goto_4e
    return-void

    .line 3599
    :cond_4f
    const-string v2, "processPendingDeletesForeverSynchronous"

    const-string v3, "target_server_type is POP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3616
    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 3618
    if-eqz v3, :cond_8f

    .line 3619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalAccountMoved-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3621
    const-string v4, "accountKey"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3622
    const-string v4, "mailboxKey"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3623
    const-string v4, "syncServerId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    :cond_8f
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p6

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3628
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3631
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v3, p3

    move-wide/from16 v5, p6

    move-wide/from16 v7, p10

    invoke-static/range {v2 .. v8}, Lcom/android/email/provider/AttachmentProvider;->moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_a8
    .catchall {:try_start_20 .. :try_end_a8} :catchall_ce
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_20 .. :try_end_a8} :catch_a9

    goto :goto_4e

    .line 3635
    :catch_a9
    move-exception v2

    move-wide v3, v9

    .line 3636
    :goto_ab
    :try_start_ab
    const-string v5, "processPendingDeletesForeverSynchronous"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_ab .. :try_end_cd} :catchall_ce

    goto :goto_4e

    .line 3638
    :catchall_ce
    move-exception v2

    throw v2

    .line 3635
    :catch_d0
    move-exception v2

    goto :goto_ab

    :cond_d2
    move-wide v9, v3

    move-object v3, v5

    goto/16 :goto_1e
.end method

.method public processPendingMoveActions(Ljava/util/HashMap;JJJ)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJJ)V"
        }
    .end annotation

    .prologue
    .line 3071
    const-string v9, "processPendingMoveActions"

    const/4 v10, 0x0

    new-instance v0, Lcom/android/email/MessagingController$13;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/MessagingController$13;-><init>(Lcom/android/email/MessagingController;JLjava/util/HashMap;JJ)V

    invoke-direct {p0, v9, v10, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3109
    return-void
.end method

.method pruneCachedAttachments(J)V
    .registers 20
    .parameter "accountId"

    .prologue
    .line 5125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5126
    .local v2, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v10

    .line 5127
    .local v10, cacheDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 5130
    .local v12, fileList:[Ljava/io/File;
    if-nez v12, :cond_19

    .line 5164
    :cond_18
    return-void

    .line 5132
    :cond_19
    move-object v8, v12

    .local v8, arr$:[Ljava/io/File;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1e
    move/from16 v0, v16

    if-ge v13, v0, :cond_18

    aget-object v11, v8, v13

    .line 5133
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 5137
    :try_start_2a
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 5138
    .local v14, id:J
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 5139
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_44} :catch_71

    move-result-object v9

    .line 5141
    .local v9, c:Landroid/database/Cursor;
    :try_start_45
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 5144
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_6c

    move-result-object v4

    if-nez v4, :cond_58

    .line 5149
    :try_start_52
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5132
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :cond_55
    :goto_55
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    .line 5149
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #id:J
    :cond_58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5153
    sget-object v4, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_62} :catch_71

    .line 5159
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :goto_62
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_55

    .line 5160
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    goto :goto_55

    .line 5149
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #id:J
    :catchall_6c
    move-exception v4

    :try_start_6d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_71} :catch_71

    .line 5154
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :catch_71
    move-exception v4

    goto :goto_62
.end method

.method public qreSyncMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 14
    .parameter "account"
    .parameter "folder"

    .prologue
    const/4 v10, 0x0

    .line 1399
    const-string v5, "MsgControl >>>"

    const-string v6, "QReSyncMailboxSynchronous Starts"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x1b

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    .line 1403
    const/4 v4, 0x0

    .line 1404
    .local v4, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_start_17
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 1405
    .local v3, remoteStore:Lcom/android/email/mail/Store;
    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 1406
    .local v2, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/StoreSynchronizer;

    .line 1409
    .local v0, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v0, :cond_48

    .line 1410
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    .line 1415
    :goto_36
    if-eqz v4, :cond_4f

    .line 1416
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x1a

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    .line 1427
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v3           #remoteStore:Lcom/android/email/mail/Store;
    :goto_47
    return-void

    .line 1412
    .restart local v0       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v2       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v3       #remoteStore:Lcom/android/email/mail/Store;
    :cond_48
    iget-boolean v5, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    invoke-interface {v0, p1, p2, v5}, Lcom/android/email/mail/StoreSynchronizer;->qresyncMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    goto :goto_36

    .line 1419
    :cond_4f
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x2c

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V
    :try_end_5e
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_17 .. :try_end_5e} :catch_5f

    goto :goto_47

    .line 1422
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v3           #remoteStore:Lcom/android/email/mail/Store;
    :catch_5f
    move-exception v1

    .line 1423
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v5, "MsgControl >>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronizeMailboxSearchOnServer [accId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Got exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7, v1, v10}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_47
.end method

.method public removeListener(Lcom/android/email/MessagingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 356
    return-void
.end method

.method public renameFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .registers 11
    .parameter "mailbox"
    .parameter "newMailboxName"
    .parameter "listener"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 835
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v6, :cond_1b

    .line 836
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v3, 0x3

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x68

    invoke-direct {v5, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V

    .line 1068
    :goto_1a
    return-void

    .line 844
    :cond_1b
    const-string v0, "renameFolder"

    new-instance v1, Lcom/android/email/MessagingController$3;

    invoke-direct {v1, p0, p1, p2, v6}, Lcom/android/email/MessagingController$3;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_1a
.end method

.method public resetIdling(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 5875
    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE resetIdling"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5877
    if-eqz p1, :cond_7b

    .line 5878
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5880
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5881
    iget-object v3, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5882
    if-eqz v0, :cond_1e

    .line 5884
    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 5885
    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 5888
    const-string v3, "Off-Peak Time"

    iput-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    goto :goto_1e

    .line 5896
    :cond_4b
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->status()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_56

    .line 5898
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 5900
    :cond_56
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->reset()V

    goto :goto_1e

    .line 5905
    :cond_5a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 5906
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5907
    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0, v3, v0}, Lcom/android/email/MessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_64

    .line 5910
    :cond_78
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5914
    :cond_7b
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 5915
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5916
    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE No need to reset since no idle connections!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5937
    :goto_90
    return-void

    .line 5920
    :cond_91
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-ne v5, v0, :cond_a1

    .line 5921
    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE Reset timer is already running!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 5927
    :cond_a1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/MessagingController$22;

    invoke-direct {v1, p0}, Lcom/android/email/MessagingController$22;-><init>(Lcom/android/email/MessagingController;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_90
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 238
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 243
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_f} :catch_5c

    .line 247
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v2}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 249
    :cond_1b
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_39

    .line 250
    const-string v2, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessagingController:run() process command START : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_39
    iput-boolean v3, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 255
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 256
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_5e

    move v2, v3

    :goto_4b
    invoke-virtual {v5, v2}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    .line 258
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_59

    .line 259
    const-string v2, "MsgControl >>>"

    const-string v5, "MessagingController:run() process command END"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_59
    iput-boolean v4, p0, Lcom/android/email/MessagingController;->mBusy:Z

    goto :goto_7

    .line 244
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_5c
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_7

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #command:Lcom/android/email/MessagingController$Command;
    :cond_5e
    move v2, v4

    .line 256
    goto :goto_4b
.end method

.method public searchOnServerSync(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .registers 10
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 1287
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1295
    :goto_5
    return-void

    .line 1289
    :cond_6
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1290
    const-string v0, "searchOnServerSync"

    new-instance v1, Lcom/android/email/MessagingController$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5174
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/MessagingController$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$20;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 5179
    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .registers 25
    .parameter
    .parameter

    .prologue
    .line 5189
    const-string v2, "MsgControl >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PERFORMANCE s sendPendingMessagesSynchronous START "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v10

    .line 5193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v7

    .line 5194
    const-wide/16 v2, -0x1

    cmp-long v2, v7, v2

    if-nez v2, :cond_36

    .line 5390
    :goto_35
    return-void

    .line 5197
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5198
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_SUBJECT_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v5, "mailboxKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5210
    const-string v3, "MsgControl >>>"

    const-string v4, "PERFORMANCE s sendPendingMessagesSynchronous complete getting messages to be sent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    :try_start_5a
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5a .. :try_end_5d} :catch_189

    move-result v3

    if-gtz v3, :cond_64

    .line 5386
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_35

    .line 5219
    :cond_64
    :try_start_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 5221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v12

    .line 5222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 5223
    invoke-virtual {v3}, Lcom/android/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v13

    .line 5224
    const/4 v3, 0x0

    .line 5225
    if-eqz v13, :cond_311

    .line 5226
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5227
    const-string v4, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v9, v3

    .line 5230
    :goto_ac
    const-string v3, "MsgControl >>>"

    const-string v4, "PERFORMANCE s sendPendingMessagesSynchronous remoteStore.requireCopyMessageToSentFolder complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    :cond_b3
    :goto_b3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b6
    .catchall {:try_start_64 .. :try_end_b6} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_64 .. :try_end_b6} :catch_189

    move-result v3

    if-eqz v3, :cond_2d6

    .line 5235
    const-wide/16 v6, -0x1

    .line 5239
    const/4 v3, 0x0

    :try_start_bc
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5240
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 5242
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v3, v14, v16

    if-eqz v3, :cond_b3

    .line 5245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v14, v15, v6, v7}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 5247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v7}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_1ae

    .line 5248
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_b3

    .line 5249
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t send #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; unloaded attachments"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_bc .. :try_end_107} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_bc .. :try_end_107} :catch_108

    goto :goto_b3

    .line 5288
    :catch_108
    move-exception v8

    .line 5290
    :try_start_109
    instance-of v3, v8, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v3, :cond_13f

    .line 5291
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13f

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to attach"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13f

    .line 5293
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 5295
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 5296
    const-string v5, "syncServerId"

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5299
    const/4 v5, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v4, v5, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5300
    const/16 v3, 0x11

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/mail/MessagingException;->setExceptionType(I)V

    .line 5306
    :cond_13f
    instance-of v3, v8, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v3, :cond_14a

    .line 5307
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v10, v3, v4}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 5309
    :cond_14a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V

    .line 5310
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_17b

    .line 5311
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPendingMessagesSynchronous failed  messageID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " me="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5314
    :cond_17b
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v3, v4, v5}, Lcom/android/email/Controller;->showSendingNotification_fail(JJLjava/lang/String;)V
    :try_end_187
    .catchall {:try_start_109 .. :try_end_187} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_109 .. :try_end_187} :catch_189

    goto/16 :goto_b3

    .line 5380
    :catch_189
    move-exception v7

    .line 5381
    :try_start_18a
    instance-of v2, v7, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v2, :cond_195

    .line 5382
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v10, v2, v3}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 5384
    :cond_195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v5, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_1a2
    .catchall {:try_start_18a .. :try_end_1a2} :catchall_2b5

    .line 5386
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5389
    :goto_1a5
    const-string v2, "MsgControl >>>"

    const-string v3, "PERFORMANCE s sendPendingMessagesSynchronous END "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 5255
    :cond_1ae
    :try_start_1ae
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v8

    .line 5257
    array-length v14, v8

    const/4 v3, 0x0

    :goto_1b8
    if-ge v3, v14, :cond_245

    aget-object v15, v8, v3

    .line 5258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v17, v0

    iget-wide v0, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v16 .. v20}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFullPath(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v16

    .line 5260
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentTempForDrm(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5263
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5264
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5266
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_210

    .line 5267
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 5270
    :cond_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v15, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v15, v1}, Lcom/android/email/EmailUtility;->IsDRMFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_23a

    .line 5276
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v3, v4, v5}, Lcom/android/email/Controller;->showSendingNotification_fail(JJLjava/lang/String;)V

    .line 5280
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_235
    .catchall {:try_start_1ae .. :try_end_235} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1ae .. :try_end_235} :catch_108

    .line 5386
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_35

    .line 5284
    :cond_23a
    :try_start_23a
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 5257
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b8

    .line 5287
    :cond_245
    invoke-virtual {v12, v6, v7}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_248
    .catchall {:try_start_23a .. :try_end_248} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_23a .. :try_end_248} :catch_108

    .line 5320
    :try_start_248
    const-string v3, "MsgControl >>>"

    const-string v8, "PERFORMANCE s sendPendingMessagesSynchronous post processing after sent start"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 5326
    if-eqz v13, :cond_2ba

    .line 5331
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    .line 5333
    if-eqz v8, :cond_272

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_272

    .line 5334
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v14, v15, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 5337
    :cond_272
    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v9, v8, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5346
    :goto_277
    const-string v3, "MsgControl >>>"

    const-string v8, "PERFORMANCE s sendPendingMessagesSynchronous post processing after sent end"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v14, v15, v3}, Lcom/android/email/Controller;->showSendingNotification_finish(JJLjava/lang/String;)V

    .line 5352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 5354
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v6

    .line 5357
    if-eqz v3, :cond_2a7

    if-eqz v6, :cond_2a7

    .line 5358
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/android/email/MessagingController;->updateHistoryForEmailSend(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)V

    .line 5363
    :cond_2a7
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b3

    .line 5364
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/email/MessagingController;->setMessageReply(JZ)V
    :try_end_2b3
    .catchall {:try_start_248 .. :try_end_2b3} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_248 .. :try_end_2b3} :catch_189

    goto/16 :goto_b3

    .line 5386
    :catchall_2b5
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 5339
    :cond_2ba
    :try_start_2ba
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v14, v15, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 5340
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 5342
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2, v8, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5343
    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v8, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_277

    .line 5368
    :cond_2d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V

    .line 5369
    const-string v2, "EMAIL_PERFORMANCE"

    const-string v3, "SEND SUCCESS Notification"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5370
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v10, v2, v3}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 5374
    const-string v2, "TN_US_ATT"

    invoke-static {v2}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2ff

    const-string v2, "TN_US_COMM"

    invoke-static {v2}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30c

    .line 5376
    :cond_2ff
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_30c

    .line 5377
    const-string v2, "GATE"

    const-string v3, "<GATE-M>EMAIL_MESSAGE_SENT</GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30c
    .catchall {:try_start_2ba .. :try_end_30c} :catchall_2b5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2ba .. :try_end_30c} :catch_189

    .line 5386
    :cond_30c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1a5

    :cond_311
    move-object v9, v3

    goto/16 :goto_ac
.end method

.method public setFetchFlag(JI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 5965
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5968
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5969
    if-eqz v0, :cond_36

    .line 5970
    invoke-virtual {v0, p3}, Lcom/android/email/MessagingController$ImapIdleFolder;->setFetchFlag(I)V

    .line 5974
    :goto_35
    return-void

    .line 5972
    :cond_36
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method public setMessageReply(JZ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5402
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5403
    const-string v1, "flagReply"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5404
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 5406
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5408
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 5411
    if-eqz v0, :cond_2f

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    if-nez v1, :cond_2f

    .line 5412
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 5414
    :cond_2f
    return-void
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5841
    monitor-enter p0

    .line 5843
    :try_start_2
    const-string v0, "MsgControl >>>"

    const-string v2, "IDLE startIdling Starts"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5845
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_48

    .line 5846
    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE Folder is already being idled [accId/mbId -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Hence stopping it!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5848
    invoke-virtual {p0, p1, p2}, Lcom/android/email/MessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5852
    :cond_48
    new-instance v2, Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$ImapIdleFolder;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5853
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5854
    const/4 v0, 0x1

    .line 5856
    iget-object v3, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 5857
    iget-object v3, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 5858
    const-string v0, "Off-Peak Time"

    iput-object v0, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    move v0, v1

    .line 5864
    :cond_70
    if-eqz v0, :cond_99

    const/4 v0, -0x1

    invoke-virtual {v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_99

    .line 5865
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE IDLE failed to start for folder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "And will be retried while reset-ting!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5868
    :cond_99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/MessagingController;->resetIdling(Z)V

    .line 5869
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE IDLE started for folder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " successfully by thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_2 .. :try_end_c3} :catchall_c5

    .line 5871
    monitor-exit p0

    return-void

    .line 5841
    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5789
    monitor-enter p0

    .line 5791
    :try_start_3
    const-string v0, "MsgControl >>>"

    const-string v3, "IDLE startIdling Starts"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5793
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_49

    .line 5794
    const-string v0, "MsgControl >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE Folder is already being idled [accId/mbId -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Hence stopping it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5796
    invoke-virtual {p0, p1, p2}, Lcom/android/email/MessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5800
    :cond_49
    new-instance v3, Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/MessagingController$ImapIdleFolder;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5801
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5804
    iget-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 5805
    iget-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 5806
    const-string v0, "Off-Peak Time"

    iput-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    move v0, v2

    .line 5815
    :goto_70
    if-eqz p3, :cond_79

    .line 5817
    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isMobileAvailable()Z

    move-result v0

    if-nez v0, :cond_ce

    move v0, v1

    .line 5819
    :cond_79
    :goto_79
    if-eqz v0, :cond_a2

    const/4 v0, -0x1

    invoke-virtual {v3}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_a2

    .line 5820
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE failed to start for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "And will be retried while reset-ting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5823
    :cond_a2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/MessagingController;->resetIdling(Z)V

    .line 5824
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE started for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully by thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_3 .. :try_end_cc} :catchall_d0

    .line 5826
    monitor-exit p0

    return-void

    :cond_ce
    move v0, v2

    .line 5817
    goto :goto_79

    .line 5789
    :catchall_d0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d3
    move v0, v1

    goto :goto_70
.end method

.method public stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 5947
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5950
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5951
    if-eqz v0, :cond_3a

    .line 5952
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->stop()V

    .line 5958
    :goto_39
    return-void

    .line 5954
    :cond_3a
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5955
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_39
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V
    .registers 9
    .parameter "account"
    .parameter "folder"
    .parameter "listener"

    .prologue
    .line 1345
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 1355
    :cond_a
    :goto_a
    return-void

    .line 1349
    :cond_b
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1350
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$6;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 2747
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v1, :cond_7

    .line 2837
    :goto_6
    return v0

    .line 2751
    :cond_7
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2762
    :try_start_c
    const-string v1, "date"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2763
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2764
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3e

    .line 2765
    const-string v1, "number"

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    :cond_3e
    const-string v1, "contactid"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2768
    const-string v1, "messageid"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2769
    const-string v1, "m_subject"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    const-string v1, "account_name"

    invoke-virtual {v8, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    const-string v1, "account_id"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2772
    const-string v1, "name"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    const-string v1, "new"

    iget-boolean v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v2, :cond_c8

    :goto_78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2783
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 2784
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 2785
    const-string v1, ""

    .line 2787
    if-eqz v0, :cond_ca

    .line 2809
    :goto_87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_ef

    .line 2810
    const-string v1, "m_content"

    const/4 v2, 0x0

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c .. :try_end_9b} :catch_f5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_9b} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_9b} :catch_119

    .line 2823
    :goto_9b
    :try_start_9b
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2828
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c2} :catch_117

    .line 2836
    :goto_c2
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    move v0, v7

    .line 2837
    goto/16 :goto_6

    :cond_c8
    move v0, v7

    .line 2775
    goto :goto_78

    .line 2789
    :cond_ca
    if-eqz v2, :cond_11b

    .line 2792
    :try_start_cc
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2802
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2803
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    .line 2812
    :cond_ef
    const-string v1, "m_content"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_cc .. :try_end_f4} :catch_f5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_cc .. :try_end_f4} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f4} :catch_119

    goto :goto_9b

    .line 2813
    :catch_f5
    move-exception v0

    .line 2815
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_9b

    .line 2816
    :catch_fa
    move-exception v0

    .line 2817
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while updating History For Email."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_9b

    .line 2834
    :catch_117
    move-exception v0

    goto :goto_c2

    .line 2819
    :catch_119
    move-exception v0

    goto :goto_9b

    :cond_11b
    move-object v0, v1

    goto/16 :goto_87
.end method

.method public updatesynctime(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 7
    .parameter

    .prologue
    .line 2734
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2736
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2737
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2738
    if-eqz v1, :cond_21

    .line 2739
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2740
    :cond_21
    return-void
.end method
