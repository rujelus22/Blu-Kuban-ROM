.class Lcom/google/android/finsky/receivers/InstallerTask;
.super Ljava/lang/Object;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/InstallerTask$6;
    }
.end annotation


# static fields
.field private static PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;


# instance fields
.field private mApkCompleted:J

.field private mApkSize:J

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private mDownloadStatus:I

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

.field private final mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mIsUpdate:Z

.field private mMobileDataAllowed:Z

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private mObbMain:Lcom/google/android/finsky/download/obb/Obb;

.field private mObbMainCompleted:J

.field private mObbMainSize:J

.field private mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

.field private mObbPatchCompleted:J

.field private mObbPatchSize:J

.field private mRecoveredIntoState:I

.field private mShowDownloadNotifications:Z

.field private mShowInstallNotifications:Z

.field private mShowProgress:Z

.field private mTitle:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 568
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    .line 570
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V
    .registers 8
    .parameter "packageName"
    .parameter "installer"
    .parameter "appStates"
    .parameter "downloadQueue"
    .parameter "notifier"
    .parameter "installPolicies"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    .line 144
    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 145
    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 146
    iput-object p5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    .line 147
    invoke-virtual {p3}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    .line 148
    iput-object p6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/InstallerDataStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/AppStates;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/receivers/InstallerTask;ILandroid/net/Uri;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/download/DownloadQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/receivers/InstallerTask;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/receivers/InstallerTask;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->deliveryResponseToInstallerError(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/android/volley/VolleyError;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    return-void
.end method

.method private advanceState()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 602
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 603
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v2, :cond_1f

    .line 604
    :cond_10
    const-string v2, "Unexpected missing installer data for %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 656
    :goto_1e
    :sswitch_1e
    return-void

    .line 608
    :cond_1f
    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 609
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v2

    sparse-switch v2, :sswitch_data_72

    .line 652
    const-string v2, "Bad state %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_1e

    .line 611
    :sswitch_42
    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->checkValidDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 612
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_1e

    .line 618
    :cond_4c
    :sswitch_4c
    invoke-direct {p0, v1, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 625
    :sswitch_4f
    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    goto :goto_1e

    .line 634
    :sswitch_53
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5f

    .line 635
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_1e

    .line 640
    :cond_5f
    :sswitch_5f
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->startInstaller(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_1e

    .line 643
    :sswitch_63
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->cleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_1e

    .line 647
    :sswitch_67
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 648
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V

    goto :goto_1e

    .line 609
    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_42
        0xa -> :sswitch_4c
        0x14 -> :sswitch_4f
        0x19 -> :sswitch_1e
        0x1e -> :sswitch_4f
        0x23 -> :sswitch_1e
        0x28 -> :sswitch_4f
        0x2d -> :sswitch_1e
        0x32 -> :sswitch_53
        0x3c -> :sswitch_5f
        0x46 -> :sswitch_63
        0x50 -> :sswitch_67
    .end sparse-switch
.end method

.method private canDownloadPatch(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z
    .registers 13
    .parameter

    .prologue
    .line 1396
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    .line 1397
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    .line 1398
    const/4 v0, 0x1

    .line 1494
    :goto_9
    return v0

    .line 1403
    :cond_a
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_10

    .line 1404
    const/4 v0, 0x0

    goto :goto_9

    .line 1410
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1411
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    .line 1414
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v3

    .line 1415
    if-nez v3, :cond_20

    .line 1416
    const/4 v0, 0x0

    goto :goto_9

    .line 1420
    :cond_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v0, v4, :cond_2d

    .line 1421
    const-string v0, "gingerbread"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const/4 v0, 0x0

    goto :goto_9

    .line 1426
    :cond_2d
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    .line 1427
    if-nez v0, :cond_40

    .line 1428
    const-string v0, "no-base-app-installed"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/4 v0, 0x0

    goto :goto_9

    .line 1431
    :cond_40
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseVersionCode()I

    move-result v4

    .line 1432
    iget v5, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-eq v5, v4, :cond_6a

    .line 1433
    const-string v2, "wrong-base-app-installed"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v2, "Cannot patch %s, need version %d but has %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    const/4 v0, 0x0

    goto :goto_9

    .line 1441
    :cond_6a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1443
    const/4 v4, 0x0

    :try_start_73
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_76} :catch_9d

    move-result-object v0

    .line 1449
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1450
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1451
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-static {v4, v0}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 1452
    :cond_87
    const-string v0, "base-app-dirs-mismatch"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string v0, "Cannot patch %s, source dir is %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1454
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1444
    :catch_9d
    move-exception v0

    .line 1445
    const-string v0, "base-app-NameNotFoundException"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string v0, "Cannot patch %s, NameNotFoundException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1463
    :cond_b1
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->dataPartitionAvailableSpace()J

    move-result-wide v5

    .line 1465
    sget-object v0, Lcom/google/android/finsky/config/G;->downloadPatchFreeSpaceFactor:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1466
    int-to-long v7, v0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v9

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    .line 1467
    cmp-long v0, v5, v7

    if-gez v0, :cond_ef

    .line 1468
    const-string v0, "free-space"

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v0, "Cannot patch %s, need %d, free %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1470
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1474
    :cond_ef
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_110

    .line 1476
    const-string v2, "base-file-exists"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v2, "Cannot patch %s, file does not exist %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1482
    :cond_110
    :try_start_110
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1483
    const-wide/16 v4, -0x1

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getBaseSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcom/google/android/finsky/utils/PackageManagerHelper;->verifyApk(Ljava/io/InputStream;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14b

    .line 1484
    const-string v2, "base-file-signature"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v2, "Cannot patch %s, signature mismatch"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_131
    .catch Ljava/io/FileNotFoundException; {:try_start_110 .. :try_end_131} :catch_134

    .line 1486
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1488
    :catch_134
    move-exception v2

    .line 1489
    const-string v2, "base-file-FileNotFoundException"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    const-string v2, "Cannot patch %s, FileNotFoundException, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1491
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1494
    :cond_14b
    const/4 v0, 0x1

    goto/16 :goto_9
.end method

.method private cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 7
    .parameter "appState"

    .prologue
    const/4 v4, 0x0

    .line 519
    const-string v1, "Cancel running installation of %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/DownloadQueue;->getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    .line 522
    .local v0, download:Lcom/google/android/finsky/download/Download;
    if-eqz v0, :cond_1c

    .line 523
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    .line 527
    :cond_1c
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 532
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v1, :cond_3a

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_3a

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 535
    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 537
    :cond_3a
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_47

    .line 538
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 540
    :cond_47
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v1, :cond_54

    .line 541
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 545
    :cond_54
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V

    .line 546
    return-void
.end method

.method private checkValidDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z
    .registers 13
    .parameter "installerData"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 666
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v5

    .line 680
    :goto_b
    return v4

    .line 669
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryDataTimestampMs()J

    move-result-wide v2

    .line 670
    .local v2, timestampMs:J
    cmp-long v4, v2, v9

    if-nez v4, :cond_16

    move v4, v6

    .line 673
    goto :goto_b

    .line 675
    :cond_16
    sget-object v4, Lcom/google/android/finsky/config/G;->deliveryDataExpirationMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v0, v2, v7

    .line 676
    .local v0, expirationMs:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v4, v0, v7

    if-gez v4, :cond_36

    .line 677
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7, v9, v10}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    move v4, v5

    .line 678
    goto :goto_b

    :cond_36
    move v4, v6

    .line 680
    goto :goto_b
.end method

.method public static cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V
    .registers 14
    .parameter "mainObb"
    .parameter "patchObb"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x3

    .line 1180
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 1205
    :cond_5
    return-void

    .line 1184
    :cond_6
    const/4 v3, 0x0

    .line 1185
    .local v3, mainObbFile:Ljava/io/File;
    if-eqz p0, :cond_13

    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v8

    if-ne v8, v9, :cond_13

    .line 1186
    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v3

    .line 1188
    :cond_13
    const/4 v5, 0x0

    .line 1189
    .local v5, patchObbFile:Ljava/io/File;
    if-eqz p1, :cond_20

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v8

    if-ne v8, v9, :cond_20

    .line 1190
    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v5

    .line 1192
    :cond_20
    invoke-static {p2}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1193
    .local v4, obbDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 1194
    .local v7, targets:[Ljava/io/File;
    if-eqz v7, :cond_5

    .line 1195
    move-object v0, v7

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2d
    if-ge v1, v2, :cond_5

    aget-object v6, v0, v1

    .line 1196
    .local v6, target:Ljava/io/File;
    if-eqz v3, :cond_3c

    invoke-virtual {v3, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 1195
    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1199
    :cond_3c
    if-eqz v5, :cond_44

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    .line 1202
    :cond_44
    const-string v8, "OBB cleanup %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_39
.end method

.method private cleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 12
    .parameter "appState"

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1104
    const/4 v1, -0x1

    .line 1105
    .local v1, installedVersion:I
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v5, :cond_e

    .line 1106
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 1108
    :cond_e
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    if-eq v1, v5, :cond_21

    .line 1110
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 1111
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v5, 0x38e

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1161
    :goto_20
    return-void

    .line 1116
    :cond_21
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v9, :cond_55

    .line 1117
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1118
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v7, :cond_55

    .line 1119
    const-string v5, "Lost main obb file for %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 1121
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v6, 0x38f

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1123
    const/16 v5, 0x38f

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_20

    .line 1127
    :cond_55
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v5, :cond_89

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v9, :cond_89

    .line 1128
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1129
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v7, :cond_89

    .line 1130
    const-string v5, "Lost patch obb file for %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 1132
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v6, 0x390

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1134
    const/16 v5, 0x390

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_20

    .line 1140
    :cond_89
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V

    .line 1145
    const/16 v5, 0x50

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1147
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1150
    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1153
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z

    if-eqz v4, :cond_b5

    .line 1154
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, continueUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    invoke-interface {v4, v3, v5, v0, v6}, Lcom/google/android/finsky/utils/Notifier;->showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1160
    .end local v0           #continueUrl:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_b5
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto/16 :goto_20
.end method

.method private deliveryResponseToInstallerError(I)I
    .registers 3
    .parameter "deliveryResponseStatus"

    .prologue
    .line 756
    packed-switch p1, :pswitch_data_10

    .line 764
    const/16 v0, 0x3af

    :goto_5
    return v0

    .line 758
    :pswitch_6
    const/16 v0, 0x3ac

    goto :goto_5

    .line 760
    :pswitch_9
    const/16 v0, 0x3ad

    goto :goto_5

    .line 762
    :pswitch_c
    const/16 v0, 0x3ae

    goto :goto_5

    .line 756
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;
    .registers 22
    .parameter "installerData"

    .prologue
    .line 933
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v17

    .line 935
    .local v17, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    .line 938
    .local v5, packageVersion:I
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookie(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v16

    .line 944
    .local v16, authCookie:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    const/4 v1, 0x0

    .line 945
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerTask;->canDownloadPatch(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 947
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getPatchData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-result-object v19

    .line 948
    .local v19, patchData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, downloadUri:Ljava/lang/String;
    const-wide/16 v9, -0x1

    .line 950
    .local v9, actualSize:J
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;->getMaxPatchSize()J

    move-result-wide v11

    .line 952
    .local v11, maxDownloadSize:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v18

    .line 953
    .local v18, flags:I
    and-int/lit8 v6, v18, 0x4

    if-nez v6, :cond_3f

    .line 954
    or-int/lit8 v18, v18, 0x4

    .line 955
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move/from16 v0, v18

    invoke-interface {v6, v4, v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 963
    .end local v18           #flags:I
    .end local v19           #patchData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppPatchData;
    :cond_3f
    :goto_3f
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v14, :cond_67

    const/4 v14, 0x1

    :goto_52
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    if-nez v15, :cond_69

    const/4 v15, 0x1

    :goto_59
    invoke-direct/range {v1 .. v15}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    .line 966
    .restart local v1       #download:Lcom/google/android/finsky/download/InternalDownload;
    return-object v1

    .line 959
    .end local v2           #downloadUri:Ljava/lang/String;
    .end local v9           #actualSize:J
    .end local v11           #maxDownloadSize:J
    :cond_5d
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    .line 960
    .restart local v2       #downloadUri:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v9

    .line 961
    .restart local v9       #actualSize:J
    move-wide v11, v9

    .restart local v11       #maxDownloadSize:J
    goto :goto_3f

    .line 963
    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_67
    const/4 v14, 0x0

    goto :goto_52

    :cond_69
    const/4 v15, 0x0

    goto :goto_59
.end method

.method private generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;
    .registers 22
    .parameter "installerData"
    .parameter "obb"

    .prologue
    .line 973
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v17

    .line 975
    .local v17, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v18

    .line 976
    .local v18, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    const v2, 0x7f070191

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 978
    .local v3, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    .line 980
    .local v5, packageVersion:I
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookie(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v16

    .line 981
    .local v16, authCookie:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 982
    .local v8, fileUri:Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v9

    .line 984
    .local v9, downloadSize:J
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v11, :cond_59

    const/4 v14, 0x1

    :goto_4b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    if-nez v11, :cond_5b

    const/4 v15, 0x1

    :goto_52
    move-wide v11, v9

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    .line 987
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    return-object v1

    .line 984
    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_59
    const/4 v14, 0x0

    goto :goto_4b

    :cond_5b
    const/4 v15, 0x0

    goto :goto_52
.end method

.method private getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    .registers 3
    .parameter "uri"

    .prologue
    .line 1056
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$3;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getUiFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 7
    .parameter "appState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 467
    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 468
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v2, :cond_27

    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    .line 469
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    .line 471
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    .line 472
    .local v0, flags:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_29

    move v2, v3

    :goto_1a
    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z

    .line 473
    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_2b

    :goto_20
    iput-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    .line 477
    iget-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    .line 478
    return-void

    .end local v0           #flags:I
    :cond_27
    move v2, v4

    .line 468
    goto :goto_9

    .restart local v0       #flags:I
    :cond_29
    move v2, v4

    .line 472
    goto :goto_1a

    :cond_2b
    move v3, v4

    .line 473
    goto :goto_20
.end method

.method private notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 5
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1350
    return-void
.end method

.method private processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V
    .registers 14
    .parameter "installerData"
    .parameter "canSetMobileDataAllowed"

    .prologue
    const/4 v10, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    .line 803
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    .line 806
    .local v0, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    .line 807
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    .line 808
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    .line 811
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    .line 812
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    .line 813
    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    .line 816
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileCount()I

    move-result v3

    if-lez v3, :cond_96

    .line 818
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_50

    .line 819
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 820
    sget-object v3, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v4, 0x385

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 822
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    const-string v4, "install.abandonInstall"

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const-string v6, "obb-no-external-storage"

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    if-eqz v3, :cond_4f

    .line 825
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/google/android/finsky/utils/Notifier;->showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_4f
    :goto_4f
    return-void

    .line 831
    :cond_50
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    .line 832
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_73

    .line 833
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 834
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v3

    if-ne v3, v10, :cond_73

    .line 835
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    .line 838
    :cond_73
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    .line 839
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_96

    .line 840
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 841
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v3

    if-ne v3, v10, :cond_96

    .line 842
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    .line 852
    :cond_96
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_c8

    move v3, v4

    :goto_9f
    iput-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    .line 859
    if-eqz p2, :cond_4f

    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v3, :cond_4f

    .line 860
    iget-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    iget-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    add-long v1, v6, v8

    .line 861
    .local v1, totalSize:J
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-gez v3, :cond_ca

    :goto_ba
    iput-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    .line 862
    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-eqz v3, :cond_4f

    .line 863
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->setMobileDataAllowed(Ljava/lang/String;)V

    goto :goto_4f

    .end local v1           #totalSize:J
    :cond_c8
    move v3, v5

    .line 852
    goto :goto_9f

    .restart local v1       #totalSize:J
    :cond_ca
    move v4, v5

    .line 861
    goto :goto_ba
.end method

.method private recoverApk(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z
    .registers 13
    .parameter "appState"
    .parameter "contentUri"
    .parameter "status"
    .parameter "desired"
    .parameter "installed"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 382
    if-gt p4, p5, :cond_1e

    .line 383
    const-string v3, "Recovery of %s skipped because desired= %d installed= %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :goto_1d
    return v1

    .line 390
    :cond_1e
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusCompleted(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 392
    const-string v3, "Recovery of %s into downloading APK state"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 394
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0, p2}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    .line 395
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    move v1, v2

    .line 396
    goto :goto_1d

    .line 399
    .end local v0           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_3f
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 401
    const-string v3, "Recovery of %s into ready to install state"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    const/16 v1, 0x32

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    move v1, v2

    .line 404
    goto :goto_1d

    .line 408
    :cond_5e
    const-string v3, "Recovery of %s into error state, status= %d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 410
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v2, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 411
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_1d
.end method

.method private recoverInstalling(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z
    .registers 11
    .parameter "appState"
    .parameter "contentUri"
    .parameter "status"
    .parameter "desired"
    .parameter "installed"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 429
    if-ge p4, p5, :cond_1e

    .line 431
    const-string v0, "Recovery of %s skipped because desired= %d installed= %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :goto_1d
    return v4

    .line 435
    :cond_1e
    if-ne p4, p5, :cond_38

    .line 437
    const-string v0, "Recovery of %s - installation seems complete"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    const/16 v0, 0x46

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 439
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_1d

    .line 445
    :cond_38
    const-string v0, "Recovery of %s with incomplete installation"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 447
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v0, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_1d
.end method

.method private recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z
    .registers 16
    .parameter "appState"
    .parameter "contentUri"
    .parameter "status"
    .parameter "desired"
    .parameter "installed"
    .parameter "isPatch"

    .prologue
    .line 319
    if-eqz p6, :cond_26

    const-string v4, "Patch"

    .line 321
    .local v4, tag:Ljava/lang/String;
    :goto_4
    if-gt p4, p5, :cond_29

    .line 322
    const-string v5, "Recovery of %s %s Obb skipped because desired= %d installed= %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    const/4 v5, 0x0

    .line 370
    :goto_25
    return v5

    .line 319
    .end local v4           #tag:Ljava/lang/String;
    :cond_26
    const-string v4, "Main"

    goto :goto_4

    .line 329
    .restart local v4       #tag:Ljava/lang/String;
    :cond_29
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusCompleted(I)Z

    move-result v5

    if-nez v5, :cond_56

    .line 331
    const-string v5, "Recovery of %s %s Obb into downloading OBB state"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    if-eqz p6, :cond_53

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    .line 333
    .local v3, obb:Lcom/google/android/finsky/download/obb/Obb;
    :goto_43
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v5, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v1

    .line 334
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    .line 335
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 336
    const/4 v5, 0x1

    goto :goto_25

    .line 332
    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    .end local v3           #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_53
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_43

    .line 339
    :cond_56
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 342
    if-eqz p6, :cond_93

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    .line 343
    .restart local v3       #obb:Lcom/google/android/finsky/download/obb/Obb;
    :goto_60
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 344
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_99

    .line 345
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v5

    if-nez v5, :cond_99

    .line 346
    const-string v5, "Recovery of %s %s Obb skipped - finalize failed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 349
    if-eqz p6, :cond_96

    const/16 v0, 0x390

    .line 351
    .local v0, code:I
    :goto_88
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v5, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 352
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 353
    const/4 v5, 0x0

    goto :goto_25

    .line 342
    .end local v0           #code:I
    .end local v3           #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_93
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_60

    .line 349
    .restart local v3       #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_96
    const/16 v0, 0x38f

    goto :goto_88

    .line 358
    :cond_99
    const-string v5, "Recovery of %s %s Obb into ready to install state"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    if-eqz p6, :cond_ba

    const/16 v2, 0x28

    .line 360
    .local v2, newState:I
    :goto_ad
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    .line 362
    const/4 v5, 0x1

    goto/16 :goto_25

    .line 359
    .end local v2           #newState:I
    :cond_ba
    const/16 v2, 0x1e

    goto :goto_ad

    .line 366
    .end local v3           #obb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_bd
    const-string v5, "Recovery of %s %s Obb into error state, status= %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 368
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v5, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 369
    const/4 v5, 0x0

    invoke-direct {p0, p3, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 370
    const/4 v5, 0x0

    goto/16 :goto_25
.end method

.method private reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1501
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.applyPatch"

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    return-void
.end method

.method private requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 16
    .parameter "appState"

    .prologue
    const/16 v6, 0x38a

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 687
    iget-object v12, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 688
    .local v12, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v13

    .line 690
    .local v13, packageVersion:I
    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v11

    .line 691
    .local v11, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v9

    .line 692
    .local v9, account:Landroid/accounts/Account;
    if-nez v9, :cond_32

    .line 694
    const-string v0, "Invalid account %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v11, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 696
    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 698
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 750
    :goto_31
    return-void

    .line 701
    :cond_32
    const/4 v5, 0x0

    .line 702
    .local v5, previousVersion:Ljava/lang/Integer;
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/google/android/finsky/config/G;->downloadSendBaseVersionCode:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 706
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 708
    :cond_4d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v10

    .line 709
    .local v10, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v3

    .line 710
    .local v3, serverToken:[B
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "1"

    new-instance v7, Lcom/google/android/finsky/receivers/InstallerTask$1;

    invoke-direct {v7, p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask$1;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/finsky/receivers/InstallerTask$2;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/receivers/InstallerTask$2;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;)V

    invoke-interface/range {v0 .. v8}, Lcom/google/android/finsky/api/DfeApi;->delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 749
    const/16 v0, 0xa

    invoke-virtual {v12}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    goto :goto_31
.end method

.method private setInstallerState(ILandroid/net/Uri;)V
    .registers 4
    .parameter "newState"
    .parameter "contentUri"

    .prologue
    .line 1381
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1382
    .local v0, uriString:Ljava/lang/String;
    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1383
    return-void

    .line 1381
    .end local v0           #uriString:Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private setInstallerState(ILjava/lang/String;)V
    .registers 5
    .parameter "newState"
    .parameter "contentUri"

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    .line 1375
    return-void
.end method

.method private showDownloadNotification(ILjava/lang/String;)V
    .registers 9
    .parameter "errorCode"
    .parameter "serverMessage"

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    if-eqz v0, :cond_11

    .line 485
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/utils/Notifier;->showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 488
    :cond_11
    return-void
.end method

.method private startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 7
    .parameter "appState"

    .prologue
    .line 1511
    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1512
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v1

    .line 1513
    .local v1, downloadUriString:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1516
    .local v0, downloadUri:Landroid/net/Uri;
    const/16 v3, 0x37

    invoke-direct {p0, v3, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    .line 1518
    new-instance v3, Lcom/google/android/finsky/receivers/InstallerTask$5;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask$5;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerTask$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1669
    return-void
.end method

.method private startInstaller(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 18
    .parameter "appState"

    .prologue
    .line 998
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 999
    .local v14, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v12

    .line 1003
    .local v12, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v6, :cond_49

    .line 1004
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1005
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v15

    .line 1006
    .local v15, obbState:I
    const/4 v6, 0x5

    if-eq v15, v6, :cond_49

    const/4 v6, 0x3

    if-eq v15, v6, :cond_49

    .line 1007
    const-string v6, "Can\'t find main obb file for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1009
    sget-object v6, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v7, 0x38f

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1011
    const/16 v6, 0x38f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 1015
    .end local v15           #obbState:I
    :cond_49
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v6, :cond_8a

    .line 1016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 1017
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v6}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v15

    .line 1018
    .restart local v15       #obbState:I
    const/4 v6, 0x5

    if-eq v15, v6, :cond_8a

    const/4 v6, 0x3

    if-eq v15, v6, :cond_8a

    .line 1019
    const-string v6, "Can\'t find patch obb file for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1021
    sget-object v6, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v7, 0x390

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1023
    const/16 v6, 0x390

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    .line 1027
    .end local v15           #obbState:I
    :cond_8a
    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v3

    .line 1029
    .local v3, expectedSize:J
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getSignature()Ljava/lang/String;

    move-result-object v5

    .line 1030
    .local v5, expectedSignature:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1031
    .local v1, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v6, :cond_f2

    const/4 v6, 0x1

    :goto_a5
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    .line 1033
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasEncryptionParams()Z

    move-result v6

    if-eqz v6, :cond_f4

    const-string v13, "install.installerStart.encrypted"

    .line 1035
    .local v13, installTag:Ljava/lang/String;
    :goto_b1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v13, v7, v8}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowInstallNotifications:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getForwardLocked()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getEncryptionParams()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;

    move-result-object v11

    invoke-static/range {v1 .. v11}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZZLjava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$EncryptionParams;)V

    .line 1048
    const/16 v6, 0x3c

    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1051
    sget-object v6, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1052
    return-void

    .line 1031
    .end local v13           #installTag:Ljava/lang/String;
    :cond_f2
    const/4 v6, 0x0

    goto :goto_a5

    .line 1033
    :cond_f4
    const-string v13, "install.installerStart"

    goto :goto_b1
.end method

.method private startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .registers 12
    .parameter "installerData"

    .prologue
    const/16 v9, 0x386

    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v2

    .line 880
    .local v2, state:I
    const/16 v4, 0x14

    if-ge v2, v4, :cond_10

    .line 882
    const/16 v2, 0x14

    .line 884
    :cond_10
    const/4 v1, -0x1

    .line 886
    .local v1, nextState:I
    sparse-switch v2, :sswitch_data_aa

    .line 913
    :goto_14
    if-ltz v1, :cond_7f

    .line 915
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v4, v0}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 916
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    const-string v5, "install.downloadQueued"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 927
    :goto_31
    return-void

    .line 888
    :sswitch_32
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v4, :cond_55

    .line 889
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 890
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v4

    if-ne v4, v5, :cond_55

    .line 891
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 892
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, p1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 893
    const/16 v1, 0x14

    .line 894
    goto :goto_14

    .line 899
    :cond_55
    :sswitch_55
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v4, :cond_78

    .line 900
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 901
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v4

    if-ne v4, v5, :cond_78

    .line 902
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 903
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, p1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 904
    const/16 v1, 0x1e

    .line 905
    goto :goto_14

    .line 910
    :cond_78
    :sswitch_78
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 911
    const/16 v1, 0x28

    goto :goto_14

    .line 920
    :cond_7f
    const-string v4, "Unexpected download start states for %s: %d %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 923
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v9}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 925
    invoke-direct {p0, v9, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_31

    .line 886
    nop

    :sswitch_data_aa
    .sparse-switch
        0x14 -> :sswitch_32
        0x1e -> :sswitch_55
        0x28 -> :sswitch_78
    .end sparse-switch
.end method

.method private tryRestartWithoutPatch()Z
    .registers 7

    .prologue
    .line 1676
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    .line 1677
    .local v2, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    .line 1678
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    .line 1679
    .local v0, flags:I
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_28

    const/4 v3, 0x1

    .line 1680
    .local v3, wasPatch:Z
    :goto_11
    if-eqz v3, :cond_27

    .line 1682
    or-int/lit8 v0, v0, 0x8

    .line 1683
    and-int/lit8 v0, v0, -0x5

    .line 1684
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 1686
    const/16 v5, 0x28

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 1687
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    .line 1689
    :cond_27
    return v3

    .line 1679
    .end local v3           #wasPatch:Z
    :cond_28
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I
    .registers 3
    .parameter "volleyError"

    .prologue
    .line 772
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_7

    .line 773
    const/16 v0, 0x398

    .line 796
    :goto_6
    return v0

    .line 775
    :cond_7
    instance-of v0, p1, Lcom/google/android/volley/DisplayMessageError;

    if-eqz v0, :cond_e

    .line 776
    const/16 v0, 0x399

    goto :goto_6

    .line 778
    :cond_e
    instance-of v0, p1, Lcom/google/android/finsky/api/DfeServerError;

    if-eqz v0, :cond_15

    .line 779
    const/16 v0, 0x39a

    goto :goto_6

    .line 781
    :cond_15
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_1c

    .line 782
    const/16 v0, 0x39b

    goto :goto_6

    .line 784
    :cond_1c
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_23

    .line 785
    const/16 v0, 0x39c

    goto :goto_6

    .line 787
    :cond_23
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_2a

    .line 788
    const/16 v0, 0x39d

    goto :goto_6

    .line 790
    :cond_2a
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_31

    .line 791
    const/16 v0, 0x39e

    goto :goto_6

    .line 793
    :cond_31
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_38

    .line 794
    const/16 v0, 0x39f

    goto :goto_6

    .line 796
    :cond_38
    const/16 v0, 0x3a0

    goto :goto_6
.end method


# virtual methods
.method public cancel(Z)V
    .registers 7
    .parameter "sendNotify"

    .prologue
    const/4 v4, 0x0

    .line 497
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 501
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_26

    .line 503
    const-string v1, "Cannot cancel installing %s - too late"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_25
    :goto_25
    return-void

    .line 507
    :cond_26
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 510
    if-eqz p1, :cond_25

    .line 511
    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_25
.end method

.method public getProgress()Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    .registers 8

    .prologue
    .line 574
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 582
    iget-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    .line 583
    .local v2, bytesCompleted:J
    iget-wide v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    .line 585
    .local v4, bytesTotal:J
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    add-long/2addr v2, v0

    .line 586
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    add-long/2addr v4, v0

    .line 588
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    add-long/2addr v2, v0

    .line 589
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    add-long/2addr v4, v0

    .line 591
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    iget v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadStatus:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    .end local v2           #bytesCompleted:J
    .end local v4           #bytesTotal:J
    :goto_28
    return-object v0

    .line 576
    :pswitch_29
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_28

    .line 578
    :pswitch_2c
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_28

    .line 574
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method

.method public getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .registers 4

    .prologue
    .line 549
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 550
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_20

    .line 551
    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v1

    sparse-switch v1, :sswitch_data_24

    .line 562
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    .line 565
    :goto_19
    return-object v1

    .line 555
    :sswitch_1a
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_19

    .line 560
    :sswitch_1d
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_19

    .line 565
    :cond_20
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_19

    .line 551
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_1a
        0x37 -> :sswitch_1d
        0x3c -> :sswitch_1d
        0x46 -> :sswitch_1a
        0x50 -> :sswitch_1a
    .end sparse-switch
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 14
    .parameter "download"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1251
    move-object v3, p1

    check-cast v3, Lcom/google/android/finsky/download/InternalDownload;

    .line 1252
    .local v3, internal:Lcom/google/android/finsky/download/InternalDownload;
    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v10, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 1253
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1254
    .local v2, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v6, -0x1

    .line 1255
    .local v6, newState:I
    const/16 v1, 0x388

    .line 1256
    .local v1, errorCode:I
    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v4

    .line 1257
    .local v4, internalIsObb:Z
    if-eqz v4, :cond_37

    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->isPatch()Z

    move-result v9

    if-nez v9, :cond_37

    move v5, v7

    .line 1258
    .local v5, internalIsObbMain:Z
    :goto_23
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v9

    sparse-switch v9, :sswitch_data_b0

    .line 1285
    :cond_2a
    :goto_2a
    if-ltz v6, :cond_78

    .line 1287
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    .line 1288
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    .line 1296
    :goto_36
    return-void

    .end local v5           #internalIsObbMain:Z
    :cond_37
    move v5, v8

    .line 1257
    goto :goto_23

    .line 1260
    .restart local v5       #internalIsObbMain:Z
    :sswitch_39
    if-eqz v4, :cond_2a

    if-eqz v5, :cond_2a

    .line 1261
    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v9

    if-eqz v9, :cond_48

    .line 1262
    const/16 v6, 0x1e

    goto :goto_2a

    .line 1264
    :cond_48
    const-string v9, "Can\'t finalize main obb file for %s"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1265
    const/16 v1, 0x38f

    goto :goto_2a

    .line 1270
    :sswitch_56
    if-eqz v4, :cond_2a

    if-nez v5, :cond_2a

    .line 1271
    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v9

    if-eqz v9, :cond_65

    .line 1272
    const/16 v6, 0x28

    goto :goto_2a

    .line 1274
    :cond_65
    const-string v9, "Can\'t finalize patch obb file for %s"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    const/16 v1, 0x390

    goto :goto_2a

    .line 1280
    :sswitch_73
    if-nez v4, :cond_2a

    .line 1281
    const/16 v6, 0x32

    goto :goto_2a

    .line 1290
    :cond_78
    const-string v9, "Unexpected download completion states for %s: %d %d %b %b"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1293
    sget-object v7, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v7, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1294
    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_36

    .line 1258
    :sswitch_data_b0
    .sparse-switch
        0x19 -> :sswitch_39
        0x23 -> :sswitch_56
        0x2d -> :sswitch_73
    .end sparse-switch
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 7
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    const/4 v1, 0x0

    .line 1303
    const/16 v2, 0x1a4

    if-eq p2, v2, :cond_d

    const/16 v2, 0x1f4

    if-lt p2, v2, :cond_17

    const/16 v2, 0x257

    if-gt p2, v2, :cond_17

    :cond_d
    const/4 v0, 0x1

    .line 1304
    .local v0, restartableError:Z
    :goto_e
    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1322
    :goto_16
    return-void

    .end local v0           #restartableError:Z
    :cond_17
    move v0, v1

    .line 1303
    goto :goto_e

    .line 1308
    .restart local v0       #restartableError:Z
    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1312
    const/16 v1, 0x1f2

    if-ne p2, v1, :cond_33

    .line 1313
    iget-boolean v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowDownloadNotifications:Z

    if-eqz v1, :cond_2d

    .line 1314
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/utils/Notifier;->showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_2d
    :goto_2d
    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_16

    .line 1318
    :cond_33
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_2d
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 9
    .parameter "download"
    .parameter "progress"

    .prologue
    const-wide/16 v4, 0x0

    .line 1326
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 1327
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1328
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->isPatch()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1329
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    .line 1343
    :cond_19
    :goto_19
    iget v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iput v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadStatus:I

    .line 1344
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1345
    return-void

    .line 1331
    :cond_24
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    goto :goto_19

    .line 1334
    :cond_29
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    .line 1336
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 1337
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 1338
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 1339
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFirstDownloadMs(Ljava/lang/String;J)V

    goto :goto_19
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 12
    .parameter "download"

    .prologue
    const/16 v9, 0x387

    const/4 v8, 0x0

    .line 1209
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 1210
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1211
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 1215
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v2, -0x1

    .line 1216
    .local v2, newState:I
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v4

    sparse-switch v4, :sswitch_data_5c

    .line 1230
    :goto_1a
    if-ltz v2, :cond_32

    .line 1232
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    .line 1233
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1242
    :goto_28
    return-void

    .line 1219
    :sswitch_29
    const/16 v2, 0x19

    .line 1220
    goto :goto_1a

    .line 1223
    :sswitch_2c
    const/16 v2, 0x23

    .line 1224
    goto :goto_1a

    .line 1227
    :sswitch_2f
    const/16 v2, 0x2d

    goto :goto_1a

    .line 1235
    :cond_32
    const-string v4, "Unexpected download start states for %s: %d %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 1238
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v9}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 1240
    const/4 v4, 0x0

    invoke-direct {p0, v9, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_28

    .line 1216
    nop

    :sswitch_data_5c
    .sparse-switch
        0x14 -> :sswitch_29
        0x19 -> :sswitch_29
        0x1e -> :sswitch_2c
        0x23 -> :sswitch_2c
        0x28 -> :sswitch_2f
        0x2d -> :sswitch_2f
    .end sparse-switch
.end method

.method public recover(Landroid/net/Uri;I)Z
    .registers 13
    .parameter "contentUri"
    .parameter "status"

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v1

    .line 260
    .local v1, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 261
    .local v7, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    if-nez v0, :cond_21

    .line 263
    :cond_15
    const-string v0, "Recovery of %s skipped because incomplete installerdata"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :goto_20
    return v6

    .line 268
    :cond_21
    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->getUiFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 271
    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 274
    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_50

    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v5, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 276
    .local v5, installed:I
    :goto_31
    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    .line 278
    .local v4, desired:I
    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v8

    .line 279
    .local v8, state:I
    iput v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mRecoveredIntoState:I

    .line 280
    sparse-switch v8, :sswitch_data_88

    .line 305
    const-string v0, "Recovery of %s skipped because state= %d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    .line 274
    .end local v4           #desired:I
    .end local v5           #installed:I
    .end local v8           #state:I
    :cond_50
    const/4 v5, -0x1

    goto :goto_31

    .restart local v4       #desired:I
    .restart local v5       #installed:I
    .restart local v8       #state:I
    :sswitch_52
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 282
    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z

    move-result v6

    goto :goto_20

    :sswitch_5a
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v6, v9

    .line 284
    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z

    move-result v6

    goto :goto_20

    :sswitch_63
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 286
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverApk(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z

    move-result v6

    goto :goto_20

    .line 295
    :sswitch_6b
    const-string v0, "Recovery of %s skipped because state= %d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_20

    :sswitch_80
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 300
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverInstalling(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z

    move-result v6

    goto :goto_20

    .line 280
    :sswitch_data_88
    .sparse-switch
        0x19 -> :sswitch_52
        0x23 -> :sswitch_5a
        0x2d -> :sswitch_63
        0x32 -> :sswitch_80
        0x37 -> :sswitch_6b
        0x3c -> :sswitch_80
    .end sparse-switch
.end method

.method releaseInstalledUri(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 1081
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1082
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, installFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1087
    .end local v0           #installFile:Ljava/io/File;
    :goto_18
    return-void

    .line 1085
    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, p1}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    goto :goto_18
.end method

.method public start()V
    .registers 12

    .prologue
    const/16 v10, 0x38b

    const/16 v9, 0x389

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 162
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 163
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_15

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v4, :cond_24

    .line 164
    :cond_15
    const-string v4, "Unexpected missing installer data for %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 234
    :goto_23
    return-void

    .line 168
    :cond_24
    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 169
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v3

    .line 172
    .local v3, state:I
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->getUiFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 176
    if-lez v3, :cond_38

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 177
    invoke-direct {p0, v1, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    .line 180
    :cond_38
    const/4 v2, -0x1

    .line 181
    .local v2, newState:I
    iput v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mRecoveredIntoState:I

    .line 182
    sparse-switch v3, :sswitch_data_a4

    .line 226
    const-string v4, "Unknown state %d for %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_23

    .line 186
    :sswitch_53
    const/4 v2, 0x0

    .line 230
    :goto_54
    :sswitch_54
    const/4 v4, -0x1

    if-eq v2, v4, :cond_60

    if-eq v2, v3, :cond_60

    .line 231
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    .line 233
    :cond_60
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_23

    .line 191
    :sswitch_64
    const/16 v2, 0xa

    .line 192
    goto :goto_54

    .line 196
    :sswitch_67
    const-string v4, "Cannot restart %s from downloading state %d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 198
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v9}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 200
    const/4 v4, 0x0

    invoke-direct {p0, v9, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_23

    .line 204
    :sswitch_85
    const/16 v2, 0x3c

    .line 205
    goto :goto_54

    .line 212
    :sswitch_88
    const-string v4, "Restarting while applying patch for %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 214
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 216
    const/4 v4, 0x0

    invoke-direct {p0, v10, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_23

    .line 221
    :sswitch_a0
    const/16 v2, 0x46

    .line 222
    goto :goto_54

    .line 182
    nop

    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_54
        0xa -> :sswitch_53
        0x14 -> :sswitch_64
        0x19 -> :sswitch_67
        0x1e -> :sswitch_64
        0x23 -> :sswitch_67
        0x28 -> :sswitch_64
        0x2d -> :sswitch_67
        0x32 -> :sswitch_85
        0x37 -> :sswitch_88
        0x3c -> :sswitch_a0
        0x46 -> :sswitch_a0
        0x50 -> :sswitch_54
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    return-object v0
.end method
