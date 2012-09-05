.class Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .registers 13
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x7

    .line 956
    if-eqz p1, :cond_99

    .line 957
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3f

    .line 959
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 962
    .local v0, messageErr:I
    :goto_1a
    packed-switch v0, :pswitch_data_ce

    .line 972
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1006
    .end local v0           #messageErr:I
    :cond_26
    :goto_26
    return-void

    :cond_27
    move v0, v3

    .line 959
    goto :goto_1a

    .line 964
    .restart local v0       #messageErr:I
    :pswitch_29
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 968
    :pswitch_34
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 975
    .end local v0           #messageErr:I
    :cond_3f
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    if-ne v4, v6, :cond_7b

    .line 977
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_61

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 980
    .local v1, messageErr1:I
    :goto_53
    const/4 v4, -0x3

    if-ne v1, v4, :cond_63

    .line 981
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .end local v1           #messageErr1:I
    :cond_61
    move v1, v3

    .line 977
    goto :goto_53

    .line 982
    .restart local v1       #messageErr1:I
    :cond_63
    const/4 v4, -0x2

    if-ne v1, v4, :cond_71

    .line 983
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 985
    :cond_71
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 987
    .end local v1           #messageErr1:I
    :cond_7b
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_8f

    .line 988
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 990
    :cond_8f
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 992
    :cond_99
    const/16 v3, 0x64

    if-ne p4, v3, :cond_c0

    .line 993
    if-eqz p5, :cond_b5

    .line 994
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 995
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 996
    invoke-virtual {v2, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 997
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_26

    .line 999
    .end local v2           #msg:Landroid/os/Message;
    :cond_b5
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_26

    .line 1002
    :cond_c0
    if-nez p4, :cond_26

    .line 1003
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_26

    .line 962
    :pswitch_data_ce
    .packed-switch -0x9
        :pswitch_34
        :pswitch_29
    .end packed-switch
.end method

.method public deviceInfoCallback(I)V
    .registers 5
    .parameter "status"

    .prologue
    .line 1075
    sparse-switch p1, :sswitch_data_30

    .line 1083
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1085
    .local v0, msg:Landroid/os/Message;
    :goto_f
    if-eqz v0, :cond_14

    .line 1086
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1087
    :cond_14
    return-void

    .line 1077
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_15
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1078
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_f

    .line 1080
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_22
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1081
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_f

    .line 1075
    nop

    :sswitch_data_30
    .sparse-switch
        0xc8 -> :sswitch_22
        0x1388 -> :sswitch_15
    .end sparse-switch
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v0, 0x1

    .line 1029
    if-nez p1, :cond_12

    .line 1030
    sparse-switch p4, :sswitch_data_58

    .line 1065
    :cond_6
    :goto_6
    :sswitch_6
    return-void

    .line 1034
    :sswitch_7
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_6

    .line 1044
    :cond_12
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    sparse-switch v1, :sswitch_data_62

    .line 1061
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_6

    .line 1046
    :sswitch_23
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_31

    const/4 v0, 0x2

    :cond_31
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_6

    .line 1052
    :sswitch_35
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_6

    .line 1056
    :sswitch_40
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 1057
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_6

    .line 1030
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch

    .line 1044
    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_23
        0x3c -> :sswitch_40
        0x40001 -> :sswitch_35
    .end sparse-switch
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .registers 5
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 1022
    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1025
    return-void
.end method

.method public modifyUserAccountCallback(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 1093
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyUserAccountCallback - bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1111
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .registers 5
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 1070
    return-void
.end method

.method public moveMessageCallback(Lcom/android/emailcommon/mail/MessagingException;J)V
    .registers 4
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 1019
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 946
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
    .line 942
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .registers 8
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 922
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 918
    return-void
.end method
