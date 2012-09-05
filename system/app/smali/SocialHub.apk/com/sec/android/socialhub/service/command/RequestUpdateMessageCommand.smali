.class public Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;
.super Lcom/sec/android/socialhub/service/command/AbstractCommand;
.source "RequestUpdateMessageCommand.java"

# interfaces
.implements Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;


# instance fields
.field protected folderType:[Ljava/lang/String;

.field private mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

.field protected messageID:[Ljava/lang/String;

.field protected threadID:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/command/AbstractCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    .line 37
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 39
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->folderType:[Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->messageID:[Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->threadID:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    .line 49
    instance-of v0, p1, Lcom/sec/android/socialhub/service/SocialHubService;

    if-eqz v0, :cond_1c

    .line 51
    check-cast p1, Lcom/sec/android/socialhub/service/SocialHubService;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/socialhub/service/SocialHubService;->getSnsHandler()Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 53
    :cond_1c
    return-void
.end method

.method private doEmailChangeFlag([Ljava/lang/String;I)Z
    .registers 6
    .parameter "ids"
    .parameter "status"

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.ACTION_EXTERNAL_DB_SET_FOLLOWUPFLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent_br:Landroid/content/Intent;
    const-string v1, "intentType"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v1, "id_array"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "status_followupflag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v1, "action"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    const/4 v1, 0x1

    return v1
.end method

.method private doEmailFavorite([Ljava/lang/String;Z)Z
    .registers 6
    .parameter "ids"
    .parameter "flag"

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.ACTION_EXTERNAL_DB_SET_FAVORITE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intent_br:Landroid/content/Intent;
    const-string v1, "intentType"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v1, "id_array"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "is_favorite"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string v1, "action"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    const/4 v1, 0x1

    return v1
.end method

.method private doEmailMarkAs([Ljava/lang/String;Z)Z
    .registers 6
    .parameter "ids"
    .parameter "flag"

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.ACTION_EXTERNAL_MARK_AS_READ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, intent_br:Landroid/content/Intent;
    const-string v1, "intentType"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "id_array"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "is_read"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    const/4 v1, 0x1

    return v1
.end method

.method private doSnsMarkAs()Z
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    if-eqz v0, :cond_31

    .line 150
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->threadID:[Ljava/lang/String;

    aget-object v3, v1, v7

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->messageID:[Ljava/lang/String;

    aget-object v4, v1, v7

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->folderType:[Ljava/lang/String;

    aget-object v5, v1, v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->messageGet(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 152
    .local v6, ret:I
    if-gez v6, :cond_31

    .line 154
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    invoke-static {v8}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v3, v7

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->invokeCallback(IIZILjava/lang/String;)V

    move v0, v7

    .line 168
    .end local v6           #ret:I
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x1

    goto :goto_30
.end method


# virtual methods
.method protected execute()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 77
    iput v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 78
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v1}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mMessage:Lcom/sec/android/socialhub/service/message/RequestMessage;

    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    .line 82
    .local v0, message:Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
    const-string v1, "RequestUpdateMessageCommand"

    const-string v3, "execute()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_92

    .line 135
    const-string v1, "RequestUpdateMessageCommand"

    const-string v3, "excute()"

    const-string v4, "Invalid Type!!!"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_49
    :pswitch_49
    iput-boolean v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 140
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 141
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v1}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 143
    const/4 v1, 0x1

    :goto_57
    return v1

    .line 89
    :pswitch_58
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/socialhub/service/SocialHubService;

    if-eqz v1, :cond_65

    .line 91
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/service/SocialHubService;->addUpdateMssageFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;)V

    .line 94
    :cond_65
    iget v1, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    sparse-switch v1, :sswitch_data_a0

    goto :goto_49

    .line 97
    :sswitch_6b
    iget-object v1, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget-boolean v3, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_read:Z

    invoke-direct {p0, v1, v3}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->doEmailMarkAs([Ljava/lang/String;Z)Z

    move v1, v2

    .line 98
    goto :goto_57

    .line 101
    :sswitch_74
    iget-object v1, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget-boolean v3, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_favorite:Z

    invoke-direct {p0, v1, v3}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->doEmailFavorite([Ljava/lang/String;Z)Z

    move v1, v2

    .line 102
    goto :goto_57

    .line 105
    :sswitch_7d
    iget-object v1, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget v3, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_followupflag:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->doEmailChangeFlag([Ljava/lang/String;I)Z

    move v1, v2

    .line 106
    goto :goto_57

    .line 120
    :pswitch_86
    iget v1, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    packed-switch v1, :pswitch_data_ae

    goto :goto_49

    .line 123
    :pswitch_8c
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->doSnsMarkAs()Z

    move v1, v2

    .line 124
    goto :goto_57

    .line 84
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_49
        :pswitch_58
        :pswitch_58
        :pswitch_49
        :pswitch_86
    .end packed-switch

    .line 94
    :sswitch_data_a0
    .sparse-switch
        0x2 -> :sswitch_6b
        0x8 -> :sswitch_74
        0xa -> :sswitch_7d
    .end sparse-switch

    .line 120
    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_8c
    .end packed-switch
.end method

.method protected getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    const-string v0, "RequestUpdateMessageCommand"

    return-object v0
.end method

.method protected loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 58
    instance-of v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    if-eqz v0, :cond_28

    .line 60
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    .line 65
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->folderType:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->folderType:[Ljava/lang/String;

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->messageID:[Ljava/lang/String;

    .line 69
    check-cast p1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    .end local p1
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->threadID:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->threadID:[Ljava/lang/String;

    .line 71
    :cond_28
    return-void
.end method

.method public onResponse(IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 17
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 251
    packed-switch p2, :pswitch_data_12

    .line 257
    :goto_3
    return-void

    .line 254
    :pswitch_4
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    move-object v0, p0

    move v3, p3

    move v4, p7

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestUpdateMessageCommand;->invokeCallback(IIZILjava/lang/String;)V

    goto :goto_3

    .line 251
    nop

    :pswitch_data_12
    .packed-switch 0x15
        :pswitch_4
    .end packed-switch
.end method
