.class public LIE;
.super Ljava/lang/Object;
.source "AccountAuthenticatorImpl.java"

# interfaces
.implements LID;


# instance fields
.field private a:Landroid/accounts/Account;

.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(LanD;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-interface {p1}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LIE;->a:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 7
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, LIE;->a:Landroid/accounts/Account;

    if-eqz v0, :cond_11

    iget-object v0, p0, LIE;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 64
    iget-object v0, p0, LIE;->a:Landroid/accounts/Account;

    .line 71
    :cond_10
    :goto_10
    return-object v0

    .line 66
    :cond_11
    invoke-direct {p0}, LIE;->a()Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    if-ge v1, v3, :cond_2e

    aget-object v0, v2, v1

    .line 67
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 71
    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a()Landroid/accounts/AccountManager;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LIE;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, LIE;->a()Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, p1}, LIE;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-nez v0, :cond_15

    .line 42
    new-instance v0, LJi;

    invoke-direct {v0}, LJi;-><init>()V

    throw v0

    .line 44
    :cond_15
    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, LIE;->a()Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, p1}, LIE;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, LIE;->a()Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, p1}, LIE;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 51
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, LIE;->a()Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, p1}, LIE;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    const/4 v3, 0x1

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 90
    return-void
.end method
