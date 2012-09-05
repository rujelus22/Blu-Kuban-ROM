.class Lcom/android/email/activity/MailboxListFragment$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1886
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment$ControllerResults;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    return-void
.end method


# virtual methods
.method public deactivateSncCallback()V
    .registers 3

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;-><init>(Lcom/android/email/activity/MailboxListFragment$ControllerResults;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->post(Ljava/lang/Runnable;)Z

    .line 2066
    return-void
.end method

.method public deleteAccountFromWebCallback(JLjava/lang/String;)V
    .registers 6
    .parameter "accounId"
    .parameter "emailId"

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$ControllerResults$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxListFragment$ControllerResults$1;-><init>(Lcom/android/email/activity/MailboxListFragment$ControllerResults;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->post(Ljava/lang/Runnable;)Z

    .line 2055
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .registers 12
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1952
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_14

    .line 1953
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1954
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1956
    :cond_14
    if-eqz p2, :cond_e7

    .line 1957
    const/4 v0, 0x0

    .line 1959
    .local v0, message:Ljava/lang/String;
    const-string v2, "MailboxListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folderCommandCallback message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mailboxId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :try_start_4b
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_52} :catch_e0

    move-result v2

    packed-switch v2, :pswitch_data_11e

    .line 2021
    :cond_56
    :goto_56
    :pswitch_56
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 2041
    :goto_5f
    return-void

    .line 1966
    :pswitch_60
    packed-switch p1, :pswitch_data_148

    :pswitch_63
    goto :goto_56

    .line 1971
    :pswitch_64
    :try_start_64
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080344

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1972
    goto :goto_56

    .line 1968
    :pswitch_6e
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080343

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1969
    goto :goto_56

    .line 1974
    :pswitch_78
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080345

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 1979
    :pswitch_82
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f08038b

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1980
    goto :goto_56

    .line 1984
    :pswitch_8c
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080543

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1985
    goto :goto_56

    .line 1987
    :pswitch_96
    const/4 v2, 0x1

    if-eq p1, v2, :cond_9b

    if-ne p1, v5, :cond_56

    .line 1989
    :cond_9b
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f08038c

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 1993
    :pswitch_a5
    if-eq p1, v6, :cond_a9

    if-ne p1, v5, :cond_56

    .line 1997
    :cond_a9
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080543

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 2001
    :pswitch_b3
    if-eq p1, v6, :cond_b7

    if-ne p1, v5, :cond_56

    .line 2003
    :cond_b7
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f08038d

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 2007
    :pswitch_c1
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2008
    goto :goto_56

    .line 2010
    :pswitch_cb
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080115

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2011
    goto :goto_56

    .line 2014
    :pswitch_d5
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f0801fd

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_dd} :catch_e0

    move-result-object v0

    goto/16 :goto_56

    .line 2018
    :catch_e0
    move-exception v1

    .line 2019
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_56

    .line 2023
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_e7
    const/4 v0, 0x0

    .line 2024
    .restart local v0       #message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_154

    .line 2039
    :goto_eb
    :pswitch_eb
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 2026
    :pswitch_f6
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080340

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2027
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_eb

    .line 2030
    :pswitch_109
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080341

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2031
    goto :goto_eb

    .line 2033
    :pswitch_113
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080342

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2034
    goto :goto_eb

    .line 1964
    nop

    :pswitch_data_11e
    .packed-switch 0x14
        :pswitch_d5
        :pswitch_56
        :pswitch_c1
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_cb
        :pswitch_60
        :pswitch_82
        :pswitch_8c
        :pswitch_96
        :pswitch_a5
        :pswitch_b3
    .end packed-switch

    .line 1966
    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_64
        :pswitch_6e
        :pswitch_63
        :pswitch_78
    .end packed-switch

    .line 2024
    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_109
        :pswitch_f6
        :pswitch_eb
        :pswitch_113
    .end packed-switch
.end method

.method public updateMailboxListCallback(ILcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 11
    .parameter "cmd"
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    const v4, 0x7f080340

    .line 1891
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMailboxListCallback cmd :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_37

    .line 1895
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1896
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1899
    :cond_37
    const/16 v1, 0x64

    if-ne p5, v1, :cond_76

    if-nez p2, :cond_76

    .line 1901
    const/4 v0, 0x0

    .line 1903
    .local v0, message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_9e

    .line 1926
    :goto_41
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    .line 1948
    .end local v0           #message:Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 1905
    .restart local v0       #message:Ljava/lang/String;
    :pswitch_4b
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080342

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1906
    goto :goto_41

    .line 1911
    :pswitch_55
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1912
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListFragment;->updateUIHandler:Landroid/os/Handler;

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 1916
    :pswitch_65
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080341

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1917
    goto :goto_41

    .line 1920
    :pswitch_6f
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1921
    goto :goto_41

    .line 1928
    .end local v0           #message:Ljava/lang/String;
    :cond_76
    if-eqz p2, :cond_4a

    .line 1930
    const/4 v0, 0x0

    .line 1933
    .restart local v0       #message:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    sparse-switch v1, :sswitch_data_aa

    .line 1942
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080343

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1946
    :goto_89
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_4a

    .line 1938
    :sswitch_93
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080345

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1939
    goto :goto_89

    .line 1903
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_65
        :pswitch_6f
        :pswitch_55
    .end packed-switch

    .line 1933
    :sswitch_data_aa
    .sparse-switch
        0x66 -> :sswitch_93
        0x6a -> :sswitch_93
    .end sparse-switch
.end method
