.class public Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;
.super Lcom/sec/android/socialhub/service/command/AbstractCommand;
.source "RequestRemoveAccountCommand.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/socialhub/service/command/AbstractCommand;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mSnsCount:I

.field private mSnsErrorCount:I

.field private mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/command/AbstractCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;

    .line 48
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    .line 49
    return-void
.end method


# virtual methods
.method protected execute()Z
    .registers 11

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 67
    iput v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 68
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_13e

    .line 172
    iput-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 173
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v1}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not support remove account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 175
    iget v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v6, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget-boolean v7, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    iget v8, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    iget-object v9, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 176
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "excute()"

    const-string v2, "Invalid Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_5a
    :goto_5a
    return v3

    .line 75
    :pswitch_5b
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "excute()"

    const-string v2, "EMAIL Type!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/service/SocialHubService;

    if-eqz v0, :cond_73

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mMessage:Lcom/sec/android/socialhub/service/message/RequestMessage;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->addRemoveAccountFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    .line 83
    :cond_73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.ACTION_EXTERNAL_ACCOUNT_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v1, "intentType"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "id_array"

    iget-object v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "action"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    iput-boolean v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    goto :goto_5a

    .line 103
    :pswitch_95
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "excute()"

    const-string v2, "IM Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/service/SocialHubService;

    if-eqz v0, :cond_ad

    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mMessage:Lcom/sec/android/socialhub/service/message/RequestMessage;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubService;->addRemoveAccountFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    .line 110
    :cond_ad
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubDataHandleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v1, "intentType"

    const/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string v1, "id_array"

    iget-object v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "action"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    iput-boolean v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    goto :goto_5a

    .line 125
    :pswitch_d6
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "excute()"

    const-string v2, "SNS Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    .line 128
    iput v3, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    .line 130
    iget-object v7, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    array-length v8, v7

    move v6, v3

    :goto_ea
    if-ge v6, v8, :cond_5a

    aget-object v0, v7, v6

    .line 132
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/android/app/sns/type/SnsSpType;->findAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_101

    array-length v1, v0

    if-gtz v1, :cond_12b

    .line 136
    :cond_101
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    invoke-static {v4}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 157
    :goto_10d
    :try_start_10d
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "execute()"

    const-string v2, "try to take message, if it\'s null this routine will be blocked."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_127

    .line 161
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "execute()"

    const-string v2, "thread is wake up!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/InterruptedException; {:try_start_10d .. :try_end_127} :catch_138

    .line 130
    :cond_127
    :goto_127
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_ea

    .line 147
    :cond_12b
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    aget-object v0, v0, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_10d

    .line 164
    :catch_138
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_127

    .line 70
    nop

    :pswitch_data_13e
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_5b
        :pswitch_95
        :pswitch_d6
    .end packed-switch
.end method

.method protected getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    const-string v0, "RequestRemoveAccountCommand"

    return-object v0
.end method

.method protected loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 54
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    .line 56
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    .line 58
    instance-of v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    if-eqz v0, :cond_16

    .line 60
    check-cast p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    .end local p1
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;->accountArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    .line 62
    :cond_16
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    const v2, 0x7f0800c4

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, bSuccess:Z
    const/4 v4, 0x0

    .line 194
    .local v4, bErrorCode:I
    invoke-static {v4}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, strError:Ljava/lang/String;
    :try_start_b
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_60

    .line 200
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_164
    .catch Landroid/accounts/OperationCanceledException; {:try_start_b .. :try_end_1d} :catch_6c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_b0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_b .. :try_end_1d} :catch_f5

    .line 223
    :goto_1d
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    if-lez v0, :cond_20d

    .line 225
    const/4 v3, 0x0

    .line 226
    const/4 v4, 0x2

    .line 227
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 234
    :goto_37
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_210

    .line 236
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "all account is removed. will invoke callback"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 250
    :goto_4f
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "wake blocking thread"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v1, ""

    :goto_5c
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 253
    return-void

    .line 204
    :cond_60
    const/4 v4, 0x2

    .line 205
    :try_start_61
    invoke-static {v4}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_164
    .catch Landroid/accounts/OperationCanceledException; {:try_start_61 .. :try_end_6b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6b} :catch_b0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_61 .. :try_end_6b} :catch_f5

    goto :goto_1d

    .line 209
    :catch_6c
    move-exception v6

    .line 211
    .local v6, e:Landroid/accounts/OperationCanceledException;
    :try_start_6d
    invoke-virtual {v6}, Landroid/accounts/OperationCanceledException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_164

    .line 223
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    if-lez v0, :cond_1a1

    .line 225
    const/4 v3, 0x0

    .line 226
    const/4 v4, 0x2

    .line 227
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 234
    :goto_8a
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1a4

    .line 236
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "all account is removed. will invoke callback"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 250
    :goto_a2
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "wake blocking thread"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v1, ""

    goto :goto_5c

    .line 213
    .end local v6           #e:Landroid/accounts/OperationCanceledException;
    :catch_b0
    move-exception v6

    .line 215
    .local v6, e:Ljava/io/IOException;
    :try_start_b1
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_164

    .line 223
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    if-lez v0, :cond_1c5

    .line 225
    const/4 v3, 0x0

    .line 226
    const/4 v4, 0x2

    .line 227
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 234
    :goto_ce
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1c8

    .line 236
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "all account is removed. will invoke callback"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 250
    :goto_e6
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "wake blocking thread"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v1, ""

    goto/16 :goto_5c

    .line 217
    .end local v6           #e:Ljava/io/IOException;
    :catch_f5
    move-exception v6

    .line 219
    .local v6, e:Landroid/accounts/AuthenticatorException;
    :try_start_f6
    invoke-virtual {v6}, Landroid/accounts/AuthenticatorException;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_164

    .line 223
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    if-lez v0, :cond_1e9

    .line 225
    const/4 v3, 0x0

    .line 226
    const/4 v4, 0x2

    .line 227
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 234
    :goto_113
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1ec

    .line 236
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "all account is removed. will invoke callback"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 250
    :goto_12b
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "wake blocking thread"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v1, ""

    goto/16 :goto_5c

    .line 231
    .end local v6           #e:Landroid/accounts/AuthenticatorException;
    :cond_13a
    const/4 v3, 0x1

    .line 234
    :goto_13b
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_181

    .line 236
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "all account is removed. will invoke callback"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 250
    :goto_153
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    const-string v2, "wake blocking thread"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsHandleQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 223
    throw v7

    :catchall_164
    move-exception v0

    move-object v7, v0

    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    if-lez v0, :cond_13a

    .line 225
    const/4 v3, 0x0

    .line 226
    const/4 v4, 0x2

    .line 227
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13b

    .line 247
    :cond_181
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remain accounts - "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v9, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_153

    .line 231
    .local v6, e:Landroid/accounts/OperationCanceledException;
    :cond_1a1
    const/4 v3, 0x1

    goto/16 :goto_8a

    .line 247
    :cond_1a4
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remain accounts - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v8, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 231
    .local v6, e:Ljava/io/IOException;
    :cond_1c5
    const/4 v3, 0x1

    goto/16 :goto_ce

    .line 247
    :cond_1c8
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remain accounts - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v8, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e6

    .line 231
    .local v6, e:Landroid/accounts/AuthenticatorException;
    :cond_1e9
    const/4 v3, 0x1

    goto/16 :goto_113

    .line 247
    :cond_1ec
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remain accounts - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v8, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 231
    .end local v6           #e:Landroid/accounts/AuthenticatorException;
    :cond_20d
    const/4 v3, 0x1

    goto/16 :goto_37

    .line 247
    :cond_210
    const-string v0, "RequestRemoveAccountCommand"

    const-string v1, "run()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remain accounts - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsCount:I

    iget v8, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveAccountCommand;->mSnsErrorCount:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f
.end method
