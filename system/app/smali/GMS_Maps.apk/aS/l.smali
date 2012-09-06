.class final Las/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Landroid/accounts/AccountManager;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Las/l;->a:Landroid/accounts/AccountManager;

    iput-boolean p2, p0, Las/l;->b:Z

    iput-boolean p3, p0, Las/l;->c:Z

    iput-object p4, p0, Las/l;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .parameter

    .prologue
    .line 142
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 145
    iget-object v1, p0, Las/l;->a:Landroid/accounts/AccountManager;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "authAccount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accountType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Las/l;->b:Z

    iget-boolean v3, p0, Las/l;->c:Z

    iget-object v4, p0, Las/l;->d:Landroid/app/Activity;

    invoke-static {v1, v2, v0, v3, v4}, Las/j;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    :try_end_22
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_2a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_22} :catch_31

    .line 162
    :goto_22
    return-void

    .line 149
    :catch_23
    move-exception v0

    .line 152
    iget-boolean v0, p0, Las/l;->c:Z

    invoke-static {v0}, Las/j;->a(Z)V

    goto :goto_22

    .line 153
    :catch_2a
    move-exception v0

    .line 156
    iget-boolean v0, p0, Las/l;->c:Z

    invoke-static {v0}, Las/j;->a(Z)V

    goto :goto_22

    .line 157
    :catch_31
    move-exception v0

    .line 160
    iget-boolean v0, p0, Las/l;->c:Z

    invoke-static {v0}, Las/j;->a(Z)V

    goto :goto_22
.end method
