.class final Lcom/google/googlenav/login/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/accounts/Account;

.field final synthetic b:Landroid/accounts/AccountManager;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Landroid/accounts/AccountManager;ZZLandroid/app/Activity;)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iput-boolean p3, p0, Lcom/google/googlenav/login/n;->c:Z

    iput-boolean p4, p0, Lcom/google/googlenav/login/n;->d:Z

    iput-object p5, p0, Lcom/google/googlenav/login/n;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/a;

    iget-object v1, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    const-string v3, "local"

    iget-boolean v4, p0, Lcom/google/googlenav/login/n;->c:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    const-string v4, "SID"

    iget-boolean v5, p0, Lcom/google/googlenav/login/n;->c:Z

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    const-string v5, "LSID"

    iget-boolean v6, p0, Lcom/google/googlenav/login/n;->c:Z

    invoke-virtual {v3, v4, v5, v6}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_39

    iget-boolean v4, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/login/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/a;->a(Ljava/lang/String;)V

    :goto_38
    return-void

    :cond_39
    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->c:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/googlenav/login/n;->a:Landroid/accounts/Account;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/googlenav/login/n;->b:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/googlenav/login/n;->c:Z

    iget-boolean v3, p0, Lcom/google/googlenav/login/n;->d:Z

    iget-object v4, p0, Lcom/google/googlenav/login/n;->e:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/login/k;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V
    :try_end_4d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4d} :catch_5b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_4d} :catch_62

    goto :goto_38

    :catch_4e
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/k;->a(Z)V

    goto :goto_38

    :cond_55
    :try_start_55
    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/k;->a(Z)V
    :try_end_5a
    .catch Landroid/accounts/OperationCanceledException; {:try_start_55 .. :try_end_5a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_5b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_55 .. :try_end_5a} :catch_62

    goto :goto_38

    :catch_5b
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/k;->a(Z)V

    goto :goto_38

    :catch_62
    move-exception v0

    iget-boolean v0, p0, Lcom/google/googlenav/login/n;->d:Z

    invoke-static {v0}, Lcom/google/googlenav/login/k;->a(Z)V

    goto :goto_38
.end method
