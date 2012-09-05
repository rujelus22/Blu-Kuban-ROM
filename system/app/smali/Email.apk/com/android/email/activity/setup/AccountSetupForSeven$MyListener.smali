.class Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    .line 1080
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 1081
    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .registers 11
    .parameter "callback"

    .prologue
    const v8, 0x7f0804bb

    const v7, 0x7f0804ba

    .line 1085
    const-string v4, "event-id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1086
    .local v3, what:I
    invoke-static {v3}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    .line 1088
    .local v0, callbackType:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    const-string v4, "AccountSetupForSeven>>MyListener>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallback() ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " what:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\tresult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/16 v4, 0x63

    if-ne v3, v4, :cond_5a

    .line 1096
    const-string v4, "id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_59

    .line 1098
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 1099
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->setISPServer()Z
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$700(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    .line 1171
    :cond_59
    :goto_59
    return-void

    .line 1101
    :cond_5a
    if-eqz v0, :cond_59

    .line 1102
    sget-object v4, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_SUCCESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    if-ne v0, v4, :cond_75

    .line 1103
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6f

    .line 1104
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccount()V
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$800(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_59

    .line 1106
    :cond_6f
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->invalidateUrl()V
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_59

    .line 1108
    :cond_75
    sget-object v4, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    if-ne v0, v4, :cond_59

    .line 1109
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->showingPopupDialog()Z
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1000(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 1113
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_97

    .line 1115
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto :goto_59

    .line 1116
    :cond_97
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_LOGIN_FAILED_CE:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_dd

    .line 1118
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, title:Ljava/lang/String;
    const-string v4, "obj"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, message:Ljava/lang/String;
    if-eqz v2, :cond_bd

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c3

    .line 1122
    :cond_bd
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1124
    :cond_c3
    if-eqz v1, :cond_cb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d1

    .line 1125
    :cond_cb
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v8}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1128
    :cond_d1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    new-instance v5, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$1;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;)V

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v4, v2, v1, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1100(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_59

    .line 1134
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_dd
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_TRIALS_NOT_ACCEPTED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_f4

    .line 1136
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2714

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto/16 :goto_59

    .line 1137
    :cond_f4
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_LIMIT_EXCEEDED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_10b

    .line 1139
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2715

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto/16 :goto_59

    .line 1140
    :cond_10b
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_122

    .line 1142
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2713

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto/16 :goto_59

    .line 1144
    :cond_122
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 1145
    .restart local v2       #title:Ljava/lang/String;
    const-string v4, "obj"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    .restart local v1       #message:Ljava/lang/String;
    if-eqz v2, :cond_13a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_140

    .line 1148
    :cond_13a
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1150
    :cond_140
    if-eqz v1, :cond_148

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_14e

    .line 1151
    :cond_148
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v8}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1154
    :cond_14e
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    new-instance v5, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$2;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;)V

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v4, v2, v1, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1200(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_59
.end method
