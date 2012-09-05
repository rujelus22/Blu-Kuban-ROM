.class final Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "NotificationSettingsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mData:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 32
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 55
    :goto_6
    return-void

    .line 53
    :cond_7
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->mData:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->deliverResult(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    return-void
.end method

.method public loadInBackground()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 40
    .local v0, operation:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNotificationSettings()V

    .line 41
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 42
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNotificationSettingsResponse()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->loadInBackground()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->mData:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 84
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->mData:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    if-eqz v0, :cond_a

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->mData:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->deliverResult(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V

    .line 67
    :goto_9
    return-void

    .line 65
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->forceLoad()V

    goto :goto_9
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NotificationSettingsLoader;->cancelLoad()Z

    .line 75
    return-void
.end method
