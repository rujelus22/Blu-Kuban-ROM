.class public Lcom/google/android/apps/books/app/IcsAccountPicker;
.super Ljava/lang/Object;
.source "IcsAccountPicker.java"

# interfaces
.implements Lcom/google/android/apps/books/app/AccountPicker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pickAccount(Landroid/app/Activity;Landroid/accounts/Account;I)V
    .registers 13
    .parameter "activity"
    .parameter "currentAccount"
    .parameter "requestCode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 21
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "com.google"

    aput-object v0, v2, v4

    .line 22
    .local v2, accountTypes:[Ljava/lang/String;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    new-array v6, v4, [Ljava/lang/String;

    move-object v0, p2

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 24
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {p1, v8, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    return-void
.end method
