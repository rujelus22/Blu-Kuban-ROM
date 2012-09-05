.class public Lcom/sec/android/app/twlauncher/LauncherModel;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherModel$1;,
        Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;,
        Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;
    }
.end annotation


# static fields
.field private static mInstalledAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private final mAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mApplicationsLoaded:Z

.field private mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

.field private mApplicationsLoaderThread:Ljava/lang/Thread;

.field private mCurrentLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItemsLoaded:Z

.field private mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

.field private mDesktopLoaderThread:Ljava/lang/Thread;

.field private mDesktopSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

.field private mPkgModFlag:Z

.field private mPkgModReceiver:Landroid/content/BroadcastReceiver;

.field private final mTopAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 104
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    .line 108
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    .line 1304
    return-void
.end method

.method private abortLoaders()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "abortLoaders"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->stop()V

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    .line 145
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 147
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    .line 149
    :cond_2e
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    return p1
.end method

.method static synthetic access$1200()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1300(II)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(JJ)I
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 63
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadLiveFolderIcon(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 2582
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2585
    new-instance v9, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    :try_start_19
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_45} :catch_64
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_45} :catch_8a

    move-result-object v2

    .line 2604
    if-eqz v2, :cond_53

    .line 2605
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c1

    move v1, v6

    .line 2608
    :goto_4f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v7, v1

    .line 2612
    :cond_53
    :goto_53
    if-eqz v7, :cond_63

    .line 2613
    const-string v1, "component_name"

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2617
    :cond_63
    return-void

    .line 2599
    :catch_64
    move-exception v1

    .line 2600
    :try_start_65
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_b0

    .line 2604
    if-eqz v10, :cond_53

    .line 2605
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_bf

    .line 2608
    :goto_85
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v7, v6

    goto :goto_53

    .line 2601
    :catch_8a
    move-exception v1

    .line 2602
    :try_start_8b
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_b0

    .line 2604
    if-eqz v10, :cond_53

    .line 2605
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_bd

    .line 2608
    :goto_ab
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v7, v6

    goto :goto_53

    .line 2604
    :catchall_b0
    move-exception v0

    if-eqz v10, :cond_bc

    .line 2605
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b9

    .line 2608
    :cond_b9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_bc
    throw v0

    :cond_bd
    move v6, v7

    goto :goto_ab

    :cond_bf
    move v6, v7

    goto :goto_85

    :cond_c1
    move v1, v7

    goto :goto_4f
.end method

.method private addEnabledAndUpdateActivities(Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)Z
    .registers 13
    .parameter
    .parameter "adapter"
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v6, toAdd:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 695
    .local v2, count:I
    const/4 v1, 0x0

    .line 697
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v2, :cond_3d

    .line 698
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 699
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p2, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 701
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_34

    .line 702
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-static {v7, v8, v5, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    const/4 v1, 0x1

    .line 697
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 706
    :cond_34
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v5, v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 708
    const/4 v1, 0x1

    goto :goto_31

    .line 712
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_3d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 713
    .local v5, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 714
    invoke-virtual {p2, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_41

    .line 717
    .end local v5           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_55
    return v1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2478
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2479
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2480
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2481
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2483
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2484
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2486
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2488
    if-eqz p7, :cond_36

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_18
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2491
    if-eqz v0, :cond_30

    .line 2492
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2494
    :cond_30
    const-string v0, "insert"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2495
    return-void

    .line 2488
    :cond_36
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_18
.end method

.method static addItemToDatabaseUserFolderWithShortcut(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZI)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2506
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2507
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2508
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2509
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2511
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2512
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2514
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2516
    const-string v0, "isShortcut"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2518
    if-eqz p7, :cond_3f

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_21
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2521
    if-eqz v0, :cond_39

    .line 2522
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2524
    :cond_39
    const-string v0, "insert"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2525
    return-void

    .line 2518
    :cond_3f
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_21
.end method

.method private addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V
    .registers 10
    .parameter "occupied"
    .parameter "screen"
    .parameter "item"

    .prologue
    .line 2066
    iget v4, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v4, p2, :cond_2a

    .line 2068
    array-length v0, p1

    .line 2069
    .local v0, sizeX:I
    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v1, v4

    .line 2070
    .local v1, sizeY:I
    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .local v2, xx:I
    :goto_b
    if-ge v2, v0, :cond_2a

    iget v4, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_2a

    .line 2071
    iget v3, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .local v3, yy:I
    :goto_16
    if-ge v3, v1, :cond_27

    iget v4, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_27

    .line 2072
    aget-object v4, p1, v2

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 2071
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2070
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2076
    .end local v0           #sizeX:I
    .end local v1           #sizeY:I
    .end local v2           #xx:I
    .end local v3           #yy:I
    :cond_2a
    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .registers 15
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 2369
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 2371
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2376
    :goto_12
    return-void

    .line 2374
    :cond_13
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_12
.end method

.method static addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .registers 15
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 2342
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 2344
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2349
    :goto_12
    return-void

    .line 2347
    :cond_13
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabaseForUserFolder(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_12
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2550
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2552
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2553
    const-string v0, "delete"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2554
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2560
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2562
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2563
    const-string v1, "delete"

    invoke-static {v1, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2571
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2573
    return-void
.end method

.method private declared-synchronized dropApplicationCache()V
    .registers 3

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "dropApplicationCache"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 160
    monitor-exit p0

    return-void

    .line 158
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .parameter "packageManager"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 668
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 672
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_39

    .line 676
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 677
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    if-ge v3, v2, :cond_39

    .line 678
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 679
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 680
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 681
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 686
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_39
    return-object v6
.end method

.method private static findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 9
    .parameter "adapter"
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 754
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_2d

    .line 755
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 756
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 757
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 758
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 764
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :goto_29
    return-object v0

    .line 754
    .restart local v0       #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #component:Landroid/content/ComponentName;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 764
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2d
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z
    .registers 7
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 770
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 771
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 772
    const/4 v4, 0x1

    .line 775
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_1f
    return v4

    :cond_20
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .registers 6
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1892
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-nez v1, :cond_1c

    .line 1894
    :cond_10
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 1895
    .restart local v0       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    :cond_1c
    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .registers 6
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1876
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1877
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1c

    .line 1879
    :cond_10
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    .line 1880
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    :cond_1c
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2157
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 2158
    if-nez v4, :cond_56

    .line 2159
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 2160
    if-nez v4, :cond_13

    move-object v0, v3

    .line 2208
    :goto_12
    return-object v0

    .line 2165
    :cond_13
    :try_start_13
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2000

    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1f} :catch_29

    and-int/2addr v0, v6

    if-eqz v0, :cond_27

    move v0, v1

    .line 2170
    :goto_23
    if-nez v0, :cond_2c

    move-object v0, v3

    .line 2171
    goto :goto_12

    :cond_27
    move v0, v2

    .line 2165
    goto :goto_23

    .line 2167
    :catch_29
    move-exception v0

    move v0, v2

    goto :goto_23

    .line 2175
    :cond_2c
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2176
    iput v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 2177
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 2178
    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 2179
    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    .line 2180
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2183
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 2187
    :cond_56
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2188
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2189
    invoke-virtual {v3, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2190
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_77

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_7e

    .line 2191
    :cond_77
    invoke-virtual {v3, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2193
    :cond_7e
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_89

    .line 2194
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2196
    :cond_89
    iput v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 2198
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 2202
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2203
    and-int/2addr v3, v6

    if-eqz v3, :cond_9c

    .line 2204
    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    goto/16 :goto_12

    .line 2206
    :cond_9c
    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    goto/16 :goto_12
.end method

.method private getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 20
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"

    .prologue
    .line 2274
    new-instance v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2275
    .local v6, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v11, 0x1

    iput v11, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 2277
    move/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2278
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_8c

    .line 2309
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2310
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    .line 2313
    :goto_1f
    return-object v6

    .line 2280
    :pswitch_20
    move/from16 v0, p4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2281
    .local v8, packageName:Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2282
    .local v9, resourceName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2284
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    :try_start_30
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 2285
    .local v10, resources:Landroid/content/res/Resources;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2286
    .local v5, id:I
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_44} :catch_58

    .line 2290
    .end local v5           #id:I
    .end local v10           #resources:Landroid/content/res/Resources;
    :goto_44
    new-instance v11, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v11}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2291
    iget-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v8, v11, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 2292
    iget-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v9, v11, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 2293
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    goto :goto_1f

    .line 2287
    :catch_58
    move-exception v3

    .line 2288
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    .line 2296
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #resourceName:Ljava/lang/String;
    :pswitch_60
    move/from16 v0, p6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 2298
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_67
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2299
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v11, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-static {v1, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_77} :catch_80

    .line 2305
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_77
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 2306
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    goto :goto_1f

    .line 2301
    :catch_80
    move-exception v3

    .line 2302
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2303
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_77

    .line 2278
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_60
    .end packed-switch
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 4
    .parameter "manager"
    .parameter "activityInfo"

    .prologue
    .line 1294
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 1296
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    if-nez v0, :cond_18

    .line 1298
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1301
    :cond_18
    return-object v0
.end method

.method static getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "intent"

    .prologue
    .line 2913
    const/4 v0, 0x0

    .line 2914
    .local v0, packageName:Ljava/lang/String;
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 2915
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2917
    :cond_11
    return-object v0
.end method

.method private static integerCompare(II)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1152
    const/4 v0, 0x0

    .line 1154
    .local v0, ret:I
    if-le p0, p1, :cond_5

    .line 1155
    const/4 v0, 0x1

    .line 1159
    :cond_4
    :goto_4
    return v0

    .line 1156
    :cond_5
    if-ge p0, p1, :cond_4

    .line 1157
    const/4 v0, -0x1

    goto :goto_4
.end method

.method public static isStoredExternalStorageMounted(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2241
    .line 2242
    if-nez p0, :cond_4

    .line 2265
    :goto_3
    return v0

    .line 2245
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2248
    :try_start_8
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2250
    if-eqz v1, :cond_1b

    .line 2251
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_42

    .line 2252
    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    .line 2253
    const/4 v0, 0x1

    .line 2261
    :cond_1b
    :goto_1b
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isStoredExternalStorageMounted] packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bRetVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2256
    :catch_42
    move-exception v1

    goto :goto_1b
.end method

.method public static isStoredExternalStorageUnmounted(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2215
    .line 2216
    if-nez p0, :cond_5

    .line 2234
    :goto_4
    return v1

    .line 2219
    :cond_5
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2220
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2223
    :try_start_15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1d} :catch_4a

    move-result-object v2

    if-nez v2, :cond_48

    .line 2230
    :goto_20
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isStoredExternalStorageUnmounted] packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bRetVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2234
    goto :goto_4

    :cond_48
    move v0, v1

    .line 2223
    goto :goto_20

    .line 2224
    :catch_4a
    move-exception v1

    goto :goto_20

    :cond_4c
    move v0, v1

    goto :goto_20
.end method

.method static loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2661
    .line 2662
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2667
    :try_start_5
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "page"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "cell"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "component_name"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "default_sort"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "create_time"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "parent_id,page,cell"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_3a} :catch_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_3a} :catch_57

    move-result-object v0

    .line 2684
    :goto_3b
    return-object v0

    .line 2677
    :catch_3c
    move-exception v0

    .line 2678
    :try_start_3d
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 2683
    goto :goto_3b

    .line 2679
    :catch_57
    move-exception v0

    .line 2680
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_3d .. :try_end_70} :catchall_72

    move-object v0, v6

    .line 2683
    goto :goto_3b

    .line 2681
    :catchall_72
    move-exception v0

    throw v0
.end method

.method private static loadLiveFolderIcon(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .registers 16
    .parameter "launcher"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f020031

    .line 1812
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1813
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_4e

    .line 1831
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1834
    :goto_14
    return-void

    .line 1815
    :pswitch_15
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1816
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1817
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1819
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_21
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1820
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1821
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_41

    .line 1826
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_31
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1827
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1828
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_14

    .line 1822
    :catch_41
    move-exception v0

    .line 1823
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_31

    .line 1813
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method static loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2635
    .line 2636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2639
    :try_start_5
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cell"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "component_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "default_sort"

    aput-object v4, v2, v3

    const-string v3, "page=-1 and cell <> -1"

    const/4 v4, 0x0

    const-string v5, "cell"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_26} :catch_28
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_26} :catch_43

    move-result-object v0

    .line 2657
    :goto_27
    return-object v0

    .line 2650
    :catch_28
    move-exception v0

    .line 2651
    :try_start_29
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 2656
    goto :goto_27

    .line 2652
    :catch_43
    move-exception v0

    .line 2653
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_5e

    move-object v0, v6

    .line 2656
    goto :goto_27

    .line 2654
    :catchall_5e
    move-exception v0

    throw v0
.end method

.method private static logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2966
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " workspace item. info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v0, :cond_74

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_93

    .line 2971
    :cond_74
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2972
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_92
    :goto_92
    return-void

    .line 2973
    :cond_93
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b5

    .line 2974
    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2975
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> appWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 2976
    :cond_b5
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_92

    .line 2977
    check-cast p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2978
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92
.end method

.method private static longCompare(JJ)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1163
    const/4 v0, 0x0

    .line 1165
    .local v0, ret:I
    cmp-long v1, p0, p2

    if-lez v1, :cond_7

    .line 1166
    const/4 v0, 0x1

    .line 1170
    :cond_6
    :goto_6
    return v0

    .line 1167
    :cond_7
    cmp-long v1, p0, p2

    if-gez v1, :cond_6

    .line 1168
    const/4 v0, -0x1

    goto :goto_6
.end method

.method private static makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 10
    .parameter "manager"
    .parameter
    .parameter "info"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            ")",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 802
    .local v0, application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_52

    .line 803
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v0           #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 805
    .restart local v0       #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, p2, v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 807
    const/high16 v4, 0x1020

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 810
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_56

    const/4 v4, 0x1

    :goto_2f
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 814
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 815
    const-wide/16 v2, 0x0

    .line 816
    .local v2, createTime:J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_4c

    .line 818
    :try_start_42
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v2, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_4c} :catch_58

    .line 824
    :cond_4c
    :goto_4c
    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    .line 825
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .end local v2           #createTime:J
    :cond_52
    invoke-static {v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 830
    return-object v0

    .line 810
    :cond_56
    const/4 v4, 0x0

    goto :goto_2f

    .line 820
    .restart local v2       #createTime:J
    :catch_58
    move-exception v4

    goto :goto_4c
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2383
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2384
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2385
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2386
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2388
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2391
    const-string v2, "container"

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2392
    const-string v2, "cellX"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2393
    const-string v2, "cellY"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2394
    const-string v2, "screen"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2396
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2397
    const-string v0, "update"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2398
    return-void
.end method

.method static moveItemInDatabaseForUserFolder(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .registers 15
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 2354
    move-object v1, p1

    .line 2356
    .local v1, moveItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2358
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2359
    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2620
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2622
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "component_name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2625
    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2628
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2630
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2632
    return-void
.end method

.method private removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Z
    .registers 15
    .parameter "packageName"
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 723
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 726
    .local v4, count:I
    const/4 v2, 0x0

    .line 728
    .local v2, changed:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_b
    if-ge v5, v4, :cond_32

    .line 729
    invoke-virtual {p3, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 730
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 731
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 732
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 733
    invoke-static {p2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_2f

    .line 734
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    const/4 v2, 0x1

    .line 728
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 740
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 741
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 742
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 743
    invoke-virtual {p3, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 744
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 747
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_57
    return v2
.end method

.method static removePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .registers 7
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 485
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 486
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 487
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 488
    .local v1, component:Landroid/content/ComponentName;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_8

    .line 490
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2406
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v6

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2413
    :try_start_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    move-result v1

    .line 2415
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2417
    return v1

    .line 2415
    :catchall_2c
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .registers 5
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "startApplicationsLoader"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 298
    monitor-exit p0

    return-void

    .line 296
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .registers 6
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 302
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "startApplicationsLoaderLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()Z

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 311
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created new mApplicationsAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new mApplications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    .line 318
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    const-string v2, "Applications Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    return-void
.end method

.method private stopAndWaitForApplicationsLoader()Z
    .registers 6

    .prologue
    .line 258
    const-string v2, "Launcher.LauncherModel"

    const-string v3, "stopAndWaitForApplicationsLoader"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, stopped:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->stop()V

    .line 266
    :try_start_19
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_22

    .line 270
    :goto_20
    const/4 v1, 0x1

    .line 272
    :cond_21
    return v1

    .line 267
    :catch_22
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "Launcher.LauncherModel"

    const-string v3, "InterruptedException while waiting for ApplicationsLoader to stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private stopAndWaitForDesktopItemsLoader()Z
    .registers 6

    .prologue
    .line 277
    const-string v2, "Launcher.LauncherModel"

    const-string v3, "stopAndWaitForApplicationsLoader"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, stopped:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 285
    :try_start_19
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_22

    .line 289
    :goto_20
    const/4 v1, 0x1

    .line 291
    :cond_21
    return v1

    .line 286
    :catch_22
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "Launcher.LauncherModel"

    const-string v3, "InterruptedException while waiting for DesktopItemsLoader to stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z
    .registers 10
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 638
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 639
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 641
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1e

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 645
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-direct {p0, p2, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Z

    move-result v4

    .line 648
    .local v4, removed:Z
    invoke-direct {p0, v2, v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addEnabledAndUpdateActivities(Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    .line 650
    .local v1, added:Z
    if-nez v1, :cond_1d

    if-eqz v4, :cond_1e

    :cond_1d
    const/4 v5, 0x1

    .line 653
    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v1           #added:Z
    .end local v4           #removed:Z
    :cond_1e
    return v5
.end method

.method private unbindAppDrawables(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, applications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v4, 0x0

    .line 1988
    if-eqz p1, :cond_25

    .line 1989
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1990
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_25

    .line 1991
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1992
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    .line 1993
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_22

    .line 1994
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1990
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1997
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_25
    return-void
.end method

.method private unbindAppWidgetHostViews(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2003
    .local p1, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    if-eqz p1, :cond_15

    .line 2004
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2005
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 2006
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2007
    .local v2, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2005
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2010
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_15
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .registers 5

    .prologue
    .line 2027
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2028
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_a

    .line 2030
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1d
    return-void
.end method

.method private unbindDrawables(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    const/4 v4, 0x0

    .line 1949
    if-eqz p1, :cond_2f

    .line 1950
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1951
    .local v2, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_30

    goto :goto_7

    :pswitch_19
    move-object v0, v2

    .line 1956
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1957
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_25

    .line 1958
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1959
    :cond_25
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 1960
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_7

    .line 1966
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_2f
    return-void

    .line 1951
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private unbindFolders(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1972
    .local p1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    if-eqz p1, :cond_1b

    .line 1973
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1974
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1975
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1976
    .local v2, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_18

    .line 1977
    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    .line 1974
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1981
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1b
    return-void
.end method

.method private unbindLocked()V
    .registers 4

    .prologue
    .line 1922
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindLocked. Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->abortLoaders()V

    .line 1928
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForDesktopItemsLoader()Z

    .line 1929
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()Z

    .line 1932
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v0, :cond_34

    .line 1933
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    .line 1935
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindAppDrawables(Ljava/util/ArrayList;)V

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindDrawables(Ljava/util/ArrayList;)V

    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindFolders(Ljava/util/ArrayList;)V

    .line 1939
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindAppWidgetHostViews(Ljava/util/ArrayList;)V

    .line 1940
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindSamsungAppWidgetViews(Ljava/util/ArrayList;)V

    .line 1941
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindCachedIconDrawables()V

    .line 1942
    return-void
.end method

.method private unbindSamsungAppWidgetViews(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2013
    .local p1, sappWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    if-eqz p1, :cond_15

    .line 2014
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2015
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 2016
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2017
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 2015
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2020
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_15
    return-void
.end method

.method private updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .registers 8
    .parameter "packageManager"
    .parameter "info"
    .parameter "applicationInfo"
    .parameter "context"

    .prologue
    .line 611
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 613
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method static updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .registers 15
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 2713
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isClean()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v8

    .line 2767
    :goto_c
    return v0

    .line 2716
    :cond_d
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2719
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2720
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 2726
    :try_start_1e
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_fe
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_4a} :catch_a3
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_4a} :catch_d0

    move-result-object v3

    .line 2737
    if-eqz v3, :cond_126

    .line 2738
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_12b

    .line 2739
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2740
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2742
    :goto_5b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2751
    :goto_5e
    const-string v3, "parent_id"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2752
    const-string v3, "page"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2753
    const-string v3, "cell"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2758
    const-string v3, "title"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 2760
    cmp-long v3, v1, v6

    if-eqz v3, :cond_113

    .line 2761
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_c

    .line 2732
    :catch_a3
    move-exception v1

    .line 2733
    :try_start_a4
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_a4 .. :try_end_bc} :catchall_fe

    .line 2737
    if-eqz v12, :cond_126

    .line 2738
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_129

    .line 2739
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2740
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2742
    :goto_cc
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    .line 2734
    :catch_d0
    move-exception v1

    .line 2735
    :try_start_d1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_d1 .. :try_end_e9} :catchall_fe

    .line 2737
    if-eqz v12, :cond_126

    .line 2738
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_124

    .line 2739
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2740
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2742
    :goto_f9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5e

    .line 2737
    :catchall_fe
    move-exception v0

    if-eqz v12, :cond_112

    .line 2738
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_10f

    .line 2739
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2740
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2742
    :cond_10f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_112
    throw v0

    .line 2763
    :cond_113
    const-string v1, "component_name"

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v0, v8

    .line 2767
    goto/16 :goto_c

    :cond_124
    move-wide v1, v6

    goto :goto_f9

    :cond_126
    move-wide v1, v6

    goto/16 :goto_5e

    :cond_129
    move-wide v1, v6

    goto :goto_cc

    :cond_12b
    move-wide v1, v6

    goto/16 :goto_5b
.end method

.method private static updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 2867
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_15

    .line 2910
    :cond_14
    :goto_14
    return-void

    .line 2870
    :cond_15
    const/4 v7, 0x0

    .line 2873
    :try_start_16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_74
    .catchall {:try_start_16 .. :try_end_74} :catchall_fe
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_74} :catch_94
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_74} :catch_c9

    move-result-object v1

    .line 2888
    if-eqz v1, :cond_11c

    .line 2889
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_121

    .line 2890
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2891
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2894
    :goto_84
    :try_start_84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_87
    .catch Ljava/lang/NullPointerException; {:try_start_84 .. :try_end_87} :catch_8b

    .line 2909
    :goto_87
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    goto :goto_14

    .line 2895
    :catch_8b
    move-exception v1

    .line 2902
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 2883
    :catch_94
    move-exception v0

    .line 2884
    :try_start_95
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_fe

    .line 2888
    if-eqz v8, :cond_11c

    .line 2889
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11f

    .line 2890
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2891
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2894
    :goto_bc
    :try_start_bc
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_bf
    .catch Ljava/lang/NullPointerException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_87

    .line 2895
    :catch_c0
    move-exception v1

    .line 2902
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 2885
    :catch_c9
    move-exception v0

    .line 2886
    :try_start_ca
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_ca .. :try_end_e2} :catchall_fe

    .line 2888
    if-eqz v8, :cond_11c

    .line 2889
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11a

    .line 2890
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2891
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2894
    :goto_f1
    :try_start_f1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_f4
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_f4} :catch_f5

    goto :goto_87

    .line 2895
    :catch_f5
    move-exception v1

    .line 2902
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 2888
    :catchall_fe
    move-exception v0

    if-eqz v8, :cond_110

    .line 2889
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_10d

    .line 2890
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2891
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 2894
    :cond_10d
    :try_start_10d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_110
    .catch Ljava/lang/NullPointerException; {:try_start_10d .. :try_end_110} :catch_111

    .line 2905
    :cond_110
    :goto_110
    throw v0

    .line 2895
    :catch_111
    move-exception v1

    .line 2902
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    :cond_11a
    move v0, v6

    goto :goto_f1

    :cond_11c
    move v0, v6

    goto/16 :goto_87

    :cond_11f
    move v0, v6

    goto :goto_bc

    :cond_121
    move v0, v6

    goto/16 :goto_84
.end method

.method private static updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .registers 5
    .parameter "manager"
    .parameter "info"
    .parameter "application"
    .parameter "context"

    .prologue
    .line 836
    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 837
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_14

    .line 838
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 841
    :cond_14
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 843
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 844
    return-void
.end method

.method static updateAppsToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2776
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v9, v0

    .line 2777
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;->canContinue()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2836
    :cond_18
    return-void

    .line 2779
    :cond_19
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isClean()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2782
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_41

    .line 2783
    const-string v1, "DebugDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something ugly has happened on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_41
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getComponentName()Ljava/lang/String;

    move-result-object v13

    .line 2786
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_110

    .line 2787
    const/4 v15, 0x0

    .line 2788
    const-wide/16 v10, -0x1

    .line 2791
    :try_start_4d
    const-string v2, "menu_item"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_79
    .catchall {:try_start_4d .. :try_end_79} :catchall_170
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_79} :catch_112
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_79} :catch_141

    move-result-object v3

    .line 2800
    if-eqz v3, :cond_1c1

    .line 2801
    :try_start_7c
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1c7

    .line 2802
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2803
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2805
    :goto_8b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2814
    :goto_8e
    const-string v3, "parent_id"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2815
    const-string v3, "page"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2816
    const-string v3, "cell"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2821
    const-string v3, "title"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_186

    .line 2823
    const-string v3, "DebugDb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update app info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    const-string v3, "menu_item"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2826
    iput-wide v1, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2832
    :goto_10b
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V
    :try_end_10e
    .catchall {:try_start_7c .. :try_end_10e} :catchall_110

    goto/16 :goto_4

    .line 2834
    :catchall_110
    move-exception v1

    throw v1

    .line 2795
    :catch_112
    move-exception v1

    .line 2796
    :try_start_113
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catchall {:try_start_113 .. :try_end_12b} :catchall_170

    .line 2800
    if-eqz v15, :cond_1c1

    .line 2801
    :try_start_12d
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1c4

    .line 2802
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2803
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2805
    :goto_13c
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_13f
    .catchall {:try_start_12d .. :try_end_13f} :catchall_110

    goto/16 :goto_8e

    .line 2797
    :catch_141
    move-exception v1

    .line 2798
    :try_start_142
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catchall {:try_start_142 .. :try_end_15a} :catchall_170

    .line 2800
    if-eqz v15, :cond_1c1

    .line 2801
    :try_start_15c
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1bf

    .line 2802
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2803
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2805
    :goto_16b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8e

    .line 2800
    :catchall_170
    move-exception v1

    if-eqz v15, :cond_185

    .line 2801
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_182

    .line 2802
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2803
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 2805
    :cond_182
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_185
    throw v1

    .line 2828
    :cond_186
    const-string v1, "component_name"

    invoke-virtual {v14, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    const-string v1, "menu_item"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2830
    const-string v1, "DebugDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert app info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bd
    .catchall {:try_start_15c .. :try_end_1bd} :catchall_110

    goto/16 :goto_10b

    :cond_1bf
    move-wide v1, v10

    goto :goto_16b

    :cond_1c1
    move-wide v1, v10

    goto/16 :goto_8e

    :cond_1c4
    move-wide v1, v10

    goto/16 :goto_13c

    :cond_1c7
    move-wide v1, v10

    goto/16 :goto_8b
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2534
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2537
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2539
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2540
    const-string v0, "update"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2541
    return-void
.end method

.method private static updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .registers 22
    .parameter "resolver"
    .parameter "manager"

    .prologue
    .line 1226
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "title"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "intent"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "itemType"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1231
    .local v9, c:Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1232
    .local v10, idIndex:I
    const-string v2, "intent"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1233
    .local v11, intentIndex:I
    const-string v2, "itemType"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1234
    .local v13, itemTypeIndex:I
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1239
    .local v18, titleIndex:I
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_c7

    move-result v2

    if-eqz v2, :cond_c3

    .line 1241
    :try_start_40
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5f

    .line 1243
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 1247
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 1248
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.SHORTCUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1254
    :cond_5f
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1255
    .local v12, intentUri:Ljava/lang/String;
    if-eqz v12, :cond_3a

    .line 1256
    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    .line 1257
    .local v16, shortcut:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1258
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 1259
    .local v15, name:Landroid/content/ComponentName;
    if-eqz v15, :cond_3a

    .line 1260
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1261
    .local v8, activityInfo:Landroid/content/pm/ActivityInfo;
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1262
    .local v17, title:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v14

    .line 1264
    .local v14, label:Ljava/lang/String;
    if-eqz v17, :cond_99

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1265
    :cond_99
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1266
    .local v19, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_40 .. :try_end_be} :catchall_c7
    .catch Ljava/net/URISyntaxException; {:try_start_40 .. :try_end_be} :catch_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_be} :catch_cc

    goto/16 :goto_3a

    .line 1279
    .end local v8           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v12           #intentUri:Ljava/lang/String;
    .end local v14           #label:Ljava/lang/String;
    .end local v15           #name:Landroid/content/ComponentName;
    .end local v16           #shortcut:Landroid/content/Intent;
    .end local v17           #title:Ljava/lang/String;
    .end local v19           #values:Landroid/content/ContentValues;
    :catch_c0
    move-exception v2

    goto/16 :goto_3a

    .line 1286
    :cond_c3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1291
    return-void

    .line 1286
    :catchall_c7
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1281
    :catch_cc
    move-exception v2

    goto/16 :goto_3a
.end method


# virtual methods
.method addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2128
    return-void
.end method

.method addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z
    .registers 4
    .parameter "info"

    .prologue
    .line 2101
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 2102
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    const/4 v0, 0x1

    .line 2107
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    return-void
.end method

.method addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    return-void
.end method

.method declared-synchronized addPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 12
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    const-string v6, "Launcher.LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPackage. mApplicationsAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_36

    if-nez v6, :cond_25

    .line 438
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 415
    :cond_25
    :try_start_25
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v6, :cond_39

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 416
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_36

    goto :goto_23

    .line 412
    :catchall_36
    move-exception v6

    monitor-exit p0

    throw v6

    .line 420
    :cond_39
    if-eqz p2, :cond_23

    :try_start_3b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_23

    .line 421
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 422
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 424
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_23

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 426
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 428
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 429
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 430
    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 431
    invoke-static {v5, v1, v3, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_57

    .line 435
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_72
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_75
    .catchall {:try_start_3b .. :try_end_75} :catchall_36

    goto :goto_23
.end method

.method declared-synchronized addPackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .registers 12
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v4

    .line 375
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "Launcher.LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPackageBackground. mApplicationsAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_53

    .line 378
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 379
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 380
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 382
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 383
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 384
    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 385
    invoke-static {v5, v1, v3, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_50

    goto :goto_35

    .line 373
    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v1           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_50
    move-exception v6

    monitor-exit p0

    throw v6

    .line 388
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_53
    monitor-exit p0

    return-void
.end method

.method declared-synchronized addPackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .registers 8
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 392
    monitor-enter p0

    :try_start_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageUi. mApplicationsAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_36

    if-nez v2, :cond_25

    .line 408
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 395
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 396
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_36

    goto :goto_23

    .line 392
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2

    .line 400
    :cond_39
    :try_start_39
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v1

    .line 402
    .local v1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 406
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_36

    goto :goto_23
.end method

.method declared-synchronized dropTopApplicationCache()V
    .registers 3

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "dropTopApplicationCache"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 166
    monitor-exit p0

    return-void

    .line 164
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method findAllOccupiedCells([[ZIII)V
    .registers 11
    .parameter "occupied"
    .parameter "countX"
    .parameter "countY"
    .parameter "screen"

    .prologue
    .line 2037
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    .line 2038
    .local v2, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    if-eqz v2, :cond_17

    .line 2039
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2040
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9
    if-ge v4, v0, :cond_17

    .line 2041
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2040
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2045
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    .line 2046
    .local v1, desktopAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    if-eqz v1, :cond_2e

    .line 2047
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2048
    .restart local v0       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_20
    if-ge v4, v0, :cond_2e

    .line 2049
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2048
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 2053
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_2e
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    .line 2054
    .local v3, desktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    if-eqz v3, :cond_45

    .line 2055
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2056
    .restart local v0       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_37
    if-ge v4, v0, :cond_45

    .line 2057
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2056
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 2060
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_45
    return-void
.end method

.method findFolderById(J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .registers 5
    .parameter "id"

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method public getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 4
    .parameter "componentName"

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 2863
    .local v0, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object v1
.end method

.method getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 779
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 780
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_d

    .line 781
    const/4 v3, 0x0

    .line 792
    :goto_c
    return-object v3

    .line 784
    :cond_d
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 788
    .local v0, application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_2d

    .line 789
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_c

    .line 792
    :cond_2d
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_c
.end method

.method declared-synchronized getApplicationsAdapter(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .registers 5
    .parameter "launcher"

    .prologue
    .line 2082
    monitor-enter p0

    const/4 v1, 0x0

    .line 2083
    .local v1, currentLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_10

    .line 2084
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    .line 2086
    :cond_10
    if-ne v1, p1, :cond_1a

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1c

    :goto_18
    monitor-exit p0

    return-object v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_18

    .line 2082
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getFolderById(Landroid/content/Context;J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 2421
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2422
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=? and (itemType=? or itemType=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2433
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 2434
    const-string v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2436
    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2437
    const-string v4, "container"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2439
    const-string v5, "screen"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2440
    const-string v6, "cellX"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 2441
    const-string v7, "cellY"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2444
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 2453
    :goto_57
    if-eqz v2, :cond_7b

    .line 2454
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2455
    iput-wide p2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2456
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2457
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2458
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2459
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I
    :try_end_7b
    .catchall {:try_start_26 .. :try_end_7b} :catchall_91

    .line 2465
    :cond_7b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2468
    :goto_7e
    return-object v2

    .line 2446
    :pswitch_7f
    :try_start_7f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    goto :goto_57

    .line 2449
    :pswitch_86
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_91

    move-result-object v2

    goto :goto_57

    .line 2465
    :cond_8d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7e

    :catchall_91
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2444
    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_7f
        :pswitch_86
    .end packed-switch
.end method

.method public getMenuManagerFolderList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    .local v0, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_10

    .line 1865
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignTo(Ljava/util/ArrayList;ZZZ)V

    .line 1867
    :cond_10
    return-object v0
.end method

.method public getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    .registers 12
    .parameter "packageManager"
    .parameter "packageName"

    .prologue
    .line 340
    new-instance v6, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    .line 341
    .local v6, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;
    invoke-static {v6, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$202(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_11

    .line 369
    :cond_10
    :goto_10
    return-object v6

    .line 347
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 349
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/util/List;)Ljava/util/List;

    .line 351
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 352
    .local v3, count:I
    const/4 v2, 0x0

    .line 354
    .local v2, changed:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_24
    if-ge v4, v3, :cond_50

    .line 355
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 357
    .local v5, info:Landroid/content/pm/ResolveInfo;
    monitor-enter p0

    .line 358
    :try_start_31
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 360
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_4d

    .line 361
    if-eqz v1, :cond_43

    .line 362
    const/4 v2, 0x1

    .line 364
    :cond_43
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 360
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :catchall_4d
    move-exception v7

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v7

    .line 367
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_50
    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z
    invoke-static {v6, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$502(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Z)Z

    goto :goto_10
.end method

.method public getPkgModFlag()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    return v0
.end method

.method public getWorkspaceFolderList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1855
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1857
    .local v0, i:Ljava/lang/Long;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1859
    .end local v0           #i:Ljava/lang/Long;
    :cond_25
    return-object v2
.end method

.method initTopApp(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 12
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .line 2839
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v6, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2840
    .local v6, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2841
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2843
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2844
    .local v7, manager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2846
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_2e

    .line 2847
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2849
    .local v3, count:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    .line 2851
    .local v0, appSubInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    if-ge v4, v3, :cond_2e

    .line 2852
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2853
    .local v5, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v7, v0, v5, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 2858
    .end local v0           #appSubInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_2e
    return-object v1
.end method

.method isApplicationsLoaded()Z
    .registers 2

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    return v0
.end method

.method isDesktopLoaded()Z
    .registers 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method declared-synchronized loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z
    .registers 10
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"

    .prologue
    const/4 v3, 0x0

    .line 177
    monitor-enter p0

    const/4 v1, 0x0

    .line 178
    .local v1, currentLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_11

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    .line 181
    :cond_11
    if-eqz v1, :cond_15

    if-eq v1, p2, :cond_42

    .line 182
    :cond_15
    const-string v2, "Launcher.LauncherModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadApplications launcher mismatch. launcher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentLauncher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_97

    move v2, v3

    .line 205
    :goto_40
    monitor-exit p0

    return v2

    .line 187
    :cond_42
    :try_start_42
    const-string v2, "Launcher.LauncherModel"

    const-string v4, "loadApplications"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p1, :cond_8a

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v2, :cond_8a

    if-nez p3, :cond_8a

    .line 190
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v2, p2, v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 192
    const-string v2, "Launcher.LauncherModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadApplications: created new mApplicationsAdapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with old mApplications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 195
    goto :goto_40

    .line 198
    :cond_8a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()Z

    .line 200
    if-eqz p3, :cond_92

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    .line 204
    :cond_92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z
    :try_end_95
    .catchall {:try_start_42 .. :try_end_95} :catchall_97

    .line 205
    const/4 v2, 0x1

    goto :goto_40

    .line 177
    :catchall_97
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V
    .registers 13
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"

    .prologue
    .line 1189
    monitor-enter p0

    const/4 v7, 0x0

    .line 1190
    .local v7, currentLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_10

    .line 1191
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v7, v0

    .line 1193
    :cond_10
    if-eqz v7, :cond_14

    if-eq v7, p2, :cond_40

    .line 1194
    :cond_14
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaduserItems launcher mismatch. launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentLauncher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_66

    .line 1223
    :goto_3e
    monitor-exit p0

    return-void

    .line 1199
    :cond_40
    :try_start_40
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "loadUserItems"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    if-eqz p1, :cond_69

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1202
    if-eqz p4, :cond_55

    .line 1203
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    .line 1206
    :cond_55
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "loadUserItems: items already loaded, return existing elements"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_65
    .catchall {:try_start_40 .. :try_end_65} :catchall_66

    goto :goto_3e

    .line 1189
    :catchall_66
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1211
    :cond_69
    :try_start_69
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v1, :cond_7a

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForDesktopItemsLoader()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1215
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->access$1500(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;)Z

    move-result v1

    or-int/2addr p4, v1

    .line 1218
    :cond_7a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    .line 1219
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;ZZZ)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    .line 1221
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    const-string v3, "Desktop Items Loader"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_99
    .catchall {:try_start_69 .. :try_end_99} :catchall_66

    goto :goto_3e
.end method

.method public registerPkgChangeListener(Landroid/app/Application;)V
    .registers 5
    .parameter "app"

    .prologue
    .line 234
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_b

    .line 254
    :goto_a
    return-void

    .line 242
    :cond_b
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_a
.end method

.method removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2135
    return-void
.end method

.method removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2121
    return-void
.end method

.method removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2149
    return-void
.end method

.method declared-synchronized removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 16
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 494
    monitor-enter p0

    :try_start_1
    const-string v10, "Launcher.LauncherModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePackage. mApplicationsAdapter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_39

    if-nez v10, :cond_25

    .line 531
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 497
    :cond_25
    :try_start_25
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_3c

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 498
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    .line 499
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_39

    goto :goto_23

    .line 494
    :catchall_39
    move-exception v10

    monitor-exit p0

    throw v10

    .line 503
    :cond_3c
    if-eqz p2, :cond_23

    :try_start_3e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_23

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 506
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 509
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_50
    if-ge v5, v4, :cond_73

    .line 510
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 511
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 512
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 513
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 514
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 509
    :cond_70
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 519
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_73
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 520
    .local v2, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 521
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 522
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 523
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79

    .line 526
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_98
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_23

    .line 528
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_a1
    .catchall {:try_start_3e .. :try_end_a1} :catchall_39

    goto :goto_23
.end method

.method declared-synchronized removePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    .registers 16
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    .line 442
    monitor-enter p0

    :try_start_2
    const-string v10, "Launcher.LauncherModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePackageUi. mApplicationsAdapter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_3a

    if-nez v10, :cond_26

    .line 481
    :cond_24
    :goto_24
    monitor-exit p0

    return-object v9

    .line 445
    :cond_26
    :try_start_26
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 446
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    .line 447
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3a

    goto :goto_24

    .line 442
    :catchall_3a
    move-exception v10

    monitor-exit p0

    throw v10

    .line 451
    :cond_3d
    :try_start_3d
    new-instance v9, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {v9, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    .line 452
    .local v9, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;
    invoke-static {v9, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$202(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_24

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 457
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 459
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_54
    if-ge v5, v4, :cond_78

    .line 460
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 461
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 462
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 463
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 464
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 468
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_78
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 469
    .local v2, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 470
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 471
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 475
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_a1
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_24

    .line 477
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_ae
    .catchall {:try_start_3d .. :try_end_ae} :catchall_3a

    goto/16 :goto_24
.end method

.method removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 5
    .parameter "userFolderInfo"

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    return-void
.end method

.method removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .registers 4
    .parameter "folder"
    .parameter "info"

    .prologue
    .line 2322
    instance-of v0, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_a

    .line 2323
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 2327
    :goto_9
    return-void

    .line 2325
    .restart local p2
    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public declared-synchronized setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 5
    .parameter "launcher"

    .prologue
    .line 123
    monitor-enter p0

    const/4 v1, 0x0

    .line 124
    .local v1, currentLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_10

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    .line 126
    :cond_10
    if-eq v1, p1, :cond_20

    .line 127
    if-eqz v1, :cond_17

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindLocked()V

    .line 129
    :cond_17
    if-eqz p1, :cond_22

    .line 130
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_26

    .line 134
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    .line 132
    :cond_22
    const/4 v2, 0x0

    :try_start_23
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_26

    goto :goto_20

    .line 123
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setMenuManagerUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V
    .registers 2
    .parameter "aModel"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 658
    return-void
.end method

.method declared-synchronized syncPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 7
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 620
    monitor-enter p0

    :try_start_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncPackage. mApplicationsAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_36

    if-nez v1, :cond_25

    .line 635
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 623
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 624
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_36

    goto :goto_23

    .line 620
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1

    .line 628
    :cond_39
    if-eqz p2, :cond_23

    :try_start_3b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 629
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 632
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_36

    goto :goto_23
.end method

.method public declared-synchronized unbind(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 7
    .parameter "launcher"

    .prologue
    .line 1907
    monitor-enter p0

    const/4 v1, 0x0

    .line 1908
    .local v1, currentLauncher:Lcom/sec/android/app/twlauncher/Launcher;
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_10

    .line 1909
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    .line 1911
    :cond_10
    if-eqz v1, :cond_14

    if-eq v1, p1, :cond_40

    .line 1912
    :cond_14
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind launcher mismatch. launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentLauncher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_47

    .line 1918
    :goto_3e
    monitor-exit p0

    return-void

    .line 1916
    :cond_40
    :try_start_40
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindLocked()V

    .line 1917
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_47

    goto :goto_3e

    .line 1907
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized updatePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 14
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 571
    monitor-enter p0

    :try_start_1
    const-string v8, "Launcher.LauncherModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addPackage. mApplicationsAdapter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_36

    if-nez v8, :cond_25

    .line 606
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 574
    :cond_25
    :try_start_25
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v8, :cond_39

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 575
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_36

    goto :goto_23

    .line 571
    :catchall_36
    move-exception v8

    monitor-exit p0

    throw v8

    .line 579
    :cond_39
    if-eqz p2, :cond_23

    :try_start_3b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_23

    .line 580
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 581
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 583
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {v7, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 584
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 586
    .local v3, count:I
    const/4 v2, 0x0

    .line 588
    .local v2, changed:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_51
    if-ge v4, v3, :cond_70

    .line 589
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 590
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v8, v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 592
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v1, :cond_6d

    .line 593
    invoke-direct {p0, v7, v5, v1, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 594
    const/4 v2, 0x1

    .line 588
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 598
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_70
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 599
    const/4 v2, 0x1

    .line 601
    :cond_77
    if-eqz v2, :cond_23

    .line 603
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_7c
    .catchall {:try_start_3b .. :try_end_7c} :catchall_36

    goto :goto_23
.end method

.method declared-synchronized updatePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .registers 9
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 536
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 538
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v1, :cond_2c

    .line 539
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mResolveInfos:Ljava/util/List;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 540
    .local v3, info:Landroid/content/pm/ResolveInfo;
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mAppInfos:Ljava/util/List;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 541
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_29

    .line 542
    invoke-direct {p0, v4, v3, v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    .line 538
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 545
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_2c
    monitor-exit p0

    return-void

    .line 534
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_2e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized updatePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .registers 8
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 549
    monitor-enter p0

    :try_start_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePackageUi. mApplicationsAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_36

    if-nez v2, :cond_25

    .line 567
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 552
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 553
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_36

    goto :goto_23

    .line 549
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2

    .line 557
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 559
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mChanged:Z
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Z

    move-result v1

    .line 560
    .local v1, changed:Z
    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->mPackageName:Ljava/lang/String;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$200(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 561
    const/4 v1, 0x1

    .line 563
    :cond_4a
    if-eqz v1, :cond_23

    .line 565
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_36

    goto :goto_23
.end method
