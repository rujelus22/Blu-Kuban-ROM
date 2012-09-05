.class public Lcom/google/android/finsky/receivers/RemoveAssetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoveAssetReceiver.java"


# static fields
.field private static sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;ZLcom/google/android/finsky/local/LocalAsset;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removeAsset(Ljava/lang/String;ZLcom/google/android/finsky/local/LocalAsset;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removePackage(Ljava/lang/String;Z)V

    return-void
.end method

.method public static initialize(Lcom/google/android/finsky/utils/Notifier;)V
    .registers 1
    .parameter "notificationHelper"

    .prologue
    .line 56
    sput-object p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    .line 57
    return-void
.end method

.method private removeAsset(Ljava/lang/String;ZLcom/google/android/finsky/local/LocalAsset;)V
    .registers 6
    .parameter "assetName"
    .parameter "malicious"
    .parameter "asset"

    .prologue
    .line 138
    invoke-interface {p3}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v0, v1, :cond_13

    .line 141
    if-eqz p2, :cond_24

    .line 142
    sget-object v0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {p3}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/utils/Notifier;->showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_13
    :goto_13
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/finsky/local/LocalAsset;->setRefundPeriodEndTime(Ljava/lang/Long;)V

    .line 150
    invoke-interface {p3}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removePackage(Ljava/lang/String;Z)V

    .line 151
    return-void

    .line 145
    :cond_24
    sget-object v0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {p3}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/utils/Notifier;->showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private removePackage(Ljava/lang/String;Z)V
    .registers 15
    .parameter "packageName"
    .parameter "isMalicious"

    .prologue
    .line 154
    const-string v8, "Removing package \'%s\'. Malicious=\'%s\'"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    if-eqz p2, :cond_51

    .line 157
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 160
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_1d
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_20} :catch_44

    move-result-object v4

    .line 166
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2c
    if-ge v2, v3, :cond_50

    aget-object v7, v0, v2

    .line 169
    .local v7, uidPackageName:Ljava/lang/String;
    const-string v8, "Removing package \'%s\' (child of \'%s\')"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {v7}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 161
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #packages:[Ljava/lang/String;
    .end local v7           #uidPackageName:Ljava/lang/String;
    :catch_44
    move-exception v1

    .line 162
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "\'%s\' not found in PM."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :cond_50
    :goto_50
    return-void

    .line 174
    :cond_51
    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_50
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 135
    :cond_e
    :goto_e
    return-void

    .line 65
    :cond_f
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->setResultCode(I)V

    .line 67
    const-string v5, "google.com"

    const-string v6, "from"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "REMOVE_ASSET"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 73
    const-string v5, "asset_package"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, packageName:Ljava/lang/String;
    const-string v5, "assetid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, assetId:Ljava/lang/String;
    const-string v5, "asset_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, assetName:Ljava/lang/String;
    const-string v5, "asset_malicious"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 79
    .local v3, isMalicious:Z
    if-nez v1, :cond_55

    if-nez v4, :cond_55

    .line 80
    const-string v5, "Neither asset ID nor package name received. Ignore tickle."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 86
    :cond_55
    if-eqz v4, :cond_69

    .line 87
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 93
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    :goto_63
    if-eqz v0, :cond_76

    .line 94
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removeAsset(Ljava/lang/String;ZLcom/google/android/finsky/local/LocalAsset;)V

    goto :goto_e

    .line 89
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_69
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/finsky/local/AssetStore;->getAssetById(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .restart local v0       #asset:Lcom/google/android/finsky/local/LocalAsset;
    goto :goto_63

    .line 98
    :cond_76
    if-eqz v4, :cond_88

    .line 99
    const-string v5, "Could not resolve assetId=%s packageName=%s with local asset. Removing  package by package name."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0, v4, v3}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removePackage(Ljava/lang/String;Z)V

    goto :goto_e

    .line 106
    :cond_88
    const-string v5, "Cannot associate asset ID %s with local asset and no package name received. Fetching package name from AMAS."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;

    invoke-direct {v6, p0, v2, v3, v1}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;-><init>(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;ZLjava/lang/String;)V

    new-instance v7, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$2;

    invoke-direct {v7, p0, v1}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$2;-><init>(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6, v7}, Lcom/google/android/vending/remoting/api/VendingApi;->fetchAssetInfo(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_e
.end method
