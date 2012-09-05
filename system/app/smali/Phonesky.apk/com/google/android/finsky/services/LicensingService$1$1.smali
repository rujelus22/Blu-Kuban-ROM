.class Lcom/google/android/finsky/services/LicensingService$1$1;
.super Ljava/lang/Object;
.source "LicensingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/LicensingService$1;

.field final synthetic val$listener:Lcom/android/vending/licensing/ILicenseResultListener;

.field final synthetic val$nonce:J

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/LicensingService$1;Ljava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->this$1:Lcom/google/android/finsky/services/LicensingService$1;

    iput-object p2, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$listener:Lcom/android/vending/licensing/ILicenseResultListener;

    iput p4, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$versionCode:I

    iput-wide p5, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$nonce:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 76
    .local v1, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_54

    .line 81
    :cond_17
    iget-object v4, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->this$1:Lcom/google/android/finsky/services/LicensingService$1;

    iget-object v4, v4, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-static {v4}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 83
    .local v2, firstAccount:Landroid/accounts/Account;
    if-nez v2, :cond_28

    .line 84
    iget-object v4, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$listener:Lcom/android/vending/licensing/ILicenseResultListener;

    const/4 v5, 0x1

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v6}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v2           #firstAccount:Landroid/accounts/Account;
    :goto_27
    return-void

    .line 88
    .restart local v2       #firstAccount:Landroid/accounts/Account;
    :cond_28
    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 93
    .end local v2           #firstAccount:Landroid/accounts/Account;
    .local v0, account:Ljava/lang/String;
    :goto_2a
    new-instance v3, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    .line 94
    .local v3, licenseRequest:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    iget-object v4, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 95
    iget v4, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$versionCode:I

    invoke-virtual {v3, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 96
    iget-wide v4, p0, Lcom/google/android/finsky/services/LicensingService$1$1;->val$nonce:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 98
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/services/LicensingService$1$1$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/services/LicensingService$1$1$1;-><init>(Lcom/google/android/finsky/services/LicensingService$1$1;)V

    new-instance v6, Lcom/google/android/finsky/services/LicensingService$1$1$2;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/services/LicensingService$1$1$2;-><init>(Lcom/google/android/finsky/services/LicensingService$1$1;)V

    invoke-virtual {v4, v3, v5, v6}, Lcom/google/android/vending/remoting/api/VendingApi;->checkLicense(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_27

    .line 90
    .end local v0           #account:Ljava/lang/String;
    .end local v3           #licenseRequest:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    :cond_54
    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_2a
.end method
