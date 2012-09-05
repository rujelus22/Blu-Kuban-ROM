.class public Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;
    }
.end annotation


# instance fields
.field private final mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private final mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

.field private final mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 5
    .parameter "packageMonitorReceiver"
    .parameter "assetStore"
    .parameter "packageInfoCache"
    .parameter "dfeToc"

    .prologue
    .line 63
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    .line 65
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 66
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAndUninstallAsset(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAsset(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->uninstallAsset(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;Z)V

    return-void
.end method

.method private getUpdateReferrerUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "packageName"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    const-string v1, "details?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 441
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    const-string v1, "details"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manualUpdate?doc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_29
    return-object v0

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manualUpdate?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "tag"
    .parameter "packageName"
    .parameter "extra"

    .prologue
    const/4 v4, 0x0

    .line 432
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 433
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?doc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, ""

    :goto_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v4, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_39
    return-void

    .line 433
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method private refundAndUninstallAsset(Ljava/lang/String;Z)V
    .registers 5
    .parameter "packageName"
    .parameter "isRefundable"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v1, p1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 261
    .local v0, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez p2, :cond_d

    .line 262
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->uninstallAsset(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;Z)V

    .line 272
    :goto_c
    return-void

    .line 266
    :cond_d
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAsset(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method private refundAsset(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "packageName"
    .parameter "successRunnable"

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mIsPendingRefund:Z

    .line 279
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;

    invoke-direct {v0, p0, p2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$5;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/Runnable;)V

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/AssetSupport;->refund(Ljava/lang/String;Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V

    .line 306
    return-void
.end method

.method private setDynamicButtonsVisibility(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mButtonSection:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    return-void
.end method

.method private uninstallAsset(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;Z)V
    .registers 12
    .parameter "packageName"
    .parameter "localAsset"
    .parameter "showConfirmationDialog"

    .prologue
    .line 330
    if-eqz p3, :cond_4f

    if-eqz p2, :cond_4f

    .line 332
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v6}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 333
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v6, "uninstall_dialog"

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 351
    .end local v2           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    :goto_12
    return-void

    .line 337
    .restart local v2       #fragmentManager:Landroid/support/v4/app/FragmentManager;
    :cond_13
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    .line 338
    .local v3, isSystemPackage:Z
    if-eqz v3, :cond_47

    const v5, 0x7f0700f8

    .line 340
    .local v5, titleId:I
    :goto_22
    if-eqz v3, :cond_4b

    const v4, 0x7f0700f9

    .line 342
    .local v4, messageId:I
    :goto_27
    const v6, 0x7f070162

    const v7, 0x7f070060

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 344
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v1, extraArgs:Landroid/os/Bundle;
    const-string v6, "package_name"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 347
    const-string v6, "uninstall_dialog"

    invoke-virtual {v0, v2, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_12

    .line 338
    .end local v0           #alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .end local v1           #extraArgs:Landroid/os/Bundle;
    .end local v4           #messageId:I
    .end local v5           #titleId:I
    :cond_47
    const v5, 0x7f0700fa

    goto :goto_22

    .line 340
    .restart local v5       #titleId:I
    :cond_4b
    const v4, 0x7f0700fb

    goto :goto_27

    .line 350
    .end local v2           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    .end local v3           #isSystemPackage:Z
    .end local v5           #titleId:I
    :cond_4f
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->uninstallAssetSilently(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;)V

    goto :goto_12
.end method

.method private uninstallAssetSilently(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 5
    .parameter "packageName"
    .parameter "localAsset"

    .prologue
    .line 391
    const-string v0, "uninstall"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz p2, :cond_e

    .line 393
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->setStateUninstalling()V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    .line 396
    :cond_e
    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    .line 397
    return-void
.end method


# virtual methods
.method protected handleRefundFailure()V
    .registers 3

    .prologue
    .line 309
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mIsPendingRefund:Z

    .line 310
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 311
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_11

    .line 312
    invoke-static {v0}, Lcom/google/android/finsky/utils/AssetSupport;->showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refresh()V

    .line 315
    :cond_11
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "fragment"
    .parameter "trackPurchaseStatus"
    .parameter "trackPackageStatus"
    .parameter "referrer"
    .parameter "externalReferrer"

    .prologue
    .line 73
    invoke-super/range {p0 .. p8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz p6, :cond_f

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 79
    :cond_f
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->detach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 84
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    .line 85
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 385
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 411
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->syncDynamicSection()V

    .line 412
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 414
    :cond_24
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .registers 3
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 424
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 419
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .registers 4
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 429
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 9
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 358
    packed-switch p1, :pswitch_data_2c

    .line 374
    const-string v2, "Unexpected requestCode %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_12
    :goto_12
    :pswitch_12
    return-void

    .line 362
    :pswitch_13
    const-string v2, "package_name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    if-eqz v2, :cond_12

    .line 364
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 365
    .local v0, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v0, :cond_12

    .line 366
    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->uninstallAssetSilently(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;)V

    goto :goto_12

    .line 358
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method protected setupActionButtons(Z)V
    .registers 21
    .parameter "isInTransientState"

    .prologue
    .line 160
    const v14, 0x7f0800a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 161
    .local v2, buyButton:Landroid/widget/Button;
    const v14, 0x7f08001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 162
    .local v8, launchButton:Landroid/widget/Button;
    const v14, 0x7f08001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 163
    .local v12, uninstallButton:Landroid/widget/Button;
    const v14, 0x7f08001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 166
    .local v13, updateButton:Landroid/widget/Button;
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mHideDynamicFeatures:Z

    if-eqz v14, :cond_47

    .line 252
    :cond_46
    :goto_46
    return-void

    .line 175
    :cond_47
    if-nez p1, :cond_46

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, appPackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v14, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v9

    .line 181
    .local v9, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v9, :cond_18e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-interface {v9, v14, v15}, Lcom/google/android/finsky/local/LocalAsset;->isRefundable(J)Z

    move-result v14

    if-eqz v14, :cond_18e

    const/4 v6, 0x1

    .line 183
    .local v6, isRefundable:Z
    :goto_6a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/api/model/Document;->isLocallyAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v5

    .line 184
    .local v5, isLocallyAvailable:Z
    if-nez v5, :cond_7a

    if-eqz v6, :cond_145

    .line 185
    :cond_7a
    const/4 v11, 0x0

    .line 186
    .local v11, numButtons:I
    if-eqz v9, :cond_c7

    .line 187
    invoke-interface {v9}, Lcom/google/android/finsky/local/LocalAsset;->isUninstallable()Z

    move-result v7

    .line 190
    .local v7, isUninstallable:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v14, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_93

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v14, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isUpdatedSystemPackage(Ljava/lang/String;)Z

    move-result v7

    .line 193
    :cond_93
    if-eqz v7, :cond_196

    .line 195
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    add-int/lit8 v11, v11, 0x1

    .line 197
    if-eqz v6, :cond_191

    const v14, 0x7f070164

    :goto_a0
    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(I)V

    .line 198
    new-instance v14, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v6}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Lcom/google/android/finsky/local/LocalAsset;Z)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_ad
    :goto_ad
    invoke-interface {v9}, Lcom/google/android/finsky/local/LocalAsset;->getExternalReferrer()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, externalReferrer:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c7

    .line 219
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, decodedUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/utils/IntentUtils;->isLaunchUrl(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c7

    .line 222
    const v14, 0x7f070111

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setText(I)V

    .line 227
    .end local v3           #decodedUrl:Ljava/lang/String;
    .end local v4           #externalReferrer:Ljava/lang/String;
    .end local v7           #isUninstallable:Z
    :cond_c7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v14, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v10

    .line 228
    .local v10, localVersion:I
    if-ltz v10, :cond_110

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v14

    if-ge v10, v14, :cond_110

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/api/model/Document;->isAvailable(Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v14

    if-eqz v14, :cond_110

    .line 230
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->getUpdateReferrerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    add-int/lit8 v11, v11, 0x1

    .line 237
    :cond_110
    const/4 v14, 0x2

    if-ge v11, v14, :cond_13c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/api/model/Document;->canLaunch(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v14

    if-eqz v14, :cond_13c

    .line 238
    add-int/lit8 v11, v11, 0x1

    .line 239
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mAccountName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_13c
    if-nez v11, :cond_1b0

    const/16 v14, 0x8

    :goto_140
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setDynamicButtonsVisibility(I)V

    .line 245
    .end local v10           #localVersion:I
    .end local v11           #numButtons:I
    :cond_145
    if-nez v5, :cond_46

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/api/model/Document;->isAvailable(Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v14

    if-eqz v14, :cond_46

    .line 246
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->getBuyButtonString(ZI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mReferrer:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_46

    .line 181
    .end local v5           #isLocallyAvailable:Z
    .end local v6           #isRefundable:Z
    :cond_18e
    const/4 v6, 0x0

    goto/16 :goto_6a

    .line 197
    .restart local v5       #isLocallyAvailable:Z
    .restart local v6       #isRefundable:Z
    .restart local v7       #isUninstallable:Z
    .restart local v11       #numButtons:I
    :cond_191
    const v14, 0x7f0700f7

    goto/16 :goto_a0

    .line 204
    :cond_196
    if-eqz v6, :cond_ad

    .line 206
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    add-int/lit8 v11, v11, 0x1

    .line 208
    const v14, 0x7f070164

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(I)V

    .line 209
    new-instance v14, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Lcom/google/android/finsky/local/LocalAsset;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ad

    .line 243
    .end local v7           #isUninstallable:Z
    .restart local v10       #localVersion:I
    :cond_1b0
    const/4 v14, 0x0

    goto :goto_140
.end method

.method protected syncDynamicSection()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->resetDynamicStatus()V

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v11, 0x3

    if-eq v0, v11, :cond_12

    .line 92
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    .line 155
    :cond_11
    :goto_11
    return-void

    .line 96
    :cond_12
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 98
    .local v1, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v1, :cond_48

    .line 99
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v6

    .line 100
    .local v6, assetState:Lcom/google/android/finsky/local/AssetState;
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-eq v6, v0, :cond_36

    sget-object v0, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-ne v6, v0, :cond_48

    .line 101
    :cond_36
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-ne v6, v0, :cond_44

    const v0, 0x7f070160

    :goto_3d
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->showDynamicStatus(I)V

    .line 103
    invoke-virtual {p0, v14}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V

    goto :goto_11

    .line 101
    :cond_44
    const v0, 0x7f070161

    goto :goto_3d

    .line 109
    .end local v6           #assetState:Lcom/google/android/finsky/local/AssetState;
    :cond_48
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v8

    .line 110
    .local v8, downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    if-nez v8, :cond_56

    .line 111
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    goto :goto_11

    .line 115
    :cond_56
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/finsky/download/DownloadQueue;->getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v2

    .line 120
    .local v2, download:Lcom/google/android/finsky/download/Download;
    if-nez v2, :cond_84

    if-eqz v1, :cond_80

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    sget-object v11, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    if-eq v0, v11, :cond_84

    .line 122
    :cond_80
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    goto :goto_11

    .line 126
    :cond_84
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v12

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v11, 0x7f0800e2

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 132
    .local v9, downloadSection:Landroid/view/ViewGroup;
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    const v0, 0x7f0800c2

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 135
    .local v3, downloadingBytes:Landroid/widget/TextView;
    const v0, 0x7f0800c1

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 137
    .local v4, downloadingPercentage:Landroid/widget/TextView;
    const v0, 0x7f0800c3

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 138
    .local v5, progressBar:Landroid/widget/ProgressBar;
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/Download;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 141
    const v0, 0x7f0800c0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 142
    .local v7, cancel:Landroid/widget/ImageView;
    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;

    invoke-direct {v0, p0, v8, v2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/download/Download;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 152
    .local v10, title:Landroid/widget/TextView;
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 154
    invoke-virtual {p0, v14}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V

    goto/16 :goto_11
.end method
