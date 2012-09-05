.class Lcom/google/android/finsky/services/LicensingService$1;
.super Lcom/android/vending/licensing/ILicensingService$Stub;
.source "LicensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/LicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/LicensingService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/LicensingService;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicensingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
    .registers 15
    .parameter "nonce"
    .parameter "packageName"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/LicensingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 58
    .local v8, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Lcom/google/android/finsky/services/LicensingService$1;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_1e

    .line 59
    const/16 v0, 0x103

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {p4, v0, v1, v2}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1d
    return-void

    .line 62
    .restart local v8       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1e
    iget v4, v8, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_20} :catch_38

    .line 69
    .local v4, versionCode:I
    new-instance v9, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/LicensingService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/google/android/finsky/services/LicensingService$1$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/services/LicensingService$1$1;-><init>(Lcom/google/android/finsky/services/LicensingService$1;Ljava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;IJ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    .line 63
    .end local v4           #versionCode:I
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_38
    move-exception v7

    .line 64
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v0, 0x102

    #calls: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {p4, v0, v3, v3}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method
