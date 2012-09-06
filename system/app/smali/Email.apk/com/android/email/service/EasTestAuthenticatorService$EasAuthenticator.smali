.class Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "EasTestAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EasTestAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasAuthenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EasTestAuthenticatorService;


# direct methods
.method public constructor <init>(Lcom/android/email/service/EasTestAuthenticatorService;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasTestAuthenticatorService;

    .line 44
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p5, :cond_3c

    const-string v3, "password"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "username"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 56
    new-instance v0, Landroid/accounts/Account;

    const-string v3, "username"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.test_exchange"

    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, account:Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasTestAuthenticatorService;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {p5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v1, b:Landroid/os/Bundle;
    const-string v3, "authAccount"

    const-string v4, "com.android.test_exchange"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v0           #account:Landroid/accounts/Account;
    :goto_3b
    return-object v1

    .line 68
    .end local v1           #b:Landroid/os/Bundle;
    :cond_3c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .restart local v1       #b:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/email/service/EasTestAuthenticatorService$EasAuthenticator;->this$0:Lcom/android/email/service/EasTestAuthenticatorService;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 71
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    const-string v3, "intent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3b
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "authTokenType"

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method
