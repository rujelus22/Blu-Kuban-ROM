.class public final Lcom/google/android/plus1/a/c;
.super Lcom/google/android/plus1/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/plus1/a/a;-><init>(Lcom/google/android/plus1/a/b;)V

    .line 45
    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {v1, p2, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/plus1/a/d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/google/android/plus1/a/d;-><init>(Lcom/google/android/plus1/a/c;B)V

    iget-object v0, p0, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    invoke-interface {v0}, Lcom/google/android/plus1/a/b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    invoke-interface {v2}, Lcom/google/android/plus1/a/b;->a()Landroid/app/Activity;

    move-result-object v4

    move-object v2, p3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 46
    return-void
.end method
