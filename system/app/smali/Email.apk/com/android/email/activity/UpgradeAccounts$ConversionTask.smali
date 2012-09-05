.class Lcom/android/email/activity/UpgradeAccounts$ConversionTask;
.super Landroid/os/AsyncTask;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field mAccountNum:I

.field final mContext:Landroid/content/Context;

.field final mPreferences:Lcom/android/email/Preferences;

.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UpgradeAccounts;Lcom/android/email/activity/UpgradeAccounts$AccountInfo;I)V
    .registers 6
    .parameter
    .parameter "accountInfo"
    .parameter "accountnum"

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    .line 808
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 809
    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 810
    iput p3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    .line 811
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    .line 812
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    .line 814
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 815
    return-void
.end method

.method private copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z
    .registers 14
    .parameter "info"
    .parameter "i"
    .parameter "handler"
    .parameter "type"

    .prologue
    const v8, 0x7f08014e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1123
    if-eqz p4, :cond_16

    .line 1124
    :try_start_7
    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    .line 1125
    .local v2, storeUri:Ljava/lang/String;
    if-nez v2, :cond_10

    .line 1164
    .end local v2           #storeUri:Ljava/lang/String;
    :cond_f
    :goto_f
    return v3

    .line 1127
    .restart local v2       #storeUri:Ljava/lang/String;
    :cond_10
    invoke-virtual {v2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1128
    .local v1, isType:Z
    if-eqz v1, :cond_f

    .line 1133
    .end local v1           #isType:Z
    .end local v2           #storeUri:Ljava/lang/String;
    :cond_16
    iget-boolean v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v5, :cond_37

    .line 1134
    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_30

    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v5}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1136
    :cond_30
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v5, v6, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->copyAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_37} :catch_7b

    .line 1154
    :cond_37
    :goto_37
    :try_start_37
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v3, v5, p2, p3}, Lcom/android/email/activity/UpgradeAccounts;->deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    .line 1155
    iget-object v3, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v3}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_4c} :catch_a7

    .line 1162
    :goto_4c
    const v3, 0x7fffffff

    invoke-virtual {p3, p2, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setProgress(II)V

    move v3, v4

    .line 1164
    goto :goto_f

    .line 1138
    :cond_54
    :try_start_54
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v5, v6, p2, p3, p4}, Lcom/android/email/activity/UpgradeAccounts;->copyAccountForUpdate(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 1139
    const-string v5, "Email"

    const-string v6, "Return false..copyAccountForUpdate() "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v7, 0x7f08014e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1141
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_7a} :catch_7b

    goto :goto_37

    .line 1145
    :catch_7b
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while copying account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v5, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v5}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1148
    iput-boolean v4, p1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    goto/16 :goto_f

    .line 1156
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_a7
    move-exception v0

    .line 1157
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while deleting account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 799
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 17
    .parameter "params"

    .prologue
    .line 826
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1100()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 827
    :try_start_5
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1000()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 828
    const/4 v10, 0x0

    monitor-exit v11

    .line 1114
    :goto_d
    return-object v10

    .line 830
    :cond_e
    const-string v10, "Email"

    const-string v12, "ConversionTask() start "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    .line 832
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    .line 833
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v5

    .line 834
    .local v5, handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    if-eqz v10, :cond_a8

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a8

    .line 839
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_196

    move-result v10

    if-eqz v10, :cond_266

    .line 840
    const/4 v9, 0x0

    .line 842
    .local v9, store:Lcom/android/email/mail/Store;
    :try_start_42
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 844
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const v12, 0x7fffffff

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    .line 845
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const/4 v12, -0x1

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 846
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 847
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 848
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "validate_result_code"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 850
    .local v7, resultCode:I
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 851
    const/4 v10, -0x1

    if-eq v7, v10, :cond_25f

    .line 852
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sparse-switch v7, :sswitch_data_500

    .line 918
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 919
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_42 .. :try_end_a8} :catchall_196
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_a8} :catch_17a

    .line 1044
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_a8
    :goto_a8
    :try_start_a8
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    if-eqz v10, :cond_fd

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    if-eqz v10, :cond_fd

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_fd

    .line 1046
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_fd

    .line 1048
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v12, v12, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-static {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->estimateWork(Landroid/content/Context;Lcom/android/email/Account;)I

    move-result v3

    .line 1049
    .local v3, estimate:I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_f2

    .line 1050
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1051
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1054
    :cond_f2
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12, v3}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    .line 1084
    .end local v3           #estimate:I
    :cond_fd
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1085
    .local v0, bResult:Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 1087
    .local v6, info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-boolean v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v10, :cond_142

    .line 1088
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Copy accounts   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "pop3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4a8

    .line 1090
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "pop3"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1100
    :cond_142
    :goto_142
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_145
    .catchall {:try_start_a8 .. :try_end_145} :catchall_196

    move-result v10

    if-eqz v10, :cond_156

    .line 1102
    :try_start_148
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v10, v12}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 1103
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V
    :try_end_156
    .catchall {:try_start_148 .. :try_end_156} :catchall_196
    .catch Ljava/lang/RuntimeException; {:try_start_148 .. :try_end_156} :catch_4e4

    .line 1111
    :cond_156
    :goto_156
    :try_start_156
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 1112
    monitor-exit v11
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_196

    .line 1114
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 856
    .end local v0           #bResult:Ljava/lang/Boolean;
    .end local v6           #info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v7       #resultCode:I
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :sswitch_15f
    :try_start_15f
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 871
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080116

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_178
    .catchall {:try_start_15f .. :try_end_178} :catchall_196
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_178} :catch_17a

    goto/16 :goto_a8

    .line 931
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :catch_17a
    move-exception v2

    .line 932
    .local v2, e:Ljava/lang/Exception;
    :try_start_17b
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 933
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_a8

    .line 1112
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .end local v9           #store:Lcom/android/email/mail/Store;
    :catchall_196
    move-exception v10

    monitor-exit v11
    :try_end_198
    .catchall {:try_start_17b .. :try_end_198} :catchall_196

    throw v10

    .line 876
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v5       #handler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .restart local v7       #resultCode:I
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :sswitch_199
    :try_start_199
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 877
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08010b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 880
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    .line 881
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    goto/16 :goto_a8

    .line 884
    :sswitch_1c3
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    goto/16 :goto_a8

    .line 887
    :sswitch_1ca
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 888
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080115

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_a8

    .line 892
    :sswitch_1e5
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 893
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08011a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 896
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_a8

    .line 899
    :sswitch_207
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 900
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080117

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 903
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_a8

    .line 906
    :sswitch_229
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 907
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f080114

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_a8

    .line 911
    :sswitch_244
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 912
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08010f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto/16 :goto_a8

    .line 924
    :cond_25f
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z
    :try_end_264
    .catchall {:try_start_199 .. :try_end_264} :catchall_196
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_264} :catch_17a

    goto/16 :goto_a8

    .line 936
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_266
    :try_start_266
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "imap"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_286

    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "pop3"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_486

    .line 940
    :cond_286
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy checking incoming "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a2
    .catchall {:try_start_266 .. :try_end_2a2} :catchall_196

    .line 942
    const/4 v9, 0x0

    .line 944
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :try_start_2a3
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const v12, 0x7fffffff

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->setMaxProgress(II)V

    .line 945
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const/4 v12, -0x1

    invoke-virtual {v5, v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 946
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 948
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 949
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v1

    .line 950
    .restart local v1       #bundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 951
    .restart local v7       #resultCode:I
    if-eqz v1, :cond_2d1

    .line 952
    const-string v10, "validate_result_code"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 955
    :cond_2d1
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy resultCode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3d0

    .line 958
    packed-switch v7, :pswitch_data_522

    .line 969
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 970
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 972
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    .line 973
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z
    :try_end_313
    .catchall {:try_start_2a3 .. :try_end_313} :catchall_196
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2a3 .. :try_end_313} :catch_389
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_313} :catch_3de

    .line 1011
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :goto_313
    :try_start_313
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy checking outgoing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v13, v13, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32f
    .catchall {:try_start_313 .. :try_end_32f} :catchall_196

    .line 1014
    :try_start_32f
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v12, v12, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v12}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v8

    .line 1016
    .local v8, sender:Lcom/android/email/mail/Sender;
    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->close()V

    .line 1017
    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->open()V

    .line 1018
    invoke-virtual {v8}, Lcom/android/email/mail/Sender;->close()V

    .line 1019
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 1020
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1021
    const-string v10, "Email"

    const-string v12, "ConversionTask()- Legacy checking outgoing OK!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_356
    .catchall {:try_start_32f .. :try_end_356} :catchall_196
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_32f .. :try_end_356} :catch_443

    .line 1034
    .end local v8           #sender:Lcom/android/email/mail/Sender;
    :goto_356
    const/4 v10, 0x0

    :try_start_357
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z
    :try_end_35a
    .catchall {:try_start_357 .. :try_end_35a} :catchall_196

    goto/16 :goto_a8

    .line 960
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v7       #resultCode:I
    :pswitch_35c
    :try_start_35c
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 961
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08010b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 964
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    .line 965
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    .line 966
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z
    :try_end_388
    .catchall {:try_start_35c .. :try_end_388} :catchall_196
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_35c .. :try_end_388} :catch_389
    .catch Ljava/lang/Exception; {:try_start_35c .. :try_end_388} :catch_3de

    goto :goto_313

    .line 982
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :catch_389
    move-exception v2

    .line 983
    .local v2, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_38a
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy incoming Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    .line 987
    .local v4, exceptionType:I
    const/4 v10, 0x5

    if-ne v4, v10, :cond_41d

    .line 988
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08010b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 990
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->showCredentialsDialog(I)V

    .line 991
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1202(Z)Z

    .line 993
    const/4 v10, 0x0

    monitor-exit v11
    :try_end_3ce
    .catchall {:try_start_38a .. :try_end_3ce} :catchall_196

    goto/16 :goto_d

    .line 977
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v4           #exceptionType:I
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v7       #resultCode:I
    :cond_3d0
    :try_start_3d0
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 978
    const-string v10, "Email"

    const-string v12, "ConversionTask()- Legacy checking incoming OK!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3dc
    .catchall {:try_start_3d0 .. :try_end_3dc} :catchall_196
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3d0 .. :try_end_3dc} :catch_389
    .catch Ljava/lang/Exception; {:try_start_3d0 .. :try_end_3dc} :catch_3de

    goto/16 :goto_313

    .line 1001
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #resultCode:I
    :catch_3de
    move-exception v2

    .line 1002
    .local v2, e:Ljava/lang/Exception;
    :try_start_3df
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy incoming Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1005
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1007
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    .line 1008
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    goto/16 :goto_313

    .line 995
    .local v2, e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #exceptionType:I
    :cond_41d
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 998
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 999
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    .line 1000
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    goto/16 :goto_313

    .line 1022
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v4           #exceptionType:I
    :catch_443
    move-exception v2

    .line 1023
    .restart local v2       #e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ConversionTask()- Legacy outgoing Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1302(Z)Z

    .line 1027
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1028
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1030
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    .line 1031
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    goto/16 :goto_356

    .line 1036
    .end local v2           #e:Lcom/android/emailcommon/mail/MessagingException;
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_486
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 1037
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    invoke-static {v10}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    move-result-object v10

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    iget-object v13, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mContext:Landroid/content/Context;

    const v14, 0x7f08014e

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 1039
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    iget v12, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    invoke-virtual {v10, v12}, Lcom/android/email/activity/UpgradeAccounts;->deletePreference(I)V

    goto/16 :goto_a8

    .line 1092
    .restart local v0       #bResult:Ljava/lang/Boolean;
    .restart local v6       #info:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    :cond_4a8
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "imap"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4c6

    .line 1093
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "imap"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_142

    .line 1095
    :cond_4c6
    iget-object v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountInfo:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iget-object v10, v10, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v10}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v10

    const-string v12, "eas"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_142

    .line 1096
    iget v10, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->mAccountNum:I

    const-string v12, "eas"

    invoke-direct {p0, v6, v10, v5, v12}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->copyAndDeleteAccount(Lcom/android/email/activity/UpgradeAccounts$AccountInfo;ILcom/android/email/activity/UpgradeAccounts$UIHandler;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_142

    .line 1104
    :catch_4e4
    move-exception v2

    .line 1105
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v10, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while deleting account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4fd
    .catchall {:try_start_3df .. :try_end_4fd} :catchall_196

    goto/16 :goto_156

    .line 854
    nop

    :sswitch_data_500
    .sparse-switch
        0x1 -> :sswitch_1ca
        0x4 -> :sswitch_229
        0x5 -> :sswitch_199
        0x7 -> :sswitch_1c3
        0x8 -> :sswitch_1e5
        0x9 -> :sswitch_207
        0x10 -> :sswitch_15f
        0x4d -> :sswitch_244
    .end sparse-switch

    .line 958
    :pswitch_data_522
    .packed-switch 0x5
        :pswitch_35c
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 799
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 1169
    invoke-static {}, Lcom/android/email/activity/UpgradeAccounts;->access$1200()Z

    move-result v1

    if-ne v1, v2, :cond_41

    .line 1170
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$1002(Z)Z

    .line 1171
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1177
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$700(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 1181
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-ne v1, v2, :cond_42

    .line 1184
    :cond_33
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_45

    .line 1185
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #calls: Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$1400(Lcom/android/email/activity/UpgradeAccounts;)V

    .line 1200
    .end local v0           #i:I
    :cond_41
    :goto_41
    return-void

    .line 1180
    .restart local v0       #i:I
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1187
    :cond_45
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v1}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    goto :goto_41

    .line 1190
    .end local v0           #i:I
    :cond_4b
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4c
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_41

    .line 1191
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    #getter for: Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    invoke-static {v1}, Lcom/android/email/activity/UpgradeAccounts;->access$400(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    if-nez v1, :cond_6f

    .line 1192
    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-virtual {v1}, Lcom/android/email/activity/UpgradeAccounts;->startConversion()V

    goto :goto_41

    .line 1190
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c
.end method
