.class public interface abstract Lcom/google/android/finsky/local/LocalAsset;
.super Ljava/lang/Object;
.source "LocalAsset.java"


# virtual methods
.method public abstract cleanupInstallFailure()V
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getAssetId()Ljava/lang/String;
.end method

.method public abstract getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getExternalReferrer()Ljava/lang/String;
.end method

.method public abstract getInstallTime()J
.end method

.method public abstract getObb(Z)Lcom/google/android/finsky/download/obb/Obb;
.end method

.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getRefundPeriodEndTime()Ljava/lang/Long;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getState()Lcom/google/android/finsky/local/AssetState;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract isConsistent()Z
.end method

.method public abstract isDownloadingOrInstalling()Z
.end method

.method public abstract isForwardLocked()Z
.end method

.method public abstract isInstalled()Z
.end method

.method public abstract isRefundable(J)Z
.end method

.method public abstract isUninstallable()Z
.end method

.method public abstract isUpdate()Z
.end method

.method public abstract resetToInstalledVersion(I)V
.end method

.method public abstract resetToState(Lcom/google/android/finsky/local/AssetState;)V
.end method

.method public abstract setAccount(Ljava/lang/String;)V
.end method

.method public abstract setAutoUpdateState(Lcom/google/android/finsky/local/AutoUpdateState;)V
.end method

.method public abstract setExternalReferrer(Ljava/lang/String;)V
.end method

.method public abstract setObb(ZLcom/google/android/finsky/download/obb/Obb;)V
.end method

.method public abstract setRefundPeriodEndTime(Ljava/lang/Long;)V
.end method

.method public abstract setStateCancelPending()V
.end method

.method public abstract setStateDownloadCancelled()V
.end method

.method public abstract setStateDownloadFailed()V
.end method

.method public abstract setStateDownloadPending(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setStateDownloading(JLandroid/net/Uri;JLjava/lang/String;ZLjava/lang/Long;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V
.end method

.method public abstract setStateInstalled(J)V
.end method

.method public abstract setStateInstalling()V
.end method

.method public abstract setStateUninstalled(J)V
.end method

.method public abstract setStateUninstalling()V
.end method
