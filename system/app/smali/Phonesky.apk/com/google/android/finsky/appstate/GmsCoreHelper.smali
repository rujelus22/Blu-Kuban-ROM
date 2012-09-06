.class public Lcom/google/android/finsky/appstate/GmsCoreHelper;
.super Ljava/lang/Object;
.source "GmsCoreHelper.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private final mCurrentAccount:Landroid/accounts/Account;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/finsky/config/G;->gmsCorePackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V
    .registers 4
    .parameter "libraries"
    .parameter "currentAccount"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 35
    iput-object p2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mCurrentAccount:Landroid/accounts/Account;

    .line 36
    return-void
.end method

.method private installGmsCore(Lcom/google/android/finsky/api/model/Document;)V
    .registers 7
    .parameter "doc"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 94
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    .line 96
    .local v0, installer:Lcom/google/android/finsky/receivers/Installer;
    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v3}, Lcom/google/android/finsky/receivers/Installer;->setVisibility(Ljava/lang/String;ZZ)V

    .line 100
    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v3, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mCurrentAccount:Landroid/accounts/Account;

    invoke-static {p1, v2, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    .line 101
    .local v1, owner:Landroid/accounts/Account;
    if-nez v1, :cond_25

    .line 102
    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mCurrentAccount:Landroid/accounts/Account;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v4, v4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_24
    return-void

    .line 105
    :cond_25
    invoke-static {v1, p1, v4, v4, v4}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)V

    goto :goto_24
.end method

.method public static isGmsCore(Lcom/google/android/finsky/api/model/Document;)Z
    .registers 3
    .parameter "document"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 50
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_8

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public static isGmsCore(Ljava/lang/String;)Z
    .registers 2
    .parameter "packageName"

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public insertGmsCore(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, docIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 46
    :cond_8
    :goto_8
    return-void

    .line 43
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public updateGmsCore(Lcom/google/android/finsky/api/model/Document;)V
    .registers 9
    .parameter "document"

    .prologue
    const/4 v6, 0x0

    .line 66
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {p1, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 67
    const-string v3, "GMS Core is not available"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_11
    :goto_11
    return-void

    .line 71
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 72
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_20

    .line 73
    const-string v3, "Unable to install something without app details"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    .line 77
    :cond_20
    const/4 v1, -0x1

    .line 78
    .local v1, installedVersion:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v2

    .line 80
    .local v2, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-eqz v2, :cond_44

    .line 81
    iget-boolean v3, v2, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    if-eqz v3, :cond_42

    .line 82
    const-string v3, "Not updating %s (disabled)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper;->mPackageName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    .line 85
    :cond_42
    iget v1, v2, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 88
    :cond_44
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v3

    if-ge v1, v3, :cond_11

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->installGmsCore(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_11
.end method
