.class public Lcom/dropbox/android/service/AuthenticationService;
.super Landroid/app/Service;
.source "panda.py"


# instance fields
.field private a:Ldbxyzptlk/f/a;

.field private b:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter

    .prologue
    .line 53
    const-string v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 54
    const-string v0, "AuthenticationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBinder()...  returning the AccountAuthenticator binder for intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_21
    iget-object v0, p0, Lcom/dropbox/android/service/AuthenticationService;->a:Ldbxyzptlk/f/a;

    invoke-virtual {v0}, Ldbxyzptlk/f/a;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    const-string v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 26
    const-string v0, "AuthenticationService"

    const-string v1, "Authentication Service started."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_13
    new-instance v0, Ldbxyzptlk/f/a;

    invoke-direct {v0, p0}, Ldbxyzptlk/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dropbox/android/service/AuthenticationService;->a:Ldbxyzptlk/f/a;

    .line 30
    new-instance v0, Lcom/dropbox/android/service/a;

    invoke-direct {v0, p0}, Lcom/dropbox/android/service/a;-><init>(Lcom/dropbox/android/service/AuthenticationService;)V

    iput-object v0, p0, Lcom/dropbox/android/service/AuthenticationService;->b:Landroid/accounts/OnAccountsUpdateListener;

    .line 37
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/dropbox/android/service/AuthenticationService;->b:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 43
    const-string v0, "AuthenticationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    const-string v0, "AuthenticationService"

    const-string v1, "Authentication Service stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_10
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/service/AuthenticationService;->b:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 49
    return-void
.end method
