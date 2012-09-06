.class public Lcom/google/android/apps/reader/app/ReaderCleanupService;
.super Landroid/app/IntentService;
.source "ReaderCleanupService.java"


# static fields
.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "priority"

.field private static final TAG:Ljava/lang/String; = "ReaderCleanupService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    const-string v0, "ReaderCleanupService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static clearWebViewCache(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/reader/app/ReaderCleanupService$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/reader/app/ReaderCleanupService$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    const-string v1, "priority"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    invoke-static {p0}, Lcom/google/android/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/google/android/accounts/AccountManager;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 72
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Lcom/google/android/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_24

    aget-object v5, v1, v4

    .line 73
    invoke-static {v2, v5, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->cleanup(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;I)Z

    .line 74
    invoke-static {p0, v5}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->updateCleanupTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 76
    :cond_24
    invoke-static {p0}, Lcom/google/android/apps/reader/app/ReaderCleanupService;->clearWebViewCache(Landroid/content/Context;)V

    .line 78
    return-void
.end method
