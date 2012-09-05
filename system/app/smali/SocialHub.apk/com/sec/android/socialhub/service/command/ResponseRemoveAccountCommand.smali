.class public Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;
.super Lcom/sec/android/socialhub/service/command/AbstractCommand;
.source "ResponseRemoveAccountCommand.java"


# instance fields
.field protected account_id:Ljava/lang/String;

.field protected account_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/command/AbstractCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    .line 31
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    .line 32
    return-void
.end method


# virtual methods
.method protected execute()Z
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    iput v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 53
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v1}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;->account_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    .line 124
    const-string v1, "ResponseRemoveAccountCommand"

    const-string v2, "excute()"

    const-string v3, "Invalid Type!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_1f
    :pswitch_1f
    return v5

    .line 74
    :pswitch_20
    const/4 v1, 0x1

    :try_start_21
    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 76
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.sec.android.socialhub.unifiedinbox/messages"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 79
    :catch_30
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    iput-boolean v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 83
    iput v6, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    goto :goto_1f

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3f
    :try_start_3f
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.sec.android.socialhub.unifiedinbox/messages"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4e} :catch_4f

    goto :goto_1f

    .line 114
    :catch_4f
    move-exception v0

    .line 116
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    iput-boolean v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 118
    iput v6, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    goto :goto_1f

    .line 55
    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_3f
    .end packed-switch
.end method

.method protected getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    const-string v0, "ResponseRemoveAccountCommand"

    return-object v0
.end method

.method protected loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 37
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;->account_type:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/ResponseRemoveAccountCommand;->account_id:Ljava/lang/String;

    .line 39
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    .line 41
    instance-of v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    if-eqz v0, :cond_16

    .line 43
    check-cast p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    .end local p1
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;->accountArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    .line 46
    :cond_16
    return-void
.end method
