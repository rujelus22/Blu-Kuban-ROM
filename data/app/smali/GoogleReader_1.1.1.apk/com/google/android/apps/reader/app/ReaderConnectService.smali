.class public Lcom/google/android/apps/reader/app/ReaderConnectService;
.super Landroid/app/IntentService;
.source "ReaderConnectService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaderConnect"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "ReaderConnect"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private static getBackgroundData(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/apps/reader/util/SystemService;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 51
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 60
    .line 61
    invoke-static {p0}, Lcom/google/android/apps/reader/app/ReaderConnectService;->getBackgroundData(Landroid/content/Context;)Z

    move-result v0

    .line 62
    invoke-static {p0}, Lcom/google/android/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/google/android/accounts/AccountManager;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 64
    invoke-static {p0}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v3

    .line 65
    invoke-static {}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->unsynchronizedUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->query(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v2

    .line 66
    const-string v4, "com.google"

    invoke-virtual {v1, v4}, Lcom/google/android/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 67
    array-length v4, v1

    move v5, v11

    :goto_22
    if-ge v5, v4, :cond_71

    aget-object v6, v1, v5

    .line 68
    const-string v7, "com.google.android.apps.reader"

    invoke-virtual {v3, v6, v7}, Lcom/google/android/accounts/ContentSyncer;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 69
    invoke-static {p0, v6}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->isSyncOverdue(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v8

    .line 70
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 71
    if-eqz v0, :cond_4f

    if-eqz v7, :cond_4f

    if-eqz v8, :cond_4f

    .line 72
    const-string v7, "Requesting overdue sync for %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    const-string v7, "com.google.android.apps.reader"

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/accounts/ContentSyncer;->requestSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 74
    :cond_4f
    if-eqz v9, :cond_4c

    .line 75
    const-string v7, "Upsyncing pending actions for %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v8, "upload"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string v8, "force"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v8, "com.google.android.apps.reader"

    invoke-virtual {v3, v6, v8, v7}, Lcom/google/android/accounts/ContentSyncer;->requestSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4c

    .line 88
    :cond_71
    return-void
.end method
