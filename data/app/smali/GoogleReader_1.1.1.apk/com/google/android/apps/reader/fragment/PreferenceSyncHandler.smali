.class final Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PreferenceSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;)V
    .registers 4
    .parameter "context"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mResolver:Landroid/content/ContentResolver;

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 44
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Boolean;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    :cond_6
    :goto_6
    return-void

    .line 51
    :cond_7
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mResult:Ljava/lang/Boolean;

    goto :goto_6
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->deliverResult(Ljava/lang/Boolean;)V

    return-void
.end method

.method public loadInBackground()Ljava/lang/Boolean;
    .registers 5

    .prologue
    .line 83
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->syncUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "preferences"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->loadInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->onStopLoading()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mResult:Ljava/lang/Boolean;

    .line 79
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mResult:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->deliverResult(Ljava/lang/Boolean;)V

    .line 64
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->mResult:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 65
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->forceLoad()V

    .line 67
    :cond_16
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;->cancelLoad()Z

    .line 72
    return-void
.end method
