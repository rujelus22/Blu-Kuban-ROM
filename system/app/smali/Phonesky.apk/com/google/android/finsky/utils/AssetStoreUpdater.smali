.class public Lcom/google/android/finsky/utils/AssetStoreUpdater;
.super Ljava/lang/Object;
.source "AssetStoreUpdater.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/AssetStoreUpdater$1;
    }
.end annotation


# instance fields
.field private mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/services/CheckinAssetStoreListener;)V
    .registers 6
    .parameter "store"
    .parameter "packageMonitorReceiver"
    .parameter "downloadQueue"
    .parameter "checkinAssetStoreListener"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 42
    iput-object p3, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 43
    iput-object p4, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 45
    invoke-virtual {p2, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onAdd(Lcom/google/android/finsky/download/Download;)V
    .registers 14
    .parameter "download"

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v11

    .line 56
    .local v11, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v11, :cond_8

    .line 68
    :cond_7
    :goto_7
    return-void

    .line 60
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v1, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v10

    .line 62
    .local v10, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v10, :cond_20

    if-eqz v10, :cond_7

    invoke-interface {v10}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 64
    :cond_20
    iget-object v0, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v1, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    iget-object v2, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->autoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    iget-object v3, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->account:Ljava/lang/String;

    iget v4, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->versionCode:I

    iget-object v5, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->assetId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v7, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/local/AssetStore;->insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/finsky/local/LocalAsset;

    goto :goto_7
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 172
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v1

    .line 173
    .local v1, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v1, :cond_7

    .line 183
    :goto_6
    return-void

    .line 176
    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v3, v1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 178
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 179
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->setStateCancelPending()V

    goto :goto_6

    .line 181
    :cond_1f
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->setStateDownloadCancelled()V

    goto :goto_6
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 187
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v1

    .line 188
    .local v1, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v1, :cond_7

    .line 193
    :goto_6
    return-void

    .line 191
    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v3, v1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 192
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->setStateInstalling()V

    goto :goto_6
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 7
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 197
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v1

    .line 198
    .local v1, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v1, :cond_7

    .line 203
    :goto_6
    return-void

    .line 201
    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v3, v1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 202
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->setStateDownloadFailed()V

    goto :goto_6
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 207
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v1, p1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 77
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v0, :cond_18

    .line 78
    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_17

    .line 79
    const-string v1, "Sideloaded package %s will not be recognized by Market."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_17
    :goto_17
    return-void

    .line 82
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/local/LocalAsset;->setStateInstalled(J)V

    goto :goto_17
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .registers 13
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 99
    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const-string v7, "AssetStoreUpdater"

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->suspend(Ljava/lang/String;)V

    .line 100
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_94

    aget-object v4, v0, v2

    .line 102
    .local v4, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 103
    .local v1, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v1, :cond_2e

    .line 104
    sget-boolean v6, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v6, :cond_2b

    .line 105
    const-string v6, "Package %s not in local asset database"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 110
    :cond_2e
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v5

    .line 111
    .local v5, state:Lcom/google/android/finsky/local/AssetState;
    const-string v7, "Set %s to %s"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v8, v6

    const/4 v9, 0x1

    if-eqz p2, :cond_5f

    const-string v6, "INSTALLED"

    :goto_3f
    aput-object v6, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    if-eqz p2, :cond_79

    .line 113
    sget-object v6, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v5, v6, :cond_62

    .line 114
    const-string v6, "Skipping - %s already INSTALLED"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_56

    goto :goto_2b

    .line 129
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #state:Lcom/google/android/finsky/local/AssetState;
    :catchall_56
    move-exception v6

    iget-object v7, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const-string v8, "AssetStoreUpdater"

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->resume(Ljava/lang/String;)V

    throw v6

    .line 111
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #asset:Lcom/google/android/finsky/local/LocalAsset;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v5       #state:Lcom/google/android/finsky/local/AssetState;
    :cond_5f
    :try_start_5f
    const-string v6, "UNINSTALLED"

    goto :goto_3f

    .line 116
    :cond_62
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getInstallTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_74

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getInstallTime()J

    move-result-wide v6

    :goto_70
    invoke-interface {v1, v6, v7}, Lcom/google/android/finsky/local/LocalAsset;->setStateInstalled(J)V

    goto :goto_2b

    :cond_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_70

    .line 120
    :cond_79
    sget-object v6, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v5, v6, :cond_89

    .line 121
    const-string v6, "Skipping - %s already UNINSTALLED"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b

    .line 123
    :cond_89
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->setStateUninstalling()V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lcom/google/android/finsky/local/LocalAsset;->setStateUninstalled(J)V
    :try_end_93
    .catchall {:try_start_5f .. :try_end_93} :catchall_56

    goto :goto_2b

    .line 129
    .end local v1           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #state:Lcom/google/android/finsky/local/AssetState;
    :cond_94
    iget-object v6, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const-string v7, "AssetStoreUpdater"

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->resume(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 88
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .registers 9
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v2, p1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 136
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v0, :cond_18

    .line 138
    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_17

    .line 139
    const-string v2, "Package %s removed, but is not in database."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_17
    :goto_17
    return-void

    .line 142
    :cond_18
    sget-object v2, Lcom/google/android/finsky/utils/AssetStoreUpdater$1;->$SwitchMap$com$google$android$finsky$local$AssetState:[I

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/local/AssetState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_78

    .line 159
    const-string v2, "Package removal of %s in state %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/local/AssetState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget-object v2, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {v0, v2}, Lcom/google/android/finsky/local/LocalAsset;->resetToState(Lcom/google/android/finsky/local/AssetState;)V

    .line 165
    :goto_40
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    .line 166
    .local v1, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-interface {v1, p1}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    goto :goto_17

    .line 146
    .end local v1           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :pswitch_4c
    const-string v2, "Setting %s to Uninstalled."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/finsky/local/LocalAsset;->setStateUninstalled(J)V

    goto :goto_40

    .line 150
    :pswitch_5d
    const-string v2, "Ignoring package removal likely caused by update (%s)."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_40

    .line 155
    :pswitch_67
    const-string v2, "Package removed normally [%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/finsky/local/LocalAsset;->setStateUninstalled(J)V

    goto :goto_40

    .line 142
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_5d
        :pswitch_67
    .end packed-switch
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 211
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 14
    .parameter "download"

    .prologue
    .line 215
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v11

    .line 216
    .local v11, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v11, :cond_7

    .line 224
    :goto_6
    return-void

    .line 219
    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/utils/AssetStoreUpdater;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v2, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 220
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->size:J

    iget-object v6, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->signature:Ljava/lang/String;

    iget-boolean v7, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->forwardLocked:Z

    iget-object v8, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->refundPeriodEndTime:Ljava/lang/Long;

    iget-object v9, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v10, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface/range {v0 .. v10}, Lcom/google/android/finsky/local/LocalAsset;->setStateDownloading(JLandroid/net/Uri;JLjava/lang/String;ZLjava/lang/Long;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    goto :goto_6
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method
