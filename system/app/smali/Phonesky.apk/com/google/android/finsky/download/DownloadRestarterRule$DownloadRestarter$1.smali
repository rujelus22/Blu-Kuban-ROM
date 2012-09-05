.class Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;
.super Ljava/lang/Object;
.source "DownloadRestarterRule.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleAssetResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

.field final synthetic val$asset:Lcom/google/android/finsky/local/LocalAsset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;->this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;->val$asset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installCompleted(ZLjava/lang/String;)V
    .registers 7
    .parameter "successful"
    .parameter "failReason"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;->val$asset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, packageName:Ljava/lang/String;
    if-eqz p1, :cond_28

    .line 450
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.installerFinished"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;->val$asset:Lcom/google/android/finsky/local/LocalAsset;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/finsky/local/LocalAsset;->getObb(Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;->val$asset:Lcom/google/android/finsky/local/LocalAsset;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/finsky/local/LocalAsset;->getObb(Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/receivers/Installer;->cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V

    .line 458
    :goto_27
    return-void

    .line 455
    :cond_28
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.installerError"

    invoke-interface {v1, v2, v0, p2}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
