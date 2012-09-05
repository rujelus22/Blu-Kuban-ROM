.class public Lcom/google/googlenav/login/LoginControllerSdk5;
.super Lcom/google/googlenav/login/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/login/f;-><init>()V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    :try_start_4
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_f

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 6

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;ZLandroid/content/Context;Z)V
    .registers 10

    invoke-static {p4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    const-string v0, "com.google"

    invoke-virtual {v1, v0, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v0, "com.google"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/login/k;->a([Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_1e

    if-eqz p3, :cond_1e

    invoke-static {p1}, Lcom/google/googlenav/login/k;->a(Z)V

    :cond_1e
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/android/b;->h()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_3c

    :cond_34
    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/login/LoginControllerSdk5;->b(ZLjava/lang/String;ZLandroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/AndroidGmmApplication;->startActivity(Landroid/content/Intent;)V

    :goto_3b
    return-void

    :cond_3c
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/login/LoginControllerSdk5;->a(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/android/b;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1, v2, p3, p1, v0}, Lcom/google/googlenav/login/k;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    goto :goto_3b
.end method
