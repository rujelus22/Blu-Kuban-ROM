.class public final Lcom/google/android/youtube/core/async/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bf;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/youtube/core/async/a;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/google/android/youtube/core/async/a;->a()[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a(Landroid/content/Context;[Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
