.class Lcom/android/email/service/AccountService$1;
.super Lcom/android/emailcommon/service/IAccountService$Stub;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/AccountService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AccountService;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public accountDeleted()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/MailService;->accountDeleted(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public getAccountColor(J)I
    .registers 4
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColor(J)I

    move-result v0

    return v0
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    iget-object v2, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Lcom/android/email/service/AccountService$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/service/AccountService$1$1;-><init>(Lcom/android/email/service/AccountService$1;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 113
    iget-object v1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    .line 115
    :goto_12
    return-object v1

    .line 114
    :catch_13
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getDeviceIdForWifi(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "hardwareId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    new-instance v1, Lcom/android/email/service/AccountService$1$2;

    invoke-direct {v1, p0}, Lcom/android/email/service/AccountService$1$2;-><init>(Lcom/android/email/service/AccountService$1;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 134
    iget-object v1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    .line 136
    :goto_12
    return-object v1

    .line 135
    :catch_13
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public notifyLoginFailed(J)V
    .registers 4
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 48
    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .registers 4
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 53
    return-void
.end method

.method public notifyNewMessages(JJI)V
    .registers 12
    .parameter "accountId"
    .parameter "lastestMsgId"
    .parameter "messageCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/email/service/MailService;->actionNotifyNewMessages(Landroid/content/Context;JJI)V

    .line 58
    return-void
.end method

.method public notifySendFailedOutOfMemoryError(JJ)V
    .registers 6
    .parameter "accountId"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->actionNotifySendFailedOutOfMemoryError(Landroid/content/Context;JJ)V

    .line 69
    return-void
.end method

.method public notifySendResult(JJZLjava/lang/String;)V
    .registers 14
    .parameter "accountId"
    .parameter "messageId"
    .parameter "sendfailed"
    .parameter "title"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/MailService;->actionNotifySendResult(Landroid/content/Context;JJZLjava/lang/String;)V

    .line 75
    return-void
.end method

.method public resetNewMessageCount(J)V
    .registers 4
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    .line 63
    return-void
.end method

.method public restoreAccountsIfNeeded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    .line 80
    return-void
.end method
