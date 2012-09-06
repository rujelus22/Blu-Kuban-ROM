.class public final Lcom/google/android/accounts/PeriodicSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicSyncReceiver.java"


# static fields
.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final KEY_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final KEY_USERDATA:Ljava/lang/String; = "userdata"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static createIntent(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/accounts/PeriodicSyncReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v1, "authAccount"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "accountType"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "authority"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "userdata"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method static createPendingIntent(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, requestCode:I
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/accounts/PeriodicSyncReceiver;->createIntent(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 58
    .local v0, flags:I
    invoke-static {p0, v2, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    const-string v6, "authAccount"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, accountName:Ljava/lang/String;
    const-string v6, "accountType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, accountType:Ljava/lang/String;
    const-string v6, "authority"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, authority:Ljava/lang/String;
    const-string v6, "userdata"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 67
    .local v4, extras:Landroid/os/Bundle;
    new-instance v0, Lcom/google/android/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {p1}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v5

    .line 69
    .local v5, syncer:Lcom/google/android/accounts/ContentSyncer;
    invoke-virtual {v5, v0, v3}, Lcom/google/android/accounts/ContentSyncer;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 70
    invoke-virtual {v5, v0, v3, v4}, Lcom/google/android/accounts/ContentSyncer;->requestSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    :goto_2a
    return-void

    .line 72
    :cond_2b
    invoke-virtual {v5, v0, v3, v4}, Lcom/google/android/accounts/ContentSyncer;->removePeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2a
.end method
