.class Lcom/android/email/RefreshManager$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field private mSendMailExceptionReported:Z

.field final synthetic this$0:Lcom/android/email/RefreshManager;


# direct methods
.method private constructor <init>(Lcom/android/email/RefreshManager;)V
    .registers 3
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/RefreshManager;Lcom/android/email/RefreshManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/email/RefreshManager$ControllerResult;-><init>(Lcom/android/email/RefreshManager;)V

    return-void
.end method

.method private updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .registers 14
    .parameter "exception"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "dontUseNumNewMessages"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #getter for: Lcom/android/email/RefreshManager;->mMessageListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;
    invoke-static {v0}, Lcom/android/email/RefreshManager;->access$700(Lcom/android/email/RefreshManager;)Lcom/android/email/RefreshManager$RefreshStatusMap;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #getter for: Lcom/android/email/RefreshManager;->mClock:Lcom/android/email/Clock;
    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$300(Lcom/android/email/RefreshManager;)Lcom/android/email/Clock;

    move-result-object v1

    invoke-virtual {v0, p1, p6, v1}, Lcom/android/email/RefreshManager$Status;->onCallback(Lcom/android/emailcommon/mail/MessagingException;ILcom/android/email/Clock;)V

    .line 543
    if-eqz p1, :cond_31

    .line 545
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/MessagingException;->isError(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 553
    :goto_1f
    return-void

    .line 549
    :cond_20
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #getter for: Lcom/android/email/RefreshManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    move-wide v3, p4

    #calls: Lcom/android/email/RefreshManager;->reportError(JJLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/email/RefreshManager;->access$500(Lcom/android/email/RefreshManager;JJLjava/lang/String;)V

    .line 552
    :cond_31
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #calls: Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/email/RefreshManager;->access$600(Lcom/android/email/RefreshManager;JJ)V

    goto :goto_1f
.end method


# virtual methods
.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 14
    .parameter "exception"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const/4 v6, 0x0

    .line 566
    if-nez p6, :cond_b

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_b

    .line 567
    iput-boolean v6, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 569
    :cond_b
    if-eqz p1, :cond_25

    iget-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    if-nez v0, :cond_25

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 572
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #getter for: Lcom/android/email/RefreshManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    move-wide v3, p4

    #calls: Lcom/android/email/RefreshManager;->reportError(JJLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/email/RefreshManager;->access$500(Lcom/android/email/RefreshManager;JJLjava/lang/String;)V

    .line 575
    :cond_25
    const/16 v0, 0x64

    if-ne p6, v0, :cond_2b

    .line 576
    iput-boolean v6, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 578
    :cond_2b
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .registers 17
    .parameter "exception"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 535
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/RefreshManager$ControllerResult;->updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 536
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .registers 16
    .parameter "exception"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "dontUseNumNewMessages"

    .prologue
    .line 515
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/RefreshManager$ControllerResult;->updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 519
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 11
    .parameter "exception"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const-wide/16 v3, -0x1

    .line 497
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #getter for: Lcom/android/email/RefreshManager;->mMailboxListStatus:Lcom/android/email/RefreshManager$RefreshStatusMap;
    invoke-static {v0}, Lcom/android/email/RefreshManager;->access$400(Lcom/android/email/RefreshManager;)Lcom/android/email/RefreshManager$RefreshStatusMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #getter for: Lcom/android/email/RefreshManager;->mClock:Lcom/android/email/Clock;
    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$300(Lcom/android/email/RefreshManager;)Lcom/android/email/Clock;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/android/email/RefreshManager$Status;->onCallback(Lcom/android/emailcommon/mail/MessagingException;ILcom/android/email/Clock;)V

    .line 498
    if-eqz p1, :cond_27

    .line 499
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #getter for: Lcom/android/email/RefreshManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    #calls: Lcom/android/email/RefreshManager;->reportError(JJLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/email/RefreshManager;->access$500(Lcom/android/email/RefreshManager;JJLjava/lang/String;)V

    .line 502
    :cond_27
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #calls: Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V
    invoke-static {v0, p2, p3, v3, v4}, Lcom/android/email/RefreshManager;->access$600(Lcom/android/email/RefreshManager;JJ)V

    .line 503
    return-void
.end method
