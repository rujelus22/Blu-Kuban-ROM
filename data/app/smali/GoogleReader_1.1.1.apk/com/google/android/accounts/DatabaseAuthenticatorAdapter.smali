.class public Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "DatabaseAuthenticatorAdapter.java"


# instance fields
.field private final mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/DatabaseAuthenticator;)V
    .registers 3
    .parameter "authenticator"

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    .line 57
    return-void
.end method

.method private static convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "account"

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/accounts/Account;

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static convertResponse(Landroid/accounts/AccountAuthenticatorResponse;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    if-eqz p1, :cond_1c

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 41
    const-string v1, "accountAuthenticatorResponse"

    .line 45
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    :cond_1c
    return-object p1
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/accounts/DatabaseAuthenticator;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertResponse(Landroid/accounts/AccountAuthenticatorResponse;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    invoke-static {p2}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/google/android/accounts/DatabaseAuthenticator;->confirmCredentials(Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertResponse(Landroid/accounts/AccountAuthenticatorResponse;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    invoke-virtual {v0, p2}, Lcom/google/android/accounts/DatabaseAuthenticator;->editProperties(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertResponse(Landroid/accounts/AccountAuthenticatorResponse;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    invoke-static {p2}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertResponse(Landroid/accounts/AccountAuthenticatorResponse;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "authTokenType"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    invoke-virtual {v0, p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    invoke-static {p2}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/google/android/accounts/DatabaseAuthenticator;->hasFeatures(Lcom/google/android/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertResponse(Landroid/accounts/AccountAuthenticatorResponse;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_d
    .catch Lcom/google/android/accounts/NetworkErrorException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 96
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Lcom/google/android/accounts/NetworkErrorException;
    new-instance v1, Landroid/accounts/NetworkErrorException;

    invoke-direct {v1, v0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->mAuthenticator:Lcom/google/android/accounts/DatabaseAuthenticator;

    invoke-static {p2}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/accounts/DatabaseAuthenticator;->updateCredentials(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/accounts/DatabaseAuthenticatorAdapter;->convertResponse(Landroid/accounts/AccountAuthenticatorResponse;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
