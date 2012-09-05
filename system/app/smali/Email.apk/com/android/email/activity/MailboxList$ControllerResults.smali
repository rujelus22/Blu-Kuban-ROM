.class Lcom/android/email/activity/MailboxList$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .registers 2
    .parameter

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1423
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;)V

    return-void
.end method

.method private updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V
    .registers 7
    .parameter "result"
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 1493
    if-eqz p1, :cond_5a

    .line 1494
    const v0, 0x7f0800b5

    .line 1495
    .local v0, id:I
    instance-of v1, p1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v1, :cond_3a

    .line 1496
    const v0, 0x7f08010b

    .line 1515
    :goto_d
    const-string v1, "MailboxList"

    const-string v2, " fzhang Hit showErrorBanner()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 1518
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 1519
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1520
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #setter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v3}, Lcom/android/email/activity/MailboxList;->access$2302(Lcom/android/email/activity/MailboxList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1525
    .end local v0           #id:I
    :cond_39
    :goto_39
    return-void

    .line 1497
    .restart local v0       #id:I
    :cond_3a
    instance-of v1, p1, Lcom/android/emailcommon/mail/CertificateValidationException;

    if-eqz v1, :cond_42

    .line 1498
    const v0, 0x7f08010d

    goto :goto_d

    .line 1500
    :cond_42
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    packed-switch v1, :pswitch_data_66

    goto :goto_d

    .line 1502
    :pswitch_4a
    const v0, 0x7f080115

    .line 1503
    goto :goto_d

    .line 1505
    :pswitch_4e
    const v0, 0x7f080112

    .line 1506
    goto :goto_d

    .line 1508
    :pswitch_52
    const v0, 0x7f080113

    .line 1509
    goto :goto_d

    .line 1511
    :pswitch_56
    const v0, 0x7f080114

    goto :goto_d

    .line 1522
    .end local v0           #id:I
    :cond_5a
    if-lez p2, :cond_39

    .line 1523
    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    goto :goto_39

    .line 1500
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
    .end packed-switch
.end method

.method private updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V
    .registers 5
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 1475
    if-nez p1, :cond_6

    const/16 v0, 0x64

    if-ne p2, v0, :cond_11

    .line 1476
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->progress(Z)V

    .line 1480
    :cond_10
    :goto_10
    return-void

    .line 1477
    :cond_11
    if-nez p2, :cond_10

    .line 1478
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->progress(Z)V

    goto :goto_10
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .registers 6
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 1548
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1457
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .registers 11
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 1560
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1561
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1562
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2302(Lcom/android/email/activity/MailboxList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1564
    :cond_19
    if-eqz p2, :cond_ad

    .line 1565
    const/4 v0, 0x0

    .line 1567
    .local v0, message:Ljava/lang/String;
    :try_start_1c
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_23} :catch_a6

    move-result v2

    packed-switch v2, :pswitch_data_13c

    .line 1619
    :cond_27
    :goto_27
    :pswitch_27
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    .line 1651
    :goto_30
    return-void

    .line 1569
    :pswitch_31
    packed-switch p1, :pswitch_data_162

    :pswitch_34
    goto :goto_27

    .line 1574
    :pswitch_35
    :try_start_35
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080344

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1575
    goto :goto_27

    .line 1571
    :pswitch_3f
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080343

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1572
    goto :goto_27

    .line 1577
    :pswitch_49
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080345

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 1582
    :pswitch_53
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08038b

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1583
    goto :goto_27

    .line 1587
    :pswitch_5d
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080543

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1588
    goto :goto_27

    .line 1590
    :pswitch_67
    const/4 v2, 0x1

    if-eq p1, v2, :cond_6c

    if-ne p1, v4, :cond_27

    .line 1592
    :cond_6c
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08038c

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 1596
    :pswitch_76
    if-eq p1, v5, :cond_7a

    if-ne p1, v4, :cond_27

    .line 1600
    :cond_7a
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080543

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 1604
    :pswitch_84
    if-eq p1, v5, :cond_88

    if-ne p1, v4, :cond_27

    .line 1606
    :cond_88
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08038d

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 1610
    :pswitch_92
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1611
    goto :goto_27

    .line 1613
    :pswitch_9c
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080115

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_a4} :catch_a6

    move-result-object v0

    goto :goto_27

    .line 1616
    :catch_a6
    move-exception v1

    .line 1617
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_27

    .line 1621
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_ad
    const/4 v0, 0x0

    .line 1622
    .restart local v0       #message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_16e

    .line 1649
    :cond_b1
    :goto_b1
    :pswitch_b1
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$900(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1624
    :pswitch_bc
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->isMoveCommand:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2400(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 1625
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1628
    :goto_cd
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MailboxList;->isMoveCommand:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2402(Lcom/android/email/activity/MailboxList;Z)Z

    .line 1629
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080340

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1630
    goto :goto_b1

    .line 1627
    :cond_dd
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_cd

    .line 1632
    :pswitch_e7
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1633
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080341

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1634
    goto :goto_b1

    .line 1636
    :pswitch_fa
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->createMailboxInRoot:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1500(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 1637
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1b58

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1640
    :goto_10b
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f080342

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1641
    goto :goto_b1

    .line 1639
    :cond_115
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10b

    .line 1643
    :pswitch_11f
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1644
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->isRefreshCommand:Z
    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2500(Lcom/android/email/activity/MailboxList;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1645
    iget-object v2, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f08051c

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b1

    .line 1567
    nop

    :pswitch_data_13c
    .packed-switch 0x16
        :pswitch_92
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_9c
        :pswitch_31
        :pswitch_53
        :pswitch_5d
        :pswitch_67
        :pswitch_76
        :pswitch_84
    .end packed-switch

    .line 1569
    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_35
        :pswitch_3f
        :pswitch_34
        :pswitch_49
    .end packed-switch

    .line 1622
    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_bc
        :pswitch_b1
        :pswitch_fa
        :pswitch_b1
        :pswitch_b1
        :pswitch_b1
        :pswitch_11f
    .end packed-switch
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1460
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .registers 5
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 1539
    return-void
.end method

.method public moveMessageCallback(Lcom/android/emailcommon/mail/MessagingException;J)V
    .registers 4
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 1529
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_10

    .line 1469
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1470
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1472
    :cond_10
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 1464
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .registers 10
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_10

    .line 1436
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1437
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1439
    :cond_10
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 7
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    #getter for: Lcom/android/email/activity/MailboxList;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_10

    .line 1428
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1429
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 1431
    :cond_10
    return-void
.end method
