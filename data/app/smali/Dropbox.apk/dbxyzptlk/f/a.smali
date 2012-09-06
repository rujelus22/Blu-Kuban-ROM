.class public Ldbxyzptlk/f/a;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Ldbxyzptlk/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Ldbxyzptlk/f/a;->b:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    sget-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    const-string v1, "addAccount()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Ldbxyzptlk/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Ldbxyzptlk/j/a;->b(Landroid/content/Context;)Ldbxyzptlk/j/a;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 38
    invoke-static {}, Lcom/dropbox/android/util/aU;->a()Lcom/dropbox/android/util/aU;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/aU;->a(I)V

    .line 39
    const/4 v0, 0x4

    const-string v1, "only_one_account"

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 47
    :goto_24
    return-object v0

    .line 43
    :cond_25
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Ldbxyzptlk/f/a;->b:Landroid/content/Context;

    const-class v2, Lcom/dropbox/android/activity/AccountsAndSyncSetupActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string v0, "accountAuthenticatorResponse"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_24
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    sget-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    const-string v1, "confirmCredentials()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 60
    sget-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    const-string v1, "editProperties()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    sget-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    const-string v1, "getAuthToken()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 75
    sget-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    const-string v1, "getAuthTokenLabel()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    sget-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    const-string v1, "hasFeatures()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    sget-object v0, Ldbxyzptlk/f/a;->a:Ljava/lang/String;

    const-string v1, "updateCredentials()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
