.class public Lcom/google/android/finsky/receivers/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountsChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restoreNewAccountApps(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-static {p1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 71
    .local v0, accounts:[Landroid/accounts/Account;
    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->RESTORED_ANDROID_ID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, sourceAndroidId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 73
    invoke-static {v0}, Lcom/google/android/finsky/utils/VendingPreferences;->getNewAccounts([Landroid/accounts/Account;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, newAccountNames:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_3d

    .line 75
    const-string v3, "Restoring apps for %d new accounts."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_AID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 78
    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_AID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 79
    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_ACCOUNT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 87
    .end local v1           #newAccountNames:[Ljava/lang/String;
    :cond_3d
    invoke-static {v0}, Lcom/google/android/finsky/utils/VendingPreferences;->saveCurrentAccountList([Landroid/accounts/Account;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/AccountsChangedReceiver;->restoreNewAccountApps(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->resetDatabaseSyncStatus()V

    .line 39
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/AccountsChangedReceiver$1;-><init>(Lcom/google/android/finsky/receivers/AccountsChangedReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
