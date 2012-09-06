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
    .line 46
    iput-object p1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;-><init>()V

    return-void
.end method

.method private getAccountList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "forProtocol"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v11, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Account;>;"
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 63
    .local v9, c:Landroid/database/Cursor;
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 64
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 65
    .local v7, accountId:J
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, protocol:Ljava/lang/String;
    if-eqz v10, :cond_1a

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 67
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 68
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_1a

    .line 69
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_47

    goto :goto_1a

    .line 74
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v7           #accountId:J
    .end local v10           #protocol:Ljava/lang/String;
    :catchall_47
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    return-object v11
.end method


# virtual methods
.method public getAccountColor(J)I
    .registers 4
    .parameter "accountId"

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

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Lcom/android/email/service/AccountService$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/service/AccountService$1$1;-><init>(Lcom/android/email/service/AccountService$1;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncSerial(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 111
    iget-object v1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    .line 113
    :goto_12
    return-object v1

    .line 112
    :catch_13
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public notifyLoginFailed(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 51
    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 56
    return-void
.end method

.method public reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "protocol"
    .parameter "accountManagerType"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/email/service/AccountService$1;->getAccountList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    .local v1, providerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Account;>;"
    iget-object v2, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 84
    .local v0, accountMgrList:[Landroid/accounts/Account;
    iget-object v2, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/android/email/provider/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V

    .line 85
    return-void
.end method
