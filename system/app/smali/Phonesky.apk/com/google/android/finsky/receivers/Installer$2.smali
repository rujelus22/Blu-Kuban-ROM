.class Lcom/google/android/finsky/receivers/Installer$2;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/Installer;->onComplete(Lcom/google/android/finsky/download/Download;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/Installer;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$packageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/Installer;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/android/finsky/receivers/Installer$2;->this$0:Lcom/google/android/finsky/receivers/Installer;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$packageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installCompleted(ZLjava/lang/String;)V
    .registers 7
    .parameter "successful"
    .parameter "failReason"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$2;->this$0:Lcom/google/android/finsky/receivers/Installer;

    #getter for: Lcom/google/android/finsky/receivers/Installer;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/Installer;->access$200(Lcom/google/android/finsky/receivers/Installer;)Lcom/google/android/finsky/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 550
    if-eqz p1, :cond_2b

    .line 551
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.installerFinished"

    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$packageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

    iget-object v0, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$packageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;

    iget-object v1, v1, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/Installer;->cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V

    .line 560
    :goto_2a
    return-void

    .line 557
    :cond_2b
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.installerError"

    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method
