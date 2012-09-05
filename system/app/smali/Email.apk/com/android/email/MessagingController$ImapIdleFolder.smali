.class public Lcom/android/email/MessagingController$ImapIdleFolder;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapIdleFolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;,
        Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    }
.end annotation


# instance fields
.field private final IDLE_STATUS_STRING:[Ljava/lang/String;

.field mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field mConnTimeout:I

.field mCurrUpTime:J

.field mFailureString:Ljava/lang/String;

.field mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIdleCallback:Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

.field mIdleThreadId:Ljava/lang/Thread;

.field mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

.field mResetCount:I

.field mRetryCount:I

.field private mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

.field mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field mTotalUpTime:J

.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method public constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 11
    .parameter
    .parameter "account"
    .parameter "folder"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6028
    iput-object p1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6002
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IDLE_STATUS_INACTIVE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "IDLE_STATUS_ACTIVE  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IDLE_STATUS_STOPPED "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IDLE_STATUS_FAILED  "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IDLE_STATUS_RESET   "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NIL"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->IDLE_STATUS_STRING:[Ljava/lang/String;

    .line 6008
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6010
    const-string v0, "na"

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 6012
    iput v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    .line 6013
    iput v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mConnTimeout:I

    .line 6014
    iput v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mResetCount:I

    .line 6017
    iput-wide v5, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mTotalUpTime:J

    .line 6018
    iput-wide v5, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mCurrUpTime:J

    .line 6024
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6029
    new-instance v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;Lcom/android/email/MessagingController$1;)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    .line 6031
    new-instance v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    invoke-direct {v0, p0, v4}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;Lcom/android/email/MessagingController$1;)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    .line 6032
    iput-object p2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 6033
    iput-object p3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 6034
    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5981
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5981
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .registers 5
    .parameter "forceClose"

    .prologue
    .line 6283
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v1, :cond_a

    .line 6284
    const-string v1, "close | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6296
    :goto_9
    return-void

    .line 6289
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/emailcommon/mail/Folder;->close(ZZ)V

    .line 6290
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_9

    .line 6291
    :catch_14
    move-exception v0

    .line 6294
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public dumpStatus(Ljava/lang/String;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 6334
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 6335
    .local v0, status:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->IDLE_STATUS_STRING:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [Ret/Timeout/Res - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mConnTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mResetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [Inv/Sup - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    iget v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    iget v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [TName/Id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_8f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_a7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6340
    const/4 v1, 0x1

    if-eq v0, v1, :cond_d7

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    if-eqz v1, :cond_d7

    .line 6341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure Reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6343
    :cond_d7
    return-void

    .line 6335
    :cond_d8
    const-string v1, "na"

    goto :goto_8f

    :cond_db
    const-string v1, "na"

    goto :goto_a7
.end method

.method public logIdle(Ljava/lang/String;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 6328
    const-string v0, "IDLE "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6330
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 6205
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    .line 6206
    :try_start_4
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 6208
    .local v1, status:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 6210
    const-string v2, "Reset skipped\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6211
    monitor-exit v3

    .line 6238
    :goto_13
    return-void

    .line 6214
    :cond_14
    const/4 v2, 0x3

    if-eq v1, v2, :cond_19

    if-ne v1, v4, :cond_26

    .line 6215
    :cond_19
    const-string v2, "Restarting idle since failed or still in reset state\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6216
    invoke-virtual {p0}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    .line 6217
    monitor-exit v3

    goto :goto_13

    .line 6221
    .end local v1           #status:I
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v2

    .line 6220
    .restart local v1       #status:I
    :cond_26
    :try_start_26
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6221
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    .line 6223
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v2, :cond_37

    .line 6224
    const-string v2, "reset | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_13

    .line 6229
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->stopIdling()V

    .line 6230
    const-string v2, "Reset initiated."

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_41} :catch_42

    goto :goto_13

    .line 6231
    :catch_42
    move-exception v0

    .line 6234
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Resetting IDLE failed"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public setFetchFlag(I)V
    .registers 5
    .parameter "isFetching"

    .prologue
    .line 6321
    const/4 v1, 0x1

    if-ne v1, p1, :cond_20

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6323
    .local v0, curr:I
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch Flag Reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6324
    return-void

    .line 6321
    .end local v0           #curr:I
    :cond_20
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    goto :goto_9
.end method

.method public start()I
    .registers 10

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x3

    const/4 v2, -0x1

    .line 6042
    :try_start_4
    const-string v3, "IDLE "

    const-string v4, "Open the remote folder and create the remote folder if necessary"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6046
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 6048
    .local v1, remoteStore:Lcom/android/email/mail/Store;
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;Z)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    .line 6050
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 6051
    const-string v3, "Remote folder does not exist"

    invoke-virtual {p0, v3}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6052
    const-string v3, "Remote folder does not exist"

    iput-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 6053
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6054
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x3d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V
    :try_end_60
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_60} :catch_61

    .line 6151
    .end local v1           #remoteStore:Lcom/android/email/mail/Store;
    :goto_60
    return v2

    .line 6058
    :catch_61
    move-exception v0

    .line 6059
    .local v0, e1:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 6060
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6061
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 6062
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v3, v4, v0, v8}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_60

    .line 6066
    .end local v0           #e1:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v1       #remoteStore:Lcom/android/email/mail/Store;
    :cond_7c
    new-instance v2, Lcom/android/email/MessagingController$ImapIdleFolder$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tImapIdle_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/email/MessagingController$ImapIdleFolder$1;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    .line 6150
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 6151
    const/4 v2, 0x0

    goto :goto_60
.end method

.method public status()I
    .registers 2

    .prologue
    .line 6311
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 6244
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 6245
    .local v0, currStatus:I
    if-eq v3, v0, :cond_c

    const/4 v2, 0x3

    if-ne v2, v0, :cond_12

    .line 6247
    :cond_c
    const-string v2, "already Stopped or Failed :(\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6277
    :goto_11
    return-void

    .line 6251
    :cond_12
    const/4 v2, 0x4

    if-ne v2, v0, :cond_1f

    .line 6254
    const-string v2, "Fail :( Already in reset state. Hence, closing the connection\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6255
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->close(Z)V

    goto :goto_11

    .line 6263
    :cond_1f
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v2, :cond_29

    .line 6264
    const-string v2, "stop | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_11

    .line 6268
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->stopIdling()V

    .line 6269
    const-string v2, "Stop initiated."

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_34

    goto :goto_11

    .line 6270
    :catch_34
    move-exception v1

    .line 6273
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Stopping IDLE failed"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6274
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
