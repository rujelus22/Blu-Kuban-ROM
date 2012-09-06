.class public Lcom/google/android/apps/googlevoice/system/AccountHelperFroyoAndLater;
.super Ljava/lang/Object;
.source "AccountHelperFroyoAndLater.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/AccountHelper;


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperFroyoAndLater;->accountManager:Landroid/accounts/AccountManager;

    .line 27
    return-void
.end method


# virtual methods
.method public getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V
    .registers 3
    .parameter "success"
    .parameter "failure"

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 32
    return-void
.end method

.method public hasGoogleAccount()Z
    .registers 4

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperFroyoAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 37
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method
