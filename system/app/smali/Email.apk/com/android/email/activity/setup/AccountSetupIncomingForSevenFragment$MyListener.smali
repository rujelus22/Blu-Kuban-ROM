.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupIncomingForSevenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    .line 448
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 449
    return-void
.end method

.method private showDialog(I)V
    .registers 7
    .parameter "errorCode"

    .prologue
    const v4, 0x7f08047b

    const v3, 0x7f0801ce

    .line 514
    packed-switch p1, :pswitch_data_c6

    .line 595
    :goto_9
    return-void

    .line 516
    :pswitch_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080453

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_9

    .line 540
    :pswitch_30
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0804bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804be

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$4;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$3;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_9

    .line 557
    :pswitch_5d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0804bf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$6;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$5;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_9

    .line 574
    :pswitch_8a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    .local v0, registerPrimium:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v2, 0x7f080455

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 576
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$7;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$8;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto/16 :goto_9

    .line 514
    :pswitch_data_c6
    .packed-switch 0x2712
        :pswitch_a
        :pswitch_8a
        :pswitch_30
        :pswitch_5d
    .end packed-switch
.end method

.method private showPopupReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "subject"
    .parameter "message"

    .prologue
    .line 598
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$300(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 626
    :goto_8
    return-void

    .line 602
    :cond_9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-nez v2, :cond_3c

    .line 603
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    .line 611
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$402(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 612
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 613
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_3c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 616
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 617
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$502(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 619
    :try_start_5d
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$500(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 620
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const/4 v3, 0x1

    #setter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$302(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Z)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6c} :catch_6d

    goto :goto_8

    .line 622
    :catch_6d
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Z7App"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .registers 10
    .parameter "callback"

    .prologue
    .line 453
    const-string v6, "event-id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 454
    .local v5, what:I
    invoke-static {v5}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v1

    .line 457
    .local v1, callbackType:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    if-eqz v1, :cond_17

    .line 459
    sget-object v6, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$4;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v1}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_f0

    .line 511
    :cond_17
    :goto_17
    return-void

    .line 461
    :pswitch_18
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, accountId:I
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I
    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$200(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)I

    move-result v6

    if-ne v0, v6, :cond_17

    .line 463
    const-string v6, "obj"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 465
    :try_start_2f
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-virtual {v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->onBackPressed()V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_38} :catch_39

    goto :goto_17

    .line 467
    :catch_39
    move-exception v3

    .line 468
    .local v3, ne:Ljava/lang/NullPointerException;
    const-string v6, "AccountSetupIncomingForSevenFragment"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 475
    .end local v0           #accountId:I
    .end local v3           #ne:Ljava/lang/NullPointerException;
    :pswitch_44
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_58

    .line 477
    const/16 v6, 0x2712

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto :goto_17

    .line 478
    :cond_58
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_LOGIN_FAILED_CE:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_7a

    .line 480
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "obj"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 483
    :cond_7a
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_TRIALS_NOT_ACCEPTED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_8e

    .line 485
    const/16 v6, 0x2714

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto :goto_17

    .line 486
    :cond_8e
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_LIMIT_EXCEEDED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_a3

    .line 488
    const/16 v6, 0x2715

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto/16 :goto_17

    .line 489
    :cond_a3
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_b8

    .line 491
    const/16 v6, 0x2713

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto/16 :goto_17

    .line 493
    :cond_b8
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, title:Ljava/lang/String;
    const-string v6, "obj"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, message:Ljava/lang/String;
    if-eqz v4, :cond_d0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d9

    .line 497
    :cond_d0
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v7, 0x7f0804ba

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 499
    :cond_d9
    if-eqz v2, :cond_e1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_ea

    .line 500
    :cond_e1
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v7, 0x7f0804bb

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 503
    :cond_ea
    invoke-direct {p0, v4, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 459
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_44
    .end packed-switch
.end method
