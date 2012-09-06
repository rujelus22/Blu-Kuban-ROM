.class public final Lcom/google/android/youtube/coreicecream/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bf;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/youtube/core/async/a;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p2}, Lcom/google/android/youtube/core/async/a;->a()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 35
    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "com.google"

    aput-object v5, v2, v0

    iget-object v0, p2, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    move-object v0, p3

    move-object v6, v4

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
