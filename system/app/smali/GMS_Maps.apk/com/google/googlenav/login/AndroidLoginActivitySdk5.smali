.class public Lcom/google/googlenav/login/AndroidLoginActivitySdk5;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_REFRESHING_AUTH_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/a;

    invoke-direct {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/a;->a(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TOKEN_TO_INVALIDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TOKEN_TO_INVALIDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->finish()V

    return-void

    :cond_28
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_TOKEN_TO_REFRESH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_TOKEN_TO_REFRESH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const-string v0, "com.google"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/k;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PROMPT_USER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_6e

    if-eqz v2, :cond_6e

    invoke-direct {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/login/k;->a(Z)V

    :cond_6e
    invoke-direct {p0}, Lcom/google/googlenav/login/AndroidLoginActivitySdk5;->a()Z

    move-result v3

    invoke-static {v1, v0, v2, v3, p0}, Lcom/google/googlenav/login/k;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    goto :goto_24
.end method
