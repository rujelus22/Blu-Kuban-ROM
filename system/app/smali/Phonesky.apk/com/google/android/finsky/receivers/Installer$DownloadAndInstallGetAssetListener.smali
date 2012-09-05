.class public Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadAndInstallGetAssetListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mDoNotifications:Z

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "installer"
    .parameter "account"
    .parameter "assetPackageName"

    .prologue
    .line 714
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;-><init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 715
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "installer"
    .parameter "account"
    .parameter "assetPackageName"
    .parameter "doNotifications"

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 720
    iput-object p2, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mAccount:Ljava/lang/String;

    .line 721
    iput-object p3, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mPackageName:Ljava/lang/String;

    .line 722
    iput-boolean p4, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mDoNotifications:Z

    .line 723
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)V
    .registers 10
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 727
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    #getter for: Lcom/google/android/finsky/receivers/Installer;->mPendingAssetPackageNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/Installer;->access$000(Lcom/google/android/finsky/receivers/Installer;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    #calls: Lcom/google/android/finsky/receivers/Installer;->notifyListeners()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/Installer;->access$100(Lcom/google/android/finsky/receivers/Installer;)V

    .line 730
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset()Z

    move-result v0

    if-nez v0, :cond_31

    .line 731
    :cond_19
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.getAssetWillTickle"

    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "Will receive a tickle instead for download."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    :goto_30
    return-void

    .line 737
    :cond_31
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.getAsset"

    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v7

    .line 741
    .local v7, installAsset:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mAccount:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/receivers/Installer;->packagePropertiesFromResponseAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;Ljava/lang/String;Z)Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v3

    .line 744
    .local v3, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {v7}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getBlobUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getDownloadAuthCookieValue()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->mDoNotifications:Z

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer;->downloadAndInstallAsset(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_30
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 704
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)V

    return-void
.end method
