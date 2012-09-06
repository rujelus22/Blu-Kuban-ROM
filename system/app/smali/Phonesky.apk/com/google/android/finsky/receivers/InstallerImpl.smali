.class public Lcom/google/android/finsky/receivers/InstallerImpl;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;
.implements Lcom/google/android/finsky/receivers/Installer;
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# static fields
.field private static PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/installer/InstallerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private final mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private mRunning:Z

.field private mUninstallingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 557
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    .line 559
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    .line 561
    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
    .registers 10
    .parameter "context"
    .parameter "appStates"
    .parameter "libraries"
    .parameter "downloadQueue"
    .parameter "notifier"
    .parameter "installPolicies"
    .parameter "packageMonitorReceiver"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 93
    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 94
    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 95
    iput-object p5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    .line 96
    iput-object p6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 97
    iput-object p7, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    .line 98
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    .line 99
    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    .line 103
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/appstate/AppStates;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/download/DownloadQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/receivers/InstallerImpl;Landroid/net/Uri;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerImpl;->recoverDownload(Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/receivers/InstallerImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 6
    .parameter "appState"

    .prologue
    const/4 v3, 0x0

    .line 409
    if-eqz p1, :cond_1d

    .line 410
    const-string v0, "Cancel pending install of %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v0, :cond_1d

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    .line 414
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 417
    :cond_1d
    return-void
.end method

.method private getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;
    .registers 8
    .parameter "download"

    .prologue
    const/4 v4, 0x0

    .line 781
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 782
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_c

    move-object v3, v4

    .line 798
    :cond_b
    :goto_b
    return-object v3

    .line 786
    :cond_c
    invoke-direct {p0, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v3

    .line 787
    .local v3, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-nez v3, :cond_19

    .line 789
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, p1}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    move-object v3, v4

    .line 790
    goto :goto_b

    .line 792
    :cond_19
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 793
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_25

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v5, :cond_b

    .line 795
    :cond_25
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, p1}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    move-object v3, v4

    .line 796
    goto :goto_b
.end method

.method private getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 771
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 773
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private kick(Ljava/lang/String;Z)V
    .registers 11
    .parameter "hintPackage"
    .parameter "postToHandler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 715
    if-eqz p2, :cond_f

    .line 716
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/receivers/InstallerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$3;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    :cond_e
    :goto_e
    return-void

    .line 724
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    if-nez v0, :cond_1d

    .line 725
    const-string v0, "Installer kick %s - no action, not running yet"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 728
    :cond_1d
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_2b

    .line 729
    const-string v0, "Installer kick %s - no action because busy."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 732
    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->selectNextTask(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v7

    .line 733
    .local v7, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v7, :cond_e

    .line 734
    const-string v0, "Installer kick %s - starting %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v2, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 737
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->start()V

    goto :goto_e
.end method

.method private recoverDownload(Landroid/net/Uri;I)Z
    .registers 15
    .parameter "contentUri"
    .parameter "status"

    .prologue
    .line 441
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 442
    .local v11, uriString:Ljava/lang/String;
    :goto_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 443
    const/4 v1, 0x0

    .line 469
    :goto_d
    return v1

    .line 441
    .end local v11           #uriString:Ljava/lang/String;
    :cond_e
    const/4 v11, 0x0

    goto :goto_6

    .line 445
    .restart local v11       #uriString:Ljava/lang/String;
    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v1, :cond_25

    .line 446
    const-string v1, "tried recovery while already handling %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v4, v4, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const/4 v1, 0x0

    goto :goto_d

    .line 449
    :cond_25
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v7

    .line 450
    .local v7, allApps:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    const/4 v10, 0x0

    .line 451
    .local v10, recoverInstallerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_34
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 452
    .local v9, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 453
    move-object v10, v9

    .line 457
    .end local v9           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_4b
    if-nez v10, :cond_4f

    .line 458
    const/4 v1, 0x0

    goto :goto_d

    .line 460
    :cond_4f
    const-string v1, "Recovering download for running %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v10}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v10}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    .line 464
    .local v0, recoverTask:Lcom/google/android/finsky/receivers/InstallerTask;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->recover(Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 465
    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 466
    const/4 v1, 0x1

    goto :goto_d

    .line 469
    :cond_7a
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private selectNextTask(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;
    .registers 5
    .parameter "hintPackage"

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 755
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 757
    :cond_d
    if-nez v0, :cond_22

    .line 758
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v1

    .line 759
    .local v1, appsToInstall:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 760
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 763
    .end local v1           #appsToInstall:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    .restart local v0       #appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_22
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/android/finsky/installer/InstallerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 594
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 595
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 378
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v1

    .line 379
    .local v1, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v1, :cond_f

    .line 381
    invoke-virtual {v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 387
    :goto_a
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 388
    return-void

    .line 384
    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 385
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_a
.end method

.method public cancelAll()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 393
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v3, :cond_a

    .line 394
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 397
    :cond_a
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, appsToInstall:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/AppStates$AppState;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    .line 400
    .local v0, appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_14

    .line 402
    .end local v0           #appToInstall:Lcom/google/android/finsky/appstate/AppStates$AppState;
    :cond_24
    const/4 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 403
    return-void
.end method

.method clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .registers 6
    .parameter "appState"

    .prologue
    const/4 v3, 0x0

    .line 423
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v0, :cond_7

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    if-eqz v0, :cond_26

    .line 430
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 432
    :cond_26
    return-void
.end method

.method public getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    .registers 6
    .parameter "packageName"

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v2

    .line 568
    .local v2, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v2, :cond_b

    .line 569
    invoke-virtual {v2}, Lcom/google/android/finsky/receivers/InstallerTask;->getProgress()Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v3

    .line 586
    :goto_a
    return-object v3

    .line 571
    :cond_b
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 572
    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_a

    .line 575
    :cond_16
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 576
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_36

    .line 577
    const/4 v1, -0x1

    .line 578
    .local v1, installedVersion:I
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v3, :cond_27

    .line 579
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 581
    :cond_27
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_36

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    if-le v3, v1, :cond_36

    .line 583
    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_a

    .line 586
    .end local v1           #installedVersion:I
    :cond_36
    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_a
.end method

.method public getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .registers 6
    .parameter "packageName"

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v2

    .line 536
    .local v2, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v2, :cond_b

    .line 537
    invoke-virtual {v2}, Lcom/google/android/finsky/receivers/InstallerTask;->getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    .line 554
    :goto_a
    return-object v3

    .line 539
    :cond_b
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 540
    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_a

    .line 543
    :cond_16
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 544
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_36

    .line 545
    const/4 v1, -0x1

    .line 546
    .local v1, installedVersion:I
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v3, :cond_27

    .line 547
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 549
    :cond_27
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_36

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    if-le v3, v1, :cond_36

    .line 551
    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_a

    .line 554
    .end local v1           #installedVersion:I
    :cond_36
    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_a
.end method

.method public isBusy()Z
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 6
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/receivers/InstallerImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/receivers/InstallerImpl$2;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 660
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadCancel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 663
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_1c

    .line 664
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 666
    :cond_1c
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 649
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadComplete"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 652
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_1b

    .line 653
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->onComplete(Lcom/google/android/finsky/download/Download;)V

    .line 655
    :cond_1b
    return-void
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 8
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 672
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadError"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 675
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_1e

    .line 676
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->onError(Lcom/google/android/finsky/download/Download;I)V

    .line 678
    :cond_1e
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 8
    .parameter "download"

    .prologue
    const/4 v5, 0x0

    .line 692
    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 693
    .local v1, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_28

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding notification click, no packageName for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :goto_27
    return-void

    .line 699
    :cond_28
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v5, v5, v4}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 701
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 702
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_27
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 815
    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .registers 3
    .parameter "packageNames"
    .parameter "available"

    .prologue
    .line 874
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 867
    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .registers 2
    .parameter "packageName"

    .prologue
    .line 879
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .registers 9
    .parameter "packageName"
    .parameter "replacing"

    .prologue
    const/4 v5, -0x1

    .line 830
    if-nez p2, :cond_8

    .line 831
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4, p1}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    .line 835
    :cond_8
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 838
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 839
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_29

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_29

    .line 840
    const/4 v1, 0x0

    .line 841
    .local v1, clearDesiredVersion:Z
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 842
    .local v3, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    if-ne v4, v5, :cond_30

    .line 856
    :cond_22
    :goto_22
    if-eqz v1, :cond_29

    .line 857
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v4, p1, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 861
    .end local v1           #clearDesiredVersion:Z
    .end local v3           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_29
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 862
    return-void

    .line 844
    .restart local v1       #clearDesiredVersion:Z
    .restart local v3       #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_30
    if-eqz p2, :cond_42

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v4, :cond_42

    .line 847
    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v2

    .line 848
    .local v2, desiredVersion:I
    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v4, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-ge v4, v2, :cond_22

    .line 849
    const/4 v1, 0x1

    goto :goto_22

    .line 853
    .end local v2           #desiredVersion:I
    :cond_42
    const/4 v1, 0x1

    goto :goto_22
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 4
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 684
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_9

    .line 685
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V

    .line 687
    :cond_9
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 638
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadStarted"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    .line 641
    .local v0, task:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v0, :cond_1b

    .line 642
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->onStart(Lcom/google/android/finsky/download/Download;)V

    .line 644
    :cond_1b
    return-void
.end method

.method public removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 603
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 604
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 605
    return-void
.end method

.method public requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 39
    .parameter "docId"
    .parameter "packageVersion"
    .parameter "deliveryData"
    .parameter "accountName"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "title"
    .parameter "deferred"
    .parameter "reason"

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v3, v4, :cond_14

    .line 190
    const-string v3, "Dropping install request for %s because already installing"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_13
    :goto_13
    return-void

    .line 195
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v18

    .line 199
    .local v18, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    move/from16 v23, p2

    .line 200
    .local v23, newVersionCode:I
    if-eqz v18, :cond_8a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-object/from16 v27, v0

    .line 201
    .local v27, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :goto_28
    if-eqz v27, :cond_8d

    move-object/from16 v0, v27

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    move/from16 v26, v0

    .line 202
    .local v26, oldVersionCode:I
    :goto_30
    move/from16 v0, v23

    move/from16 v1, v26

    if-gt v0, v1, :cond_93

    .line 203
    const-string v3, "Skipping attempt to download %s version %d over version %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    const-string v4, "install.abandonInstall"

    const-string v5, "older-version"

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_90

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v17

    .line 208
    .local v17, flags:I
    :goto_6e
    and-int/lit8 v3, v17, 0x1

    if-nez v3, :cond_13

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f0700af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v1, v4, v5}, Lcom/google/android/finsky/utils/Notifier;->showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_13

    .line 200
    .end local v17           #flags:I
    .end local v26           #oldVersionCode:I
    .end local v27           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_8a
    const/16 v27, 0x0

    goto :goto_28

    .line 201
    .restart local v27       #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_8d
    const/16 v26, -0x1

    goto :goto_30

    .line 207
    .restart local v26       #oldVersionCode:I
    :cond_90
    const/16 v17, 0x0

    goto :goto_6e

    .line 217
    :cond_93
    const-string v3, "Request install of %s v=%d for %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p9, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v3

    const-string v4, "install.request"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-interface {v3, v4, v0, v5, v1}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/16 v28, 0x0

    .line 225
    .local v28, setMobileDataOk:Z
    if-eqz p3, :cond_d4

    .line 226
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/finsky/local/AssetUtils;->totalDeliverySize(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)J

    move-result-wide v19

    .line 227
    .local v19, deliverySize:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v3

    cmp-long v3, v19, v3

    if-gez v3, :cond_120

    const/16 v28, 0x1

    .line 231
    .end local v19           #deliverySize:J
    :cond_d4
    :goto_d4
    const-wide/16 v7, 0x0

    .line 232
    .local v7, deliveryDataTimestampMs:J
    if-eqz p3, :cond_dc

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 243
    :cond_dc
    if-eqz v28, :cond_123

    const/16 v17, 0x2

    .line 244
    .restart local v17       #flags:I
    :goto_e0
    const/16 v21, 0xc

    .line 246
    .local v21, flagsMask:I
    new-instance v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    sget-object v4, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p4

    move-object/from16 v16, p7

    invoke-direct/range {v2 .. v17}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    .local v2, newRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    if-eqz v18, :cond_103

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v3, :cond_126

    .line 253
    :cond_103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v3, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    .line 286
    :cond_10a
    :goto_10a
    sget-object v3, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_PENDING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 289
    if-nez p8, :cond_13

    .line 290
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 227
    .end local v2           #newRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .end local v7           #deliveryDataTimestampMs:J
    .end local v17           #flags:I
    .end local v21           #flagsMask:I
    .restart local v19       #deliverySize:J
    :cond_120
    const/16 v28, 0x0

    goto :goto_d4

    .line 243
    .end local v19           #deliverySize:J
    .restart local v7       #deliveryDataTimestampMs:J
    :cond_123
    const/16 v17, 0x0

    goto :goto_e0

    .line 259
    .restart local v2       #newRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .restart local v17       #flags:I
    .restart local v21       #flagsMask:I
    :cond_126
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v25, v0

    .line 260
    .local v25, oldRow:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    if-eq v3, v4, :cond_141

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 263
    :cond_141
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1, v7, v8}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    .line 266
    :cond_15a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17a

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_17a
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_193

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_193
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ac

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1ac
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v24

    .line 277
    .local v24, oldFlags:I
    and-int/lit8 v3, v24, -0xd

    or-int v22, v3, v17

    .line 278
    .local v22, newFlags:I
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_1c5

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 281
    :cond_1c5
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10a

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10a
.end method

.method public setMobileDataAllowed(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    .line 336
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    .line 337
    .local v1, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-interface {v1, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 338
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v3, 0x0

    .line 339
    .local v3, oldFlags:I
    if-eqz v0, :cond_11

    .line 340
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    .line 343
    :cond_11
    or-int/lit8 v2, v3, 0x2

    .line 344
    .local v2, newFlags:I
    if-eq v2, v3, :cond_18

    .line 345
    invoke-interface {v1, p1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 347
    :cond_18
    return-void
.end method

.method public setVisibility(Ljava/lang/String;ZZ)V
    .registers 9
    .parameter "packageName"
    .parameter "doProgress"
    .parameter "doNotifications"

    .prologue
    .line 351
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    .line 352
    .local v1, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-interface {v1, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 353
    .local v0, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    const/4 v3, 0x0

    .line 354
    .local v3, oldFlags:I
    if-eqz v0, :cond_11

    .line 355
    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    .line 358
    :cond_11
    and-int/lit8 v2, v3, -0x12

    .line 360
    .local v2, newFlags:I
    if-nez p2, :cond_17

    .line 361
    or-int/lit8 v2, v2, 0x10

    .line 363
    :cond_17
    if-nez p3, :cond_1b

    .line 364
    or-int/lit8 v2, v2, 0x1

    .line 366
    :cond_1b
    if-eq v2, v3, :cond_20

    .line 367
    invoke-interface {v1, p1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    .line 369
    :cond_20
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 118
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/receivers/InstallerImpl$1;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void
.end method

.method public startDeferredInstalls()V
    .registers 3

    .prologue
    .line 373
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 374
    return-void
.end method

.method taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V
    .registers 8
    .parameter "installerTask"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 805
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eq p1, v0, :cond_16

    .line 806
    const-string v0, "Unexpected (late?) finish of task for %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    :cond_16
    iput-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    .line 809
    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    .line 810
    return-void
.end method

.method public uninstallAssetSilently(Ljava/lang/String;)V
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 485
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 486
    const-string v2, "Unexpected empty package name"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :goto_f
    return-void

    .line 490
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v1

    .line 491
    .local v1, runningTask:Lcom/google/android/finsky/receivers/InstallerTask;
    if-eqz v1, :cond_19

    .line 492
    invoke-virtual {v1, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    .line 495
    :cond_19
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "uninstall"

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v2, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 498
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    .line 503
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_3f} :catch_4d

    .line 508
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-virtual {p0, p1, v2, v5}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    .line 510
    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_f

    .line 504
    :catch_4d
    move-exception v0

    .line 505
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Skipping uninstall of %s - already uninstalled."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public uninstallPackagesByUid(Ljava/lang/String;)V
    .registers 14
    .parameter "packageName"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 515
    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 518
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_9
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_2e

    move-result-object v4

    .line 524
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_18
    if-ge v2, v3, :cond_38

    aget-object v7, v0, v2

    .line 527
    .local v7, uidPackageName:Ljava/lang/String;
    const-string v8, "Removing package \'%s\' (child of \'%s\')"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v10

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerImpl;->uninstallAssetSilently(Ljava/lang/String;)V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 519
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #packages:[Ljava/lang/String;
    .end local v7           #uidPackageName:Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 520
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Skipping uninstall of %s - already uninstalled."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_38
    return-void
.end method

.method public updateInstalledApps(Ljava/util/List;Ljava/lang/String;)V
    .registers 17
    .parameter
    .parameter "reason"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, documentsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/api/model/Document;

    .line 308
    .local v12, document:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, packageName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v11

    .line 310
    .local v11, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v11, :cond_20

    iget-object v0, v11, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v0, :cond_2c

    .line 311
    :cond_20
    const-string v0, "Cannot update %s because not installed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 314
    :cond_2c
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v10

    .line 316
    .local v10, account:Landroid/accounts/Account;
    if-nez v10, :cond_43

    .line 317
    const-string v0, "Cannot update %s because cannot determine owner."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 321
    :cond_43
    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/finsky/receivers/InstallerImpl;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_4

    .line 332
    .end local v1           #packageName:Ljava/lang/String;
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v12           #document:Lcom/google/android/finsky/api/model/Document;
    :cond_58
    return-void
.end method
