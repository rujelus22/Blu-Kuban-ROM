.class Lcom/android/email/activity/MessageListXL$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 4370
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4370
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$ControllerResult;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method

.method private handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 14
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4511
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_9

    .line 4627
    :cond_8
    :goto_8
    return-void

    .line 4514
    :cond_9
    if-nez p1, :cond_13

    .line 4515
    if-lez p4, :cond_8

    .line 4517
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->clearErrorMessage(J)V
    invoke-static {v2, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$5900(Lcom/android/email/activity/MessageListXL;J)V

    goto :goto_8

    .line 4521
    :cond_13
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v2, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 4523
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/MessagingException;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4526
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_44

    .line 4528
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08010b

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
    invoke-static {v2, v3, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    .line 4534
    :cond_44
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_d1

    .line 4535
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_8

    .line 4539
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6100(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_ba

    .line 4540
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4542
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4543
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4545
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListXL$ControllerResult$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$ControllerResult$1;-><init>(Lcom/android/email/activity/MessageListXL$ControllerResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4562
    const v2, 0x7f0801cf

    new-instance v3, Lcom/android/email/activity/MessageListXL$ControllerResult$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$ControllerResult$2;-><init>(Lcom/android/email/activity/MessageListXL$ControllerResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4574
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 4575
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageListXL;->access$6102(Lcom/android/email/activity/MessageListXL;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4576
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6100(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 4577
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_ba
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6100(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4578
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$6100(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 4589
    :cond_d1
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_8

    .line 4593
    const-string v2, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4599
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_109

    .line 4600
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08034a

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
    invoke-static {v2, v3, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    goto/16 :goto_8

    .line 4610
    :cond_109
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13c

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Smtp auth address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v7, :cond_13c

    .line 4612
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
    invoke-static {v2, v3, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    .line 4621
    :goto_128
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const v3, 0x50004

    if-ne v2, v3, :cond_8

    .line 4622
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/email/Controller;->refreshIRMTemplates(J)V

    goto/16 :goto_8

    .line 4617
    :cond_13c
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v3, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
    invoke-static {v2, v3, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$6000(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    goto :goto_128
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 4501
    invoke-direct {p0, p1, p2, p3, p8}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4502
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 4507
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4508
    return-void
.end method

.method public moveMessageCallback(Lcom/android/emailcommon/mail/MessagingException;J)V
    .registers 4
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 4638
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 16
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v7, -0x6

    const/4 v6, 0x4

    .line 4375
    const/4 v1, -0x1

    .line 4378
    .local v1, mailboxType:I
    :try_start_4
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4e

    .line 4379
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    .line 4384
    :goto_22
    if-nez p1, :cond_82

    .line 4385
    if-nez p6, :cond_50

    .line 4386
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 4387
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->setSendingProgressFlag(JZ)V

    .line 4388
    if-eq v1, v6, :cond_41

    int-to-long v2, v1

    cmp-long v2, v2, v7

    if-nez v2, :cond_4a

    .line 4390
    :cond_41
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateSendingProgressFlag()V

    .line 4418
    :cond_4a
    :goto_4a
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4422
    :goto_4d
    return-void

    .line 4381
    :cond_4e
    long-to-int v1, p4

    goto :goto_22

    .line 4392
    :cond_50
    const/16 v2, 0x64

    if-ne p6, v2, :cond_4a

    .line 4393
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 4394
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->setSendingProgressFlag(JZ)V

    .line 4395
    if-eq v1, v6, :cond_6f

    int-to-long v2, v1

    cmp-long v2, v2, v7

    if-nez v2, :cond_4a

    .line 4397
    :cond_6f
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateSendingProgressFlag()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_78} :catch_79

    goto :goto_4a

    .line 4419
    :catch_79
    move-exception v0

    .line 4420
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "sendMailCallback"

    const-string v3, "sendMailCallback exception"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 4402
    .end local v0           #e:Ljava/lang/Exception;
    :cond_82
    :try_start_82
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 4403
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->setSendingProgressFlag(JZ)V

    .line 4406
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_bc

    .line 4407
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 4408
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 4412
    :cond_bc
    if-eq v1, v6, :cond_c3

    int-to-long v2, v1

    cmp-long v2, v2, v7

    if-nez v2, :cond_4a

    .line 4414
    :cond_c3
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateSendingProgressFlag()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_cc} :catch_79

    goto/16 :goto_4a
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .registers 17
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 4427
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 4429
    .local v7, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/16 v0, 0x64

    if-ne p6, v0, :cond_53

    .line 4430
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckmailcallback accoutId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    :goto_36
    if-eqz v7, :cond_52

    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_52

    .line 4438
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 4443
    :cond_52
    return-void

    .line 4434
    :cond_53
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_36
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .registers 16
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    const/4 v5, 0x0

    .line 4464
    const/16 v0, 0x1f4

    if-ne p6, v0, :cond_13

    .line 4466
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->forceLoading()V

    .line 4490
    :goto_12
    return-void

    .line 4469
    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 4473
    const/16 v0, 0x64

    if-ne p6, v0, :cond_30

    .line 4476
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "onRefresh() END"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4477
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/util/EmailAddressCacheProcessor;->commitCacheInfo(Landroid/content/Context;)V

    .line 4480
    :cond_30
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 4482
    .local v7, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v7, :cond_50

    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_50

    .line 4483
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x7

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 4488
    :cond_50
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_12
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 4495
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 4496
    return-void
.end method
