.class public Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;
.super Lcom/sec/android/socialhub/service/command/AbstractCommand;
.source "RequestDBSyncCommand.java"


# instance fields
.field protected mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/command/AbstractCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 36
    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    .line 38
    instance-of v0, p1, Lcom/sec/android/socialhub/service/SocialHubService;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 40
    check-cast v0, Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubService;->getSnsHandler()Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->getProfile()Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 43
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-nez v0, :cond_2f

    .line 45
    new-instance v0, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 46
    const-string v0, "RequestDBSyncCommand"

    const-string v1, "RequestDBSyncCommand()"

    const-string v2, "mProfile is null.."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2f
    return-void
.end method


# virtual methods
.method protected execute()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 61
    iput v8, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 62
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 63
    iput-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 65
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getSyncDB()Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;

    move-result-object v7

    .line 67
    .local v7, database:Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, app_type:I
    packed-switch v6, :pswitch_data_86

    .line 100
    :pswitch_1b
    const-string v0, "RequestDBSyncCommand"

    const-string v1, "excute()"

    const-string v2, "Invalid Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_24
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->FAST_REQUERY_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v1, v3}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateAccountBadge(Landroid/content/Context;ILandroid/net/Uri;Z)V

    .line 106
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 108
    return v8

    .line 73
    :pswitch_37
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;->doSyncEmail(Landroid/content/Context;)Z

    .line 74
    const-string v0, "RequestDBSyncCommand"

    const-string v1, "excute()"

    const-string v2, "EMAIL Type!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 79
    :pswitch_46
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;->doSyncIM(Landroid/content/Context;)Z

    .line 80
    const-string v0, "RequestDBSyncCommand"

    const-string v1, "excute()"

    const-string v2, "IM Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 85
    :pswitch_55
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-interface {v7, v0, v1}, Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;->doSyncSns(Landroid/content/Context;Ljava/lang/Object;)Z

    .line 86
    const-string v0, "RequestDBSyncCommand"

    const-string v1, "excute()"

    const-string v2, "SNS Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 91
    :pswitch_66
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-interface {v7, v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;->doSyncMsg(Landroid/content/Context;)Z

    .line 92
    const-string v0, "RequestDBSyncCommand"

    const-string v1, "excute()"

    const-string v2, "MSG Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 96
    :pswitch_75
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-interface {v7, v0, v1}, Lcom/sec/android/socialhub/feature/FeatureFactory$ISyncDB;->doSyncAll(Landroid/content/Context;Ljava/lang/Object;)Z

    .line 97
    const-string v0, "RequestDBSyncCommand"

    const-string v1, "excute()"

    const-string v2, "ALL Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 69
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_66
        :pswitch_37
        :pswitch_37
        :pswitch_46
        :pswitch_55
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_75
    .end packed-switch
.end method

.method protected getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, "RequestDBSyncCommand"

    return-object v0
.end method

.method protected loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 53
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    .line 55
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    .line 56
    return-void
.end method
