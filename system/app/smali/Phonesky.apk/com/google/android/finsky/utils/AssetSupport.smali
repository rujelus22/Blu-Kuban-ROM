.class public Lcom/google/android/finsky/utils/AssetSupport;
.super Ljava/lang/Object;
.source "AssetSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/AssetSupport$RefundListener;,
        Lcom/google/android/finsky/utils/AssetSupport$RefundResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static refund(Ljava/lang/String;Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V
    .registers 7
    .parameter "packageName"
    .parameter "listener"

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 51
    .local v0, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v2

    .line 52
    .local v2, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;-><init>()V

    .line 53
    .local v1, refundRequest:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 54
    new-instance v3, Lcom/google/android/finsky/utils/AssetSupport$1;

    invoke-direct {v3, v0, p1}, Lcom/google/android/finsky/utils/AssetSupport$1;-><init>(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V

    new-instance v4, Lcom/google/android/finsky/utils/AssetSupport$2;

    invoke-direct {v4, p1}, Lcom/google/android/finsky/utils/AssetSupport$2;-><init>(Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/vending/remoting/api/VendingApi;->refundAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 78
    return-void
.end method

.method public static showRefundFailureDialog(Landroid/support/v4/app/FragmentManager;)V
    .registers 6
    .parameter "fragmentManager"

    .prologue
    .line 114
    const v1, 0x7f070168

    const v2, 0x7f070169

    const v3, 0x7f070162

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 117
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const-string v1, "refund_failure"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 11
    .parameter "packageName"
    .parameter "target"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 94
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v7, "uninstall_confirm"

    invoke-virtual {v2, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 110
    :goto_c
    return-void

    .line 98
    :cond_d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v5

    .line 99
    .local v5, packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-virtual {v5, p0}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    .line 100
    .local v3, isSystemPackage:Z
    if-eqz v3, :cond_41

    const v6, 0x7f0700f8

    .line 102
    .local v6, titleId:I
    :goto_1e
    if-eqz v3, :cond_45

    const v4, 0x7f0700f9

    .line 104
    .local v4, messageId:I
    :goto_23
    const v7, 0x7f070162

    const v8, 0x7f070060

    invoke-static {v6, v4, v7, v8}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 106
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v1, extraArgs:Landroid/os/Bundle;
    const-string v7, "package_name"

    invoke-virtual {v1, v7, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v7, 0x1

    invoke-virtual {v0, p1, v7, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 109
    const-string v7, "uninstall_confirm"

    invoke-virtual {v0, v2, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_c

    .line 100
    .end local v0           #alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .end local v1           #extraArgs:Landroid/os/Bundle;
    .end local v4           #messageId:I
    .end local v6           #titleId:I
    :cond_41
    const v6, 0x7f0700fa

    goto :goto_1e

    .line 102
    .restart local v6       #titleId:I
    :cond_45
    const v4, 0x7f0700fb

    goto :goto_23
.end method

.method public static uninstall(Ljava/lang/String;)V
    .registers 4
    .parameter "packageName"

    .prologue
    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    :goto_6
    return-void

    .line 127
    :cond_7
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    .line 128
    .local v0, assetStore:Lcom/google/android/finsky/local/AssetStore;
    invoke-interface {v0, p0}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 129
    .local v1, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v1, :cond_18

    .line 130
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->setStateUninstalling()V

    .line 132
    :cond_18
    invoke-static {p0}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_6
.end method
