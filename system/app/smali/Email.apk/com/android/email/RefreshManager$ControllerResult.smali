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
    .line 355
    iput-object p1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/RefreshManager;Lcom/android/email/RefreshManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 355
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
    .line 420
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

    .line 421
    if-eqz p1, :cond_26

    .line 422
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

    .line 425
    :cond_26
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #calls: Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/email/RefreshManager;->access$600(Lcom/android/email/RefreshManager;JJ)V

    .line 426
    return-void
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

    .line 442
    if-nez p6, :cond_b

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_b

    .line 443
    iput-boolean v6, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 445
    :cond_b
    if-eqz p1, :cond_25

    iget-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    if-nez v0, :cond_25

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 448
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

    .line 451
    :cond_25
    const/16 v0, 0x64

    if-ne p6, v0, :cond_2b

    .line 452
    iput-boolean v6, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 454
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
    .line 414
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/RefreshManager$ControllerResult;->updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 415
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V
    .registers 17
    .parameter "exception"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "dontUseNumNewMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/MessagingException;",
            "JJII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p8, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/RefreshManager$ControllerResult;->updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 396
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 11
    .parameter "exception"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const-wide/16 v3, -0x1

    .line 376
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

    .line 377
    if-eqz p1, :cond_27

    .line 378
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

    .line 381
    :cond_27
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    #calls: Lcom/android/email/RefreshManager;->notifyRefreshStatusChanged(JJ)V
    invoke-static {v0, p2, p3, v3, v4}, Lcom/android/email/RefreshManager;->access$600(Lcom/android/email/RefreshManager;JJ)V

    .line 382
    return-void
.end method
