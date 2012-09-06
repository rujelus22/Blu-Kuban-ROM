.class Lcom/google/android/apps/reader/app/ReaderSyncAdapter;
.super Lcom/google/android/accounts/AbstractSyncAdapter;
.source "ReaderSyncAdapter.java"


# static fields
.field public static final POLL_FREQUENCY:J = 0xe10L

.field private static final TAG:Ljava/lang/String; = "ReaderSyncAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/accounts/AbstractSyncAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/reader/app/ReaderSyncAdapter;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public onPerformSync(Lcom/google/android/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 50
    iget-object v6, p0, Lcom/google/android/apps/reader/app/ReaderSyncAdapter;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {v6}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v0

    .line 52
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 53
    const-string v1, "upload"

    invoke-virtual {p2, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    if-nez v1, :cond_45

    move v8, v10

    .line 56
    :goto_15
    if-eqz v8, :cond_26

    .line 69
    invoke-virtual {v0, p1, p3}, Lcom/google/android/accounts/ContentSyncer;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 70
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-wide/16 v4, 0xe10

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/accounts/ContentSyncer;->addPeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 74
    :cond_26
    invoke-static {v7, p1, p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->sync(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 75
    if-eqz v8, :cond_31

    .line 76
    invoke-static {v6, p1}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->updateSyncTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    .line 81
    :cond_31
    invoke-static {v6, v9}, Lcom/google/android/apps/reader/app/ConnectivityBroadcastReceiver;->setEnabled(Landroid/content/Context;Z)V

    .line 90
    :goto_34
    invoke-static {v6, p1}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->isCleanupOverdue(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 91
    const/4 v0, 0x5

    invoke-static {v7, p1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->cleanup(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;I)Z

    .line 92
    invoke-static {v6}, Lcom/google/android/apps/reader/app/ReaderCleanupService;->clearWebViewCache(Landroid/content/Context;)V

    .line 93
    invoke-static {v6, p1}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->updateCleanupTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    .line 95
    :cond_44
    return-void

    :cond_45
    move v8, v9

    .line 54
    goto :goto_15

    .line 86
    :cond_47
    invoke-static {v6, v10}, Lcom/google/android/apps/reader/app/ConnectivityBroadcastReceiver;->setEnabled(Landroid/content/Context;Z)V

    goto :goto_34
.end method
