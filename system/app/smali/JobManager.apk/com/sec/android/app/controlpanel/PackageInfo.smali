.class public Lcom/sec/android/app/controlpanel/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/PackageInfo$1;,
        Lcom/sec/android/app/controlpanel/PackageInfo$ListUpdateHandler;,
        Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;,
        Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/PackageInfo;


# instance fields
.field private killMethod:Ljava/lang/reflect/Method;

.field private killMethod_force:Ljava/lang/reflect/Method;

.field private listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

.field private mAm:Landroid/app/ActivityManager;

.field public mApplicationListUpdateHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field mRunningAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

.field private m_bUpdateRunningApplicationInfoOnProgress:Z

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfo$1;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->m_bUpdateRunningApplicationInfoOnProgress:Z

    .line 66
    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mRunningAppList:Ljava/util/List;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mApplicationListUpdateHandler:Landroid/os/Handler;

    .line 72
    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->toast:Landroid/widget/Toast;

    .line 85
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/controlpanel/PackageInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->m_bUpdateRunningApplicationInfoOnProgress:Z

    return p1
.end method

.method private computeSizeOfPackage(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Z
    .registers 9
    .parameter "packageInfoItem"

    .prologue
    const/4 v3, 0x0

    .line 119
    if-nez p1, :cond_4

    .line 130
    :goto_3
    return v3

    .line 121
    :cond_4
    monitor-enter p1

    .line 122
    :try_start_5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 123
    .local v0, count:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    invoke-virtual {v4, v2, v0}, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1e

    .line 126
    const-wide/16 v4, 0x1f40

    :try_start_16
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1e
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_21

    move-result v3

    :try_start_1c
    monitor-exit p1

    goto :goto_3

    .line 132
    .end local v0           #count:Ljava/util/concurrent/CountDownLatch;
    .end local v2           #packageName:Ljava/lang/String;
    :catchall_1e
    move-exception v3

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v3

    .line 127
    .restart local v0       #count:Ljava/util/concurrent/CountDownLatch;
    .restart local v2       #packageName:Ljava/lang/String;
    :catch_21
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1e

    goto :goto_3
.end method

.method private getInstalledAppList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 342
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 343
    .local v0, entry:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 346
    .end local v0           #entry:Landroid/content/pm/ApplicationInfo;
    :cond_2d
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .registers 2
    .parameter "context"

    .prologue
    .line 78
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/PackageInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 81
    :cond_b
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method private getKillPackageMethod(Z)Ljava/lang/reflect/Method;
    .registers 7
    .parameter

    .prologue
    .line 736
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 737
    const/16 v1, 0x8

    if-ge v0, v1, :cond_22

    .line 739
    :try_start_6
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "restartPackage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_15} :catch_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_15} :catch_1d

    move-result-object v0

    .line 763
    :goto_16
    return-object v0

    .line 740
    :catch_17
    move-exception v0

    .line 741
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 763
    :goto_1b
    const/4 v0, 0x0

    goto :goto_16

    .line 742
    :catch_1d
    move-exception v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 752
    :cond_22
    if-eqz p1, :cond_35

    .line 753
    :try_start_24
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "forceStopPackage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_16

    .line 755
    :cond_35
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "killBackgroundProcesses"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_44} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_44} :catch_4b

    move-result-object v0

    goto :goto_16

    .line 757
    :catch_46
    move-exception v0

    .line 758
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1b

    .line 759
    :catch_4b
    move-exception v0

    .line 760
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b
.end method

.method private getLaunchers()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 473
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 474
    .local v3, r:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 477
    .end local v3           #r:Landroid/content/pm/ResolveInfo;
    :cond_41
    return-object v4
.end method

.method private getRunningAppProcesses()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v7, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 444
    .local v0, applicaitonInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Lcom/sec/android/app/controlpanel/Utils;->getBootTime()J

    move-result-wide v1

    .line 445
    .local v1, bootTime:J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 446
    .local v5, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_20
    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_13

    .line 450
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v8

    iget-object v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v6

    .line 452
    .local v6, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v8}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setPid(I)V

    .line 453
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Lcom/sec/android/app/controlpanel/Utils;->getProcessStartTime(I)J

    move-result-wide v8

    add-long/2addr v8, v1

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setProcessStartTime(J)V

    .line 454
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 457
    .end local v3           #i:I
    .end local v5           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_48
    return-object v7
.end method

.method private getRunningServices()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v2, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 420
    .local v4, serviceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 421
    .local v3, s:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v5, :cond_11

    .line 424
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v1

    .line 426
    .local v1, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setService(Z)V

    .line 427
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 430
    .end local v1           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v3           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_39
    return-object v2
.end method

.method private getRunningTasks()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 359
    .local v4, runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 360
    .local v0, i:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v5, :cond_11

    .line 362
    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 365
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v2

    .line 367
    .local v2, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 372
    .end local v2           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_47
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v2

    .line 374
    .restart local v2       #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v2

    .line 377
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 381
    .end local v0           #i:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_6e
    return-object v3
.end method

.method private getSamsungWidgets()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 494
    .local v3, r:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 497
    .end local v3           #r:Landroid/content/pm/ResolveInfo;
    :cond_41
    return-object v4
.end method

.method private getWidgets()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 510
    .local v2, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 511
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 512
    .local v3, r:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v5, :cond_36

    .line 513
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_36
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_13

    .line 516
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v5

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 519
    .end local v3           #r:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4e
    return-object v4
.end method

.method private isUsingLiveWallpaper(Ljava/lang/String;)Z
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 530
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const-string v5, "wallpaper"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 531
    .local v2, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 532
    .local v1, wi:Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1f

    move-result v4

    if-eqz v4, :cond_1e

    .line 533
    const/4 v3, 0x1

    .line 539
    .end local v1           #wi:Landroid/app/WallpaperInfo;
    .end local v2           #wp:Landroid/app/WallpaperManager;
    :cond_1e
    :goto_1e
    return v3

    .line 537
    :catch_1f
    move-exception v0

    .line 538
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PackageInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLiveWallpapers() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method


# virtual methods
.method public getInstallAppPackageList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstalledAppList()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, installedPackgeInfoItems:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 146
    .local v2, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemAppUpdate()Z

    move-result v4

    if-nez v4, :cond_d

    .line 151
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 154
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_2b
    return-object v3
.end method

.method public getRunningAppPackageList()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v9, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v3, existCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v10, runnningPackageInfoItems:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 269
    .local v11, runnningProcess:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningTasks()Ljava/util/List;

    move-result-object v13

    .line 270
    .local v13, runnningTask:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningServices()Ljava/util/List;

    move-result-object v12

    .line 271
    .local v12, runnningService:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getLaunchers()Ljava/util/List;

    move-result-object v7

    .line 272
    .local v7, lunchers:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 273
    .local v8, process:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setTask(Z)V

    .line 274
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setService(Z)V

    goto :goto_23

    .line 276
    .end local v8           #process:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3e
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 277
    .local v15, task:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v15}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_42

    .line 278
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setTask(Z)V

    .line 279
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v15}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 283
    .end local v15           #task:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_6c
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_70
    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 284
    .local v14, service:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v14}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_70

    .line 285
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setService(Z)V

    .line 286
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v14}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 290
    .end local v14           #service:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_9c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a0
    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 291
    .local v6, luncher:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a0

    .line 292
    invoke-interface {v10, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 295
    .end local v6           #luncher:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_b6
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ba
    :goto_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1ca

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 296
    .local v5, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v5, :cond_ba

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v16

    if-nez v16, :cond_e2

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v16

    if-eqz v16, :cond_ba

    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v16

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->isMustBeShownPkg(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_ba

    .line 299
    :cond_e2
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v16

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->isMustBeShownPkg(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_108

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v16

    if-nez v16, :cond_108

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v16

    if-eqz v16, :cond_108

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemApp()Z

    move-result v16

    if-nez v16, :cond_ba

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemAppUpdate()Z

    move-result v16

    if-nez v16, :cond_ba

    .line 304
    :cond_108
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v16

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->isHiddenPkg(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_ba

    .line 308
    :try_start_116
    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_156

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v19

    aput v19, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setMemUsage(J)V

    .line 312
    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_14f} :catch_1bd

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_ba

    .line 318
    :cond_156
    :goto_156
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getRunningAppPackageList(), pid:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", task:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", service:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", memUsage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", cpuUsage:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", packageName:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ba

    .line 315
    :catch_1bd
    move-exception v2

    .line 316
    .local v2, e:Ljava/lang/Exception;
    const-string v16, "PackageInfo"

    const-string v17, "getTotalPss Exception "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_156

    .line 328
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1ca
    return-object v9
.end method

.method public getRunningApplicationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mRunningAppList:Ljava/util/List;

    return-object v0
.end method

.method public isThereAppCanBeKilled(Ljava/util/List;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 768
    .local v1, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 769
    const/4 v2, 0x1

    .line 772
    .end local v1           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public isUpdateRunningApplicationListOnProgress()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->m_bUpdateRunningApplicationInfoOnProgress:Z

    return v0
.end method

.method public killAll(I)V
    .registers 29
    .parameter "level"

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 545
    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 546
    .local v13, processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v20

    .line 547
    .local v20, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v18

    .line 548
    .local v18, serviceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v8, 0x1

    .line 549
    .local v8, killLevel:I
    const-string v22, "PackageInfo"

    const-string v23, "----------------------------"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v22, "PackageInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Kill ALL!!! Level:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v22, "PackageInfo"

    const-string v23, "----------------------------"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 553
    .local v15, runningTasks:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 555
    .local v14, runningServices:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getSamsungWidgets()Ljava/util/List;

    move-result-object v17

    .line 557
    .local v17, samsungWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getWidgets()Ljava/util/List;

    move-result-object v21

    .line 559
    .local v21, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getLaunchers()Ljava/util/List;

    move-result-object v9

    .line 561
    .local v9, launchers:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_67
    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 562
    .local v19, t:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    move/from16 v22, v0

    if-lez v22, :cond_67

    .line 563
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 567
    .end local v19           #t:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_8b
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 568
    .local v16, s:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 570
    .end local v16           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_ab
    const/4 v4, 0x0

    .line 571
    .local v4, count:I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_b0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 572
    .local v7, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v22, "PackageInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " +processName : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v3, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_fe
    if-ge v6, v10, :cond_b0

    aget-object v12, v3, v6

    .line 576
    .local v12, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v11

    .line 578
    .local v11, packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    const/4 v8, 0x0

    .line 582
    const-string v22, "PackageInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " | +pkgName : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "[killLevel:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_31e

    .line 593
    :pswitch_146
    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_328

    .line 607
    :goto_14d
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15b

    .line 608
    const/4 v8, 0x2

    .line 609
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 2 check : runningTask!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_15b
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16b

    .line 612
    const/4 v8, 0x2

    .line 613
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 2 check : samsungWidget!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_16b
    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17b

    .line 616
    const/4 v8, 0x2

    .line 617
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 2 check : widget!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_17b
    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_189

    .line 620
    const/4 v8, 0x2

    .line 621
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 2 check : launcher!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_189
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->isIntentActionAfterKilledPkg(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_19d

    .line 624
    const/4 v8, 0x2

    .line 625
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 2 IntentActionAfterKilledPkg!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_19d
    invoke-virtual {v11}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemApp()Z

    move-result v22

    if-nez v22, :cond_1a9

    invoke-virtual {v11}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemAppUpdate()Z

    move-result v22

    if-eqz v22, :cond_1a9

    .line 632
    :cond_1a9
    invoke-virtual {v14, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b7

    .line 633
    const/4 v8, 0x2

    .line 634
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 2 check : runningService!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1b7
    const-string v22, "android.process.acore"

    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1cb

    .line 640
    const/4 v8, 0x3

    .line 641
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 3 check : acore process!!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_1cb
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/app/controlpanel/PackageInfo;->isUsingLiveWallpaper(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1db

    .line 644
    const/4 v8, 0x3

    .line 645
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 3 check : using LiveWallpapaer!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_1db
    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v22, v0

    const/16 v23, 0x12c

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_204

    .line 651
    const/4 v8, 0x4

    .line 652
    const-string v22, "PackageInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " | \\ level 4 check : item.importance:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_204
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v22

    iget-object v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->isMemoryClearHiddennPkg(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21a

    .line 658
    const/4 v8, 0x5

    .line 659
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 5 check : ProcessName is isMemoryClearHiddennPkg!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_21a
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->isMemoryClearHiddennPkg(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_22e

    .line 662
    const/4 v8, 0x5

    .line 663
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 5 check : PackageName is isMemoryClearHiddennPkg!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_22e
    invoke-static {}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->getInstance()Lcom/sec/android/app/controlpanel/SpecialPackageList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/sec/android/app/controlpanel/SpecialPackageList;->isHiddenPkg(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_242

    .line 666
    const/4 v8, 0x5

    .line 667
    const-string v22, "PackageInfo"

    const-string v23, " | \\ level 5 check : PackageName is hiddenPackage!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_242
    move/from16 v0, p1

    if-gt v8, v0, :cond_26b

    .line 672
    const-string v22, "PackageInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " |  \\Killed!! "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;Z)V

    .line 674
    add-int/lit8 v4, v4, 0x1

    .line 574
    :cond_26b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_fe

    .line 595
    :sswitch_26f
    const/4 v8, 0x1

    .line 596
    const-string v22, "PackageInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " | \\ level 1 check : item.importance:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d

    .line 599
    :sswitch_28e
    const/4 v8, 0x1

    .line 600
    const-string v22, "PackageInfo"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " | \\ level 1 check : item.importance:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d

    .line 680
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10           #len$:I
    .end local v11           #packageInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_2ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->toast:Landroid/widget/Toast;

    move-object/from16 v22, v0

    if-nez v22, :cond_2f2

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f05004c

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/controlpanel/PackageInfo;->toast:Landroid/widget/Toast;

    .line 688
    :goto_2e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->toast:Landroid/widget/Toast;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 694
    return-void

    .line 686
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->toast:Landroid/widget/Toast;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f05004c

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e8

    .line 583
    nop

    :pswitch_data_31e
    .packed-switch 0x0
        :pswitch_146
        :pswitch_146
        :pswitch_146
    .end packed-switch

    .line 593
    :sswitch_data_328
    .sparse-switch
        0x190 -> :sswitch_26f
        0x1f4 -> :sswitch_28e
    .end sparse-switch
.end method

.method public killPackage(Ljava/lang/String;Z)V
    .registers 9
    .parameter "pkgName"
    .parameter "bForce"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 703
    const/4 v1, 0x0

    .line 705
    .local v1, curMethod:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_d

    .line 706
    invoke-direct {p0, v4}, Lcom/sec/android/app/controlpanel/PackageInfo;->getKillPackageMethod(Z)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    .line 709
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod_force:Ljava/lang/reflect/Method;

    if-nez v3, :cond_17

    .line 710
    invoke-direct {p0, v5}, Lcom/sec/android/app/controlpanel/PackageInfo;->getKillPackageMethod(Z)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod_force:Ljava/lang/reflect/Method;

    .line 713
    :cond_17
    if-eqz p2, :cond_31

    .line 714
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod_force:Ljava/lang/reflect/Method;

    .line 720
    :goto_1b
    if-eqz v1, :cond_30

    .line 721
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 724
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    :try_start_28
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_30} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_30} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_30} :catch_3e

    .line 733
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_30
    :goto_30
    return-void

    .line 716
    :cond_31
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    goto :goto_1b

    .line 725
    .restart local v0       #am:Landroid/app/ActivityManager;
    :catch_34
    move-exception v2

    .line 726
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30

    .line 727
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_39
    move-exception v2

    .line 728
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    .line 729
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v2

    .line 730
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_30
.end method

.method public loadIcon(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 784
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1d

    .line 786
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 788
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 793
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1d
    :goto_1d
    return-void

    .line 789
    :catch_1e
    move-exception v1

    .line 790
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageInfo"

    const-string v3, "loadLabel() NameNotFoundException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public loadLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 796
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 798
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 800
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 805
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1b
    :goto_1b
    return-void

    .line 801
    :catch_1c
    move-exception v1

    .line 802
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageInfo"

    const-string v3, "loadLabel() NameNotFoundException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public loadSize(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 808
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSizeComputed()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 809
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->computeSizeOfPackage(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 812
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-boolean v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->succeeded:Z

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    if-eqz v4, :cond_2f

    .line 813
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v0, v4, Landroid/content/pm/PackageStats;->codeSize:J

    .line 814
    .local v0, code:J
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v2, v4, Landroid/content/pm/PackageStats;->dataSize:J

    .line 819
    .local v2, data:J
    :goto_24
    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSize(J)V

    .line 820
    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSize(J)V

    .line 821
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSizeComputed(Z)V

    .line 824
    .end local v0           #code:J
    .end local v2           #data:J
    :cond_2e
    return-void

    .line 816
    :cond_2f
    const-wide/16 v0, -0x1

    .line 817
    .restart local v0       #code:J
    const-wide/16 v2, -0x1

    .restart local v2       #data:J
    goto :goto_24
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/Observer;

    .line 95
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_6

    .line 97
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_16
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method public setRecentTaskIntentInfo()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 387
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    const/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    .line 388
    .local v6, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x0

    .line 389
    .local v3, order:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 390
    .local v1, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 391
    .local v2, intent:Landroid/content/Intent;
    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_2a

    .line 392
    iget-object v8, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 394
    :cond_2a
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, -0x200001

    and-int/2addr v8, v9

    const/high16 v9, 0x1000

    or-int/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 397
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_e

    .line 401
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/controlpanel/PackageInfoItemFactory;->getPackageInfoItem(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v5

    .line 403
    .local v5, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v5, v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setIntent(Landroid/content/Intent;)V

    .line 404
    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .local v4, order:I
    invoke-virtual {v5, v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setRecentTaskOrder(I)V

    move v3, v4

    .end local v4           #order:I
    .restart local v3       #order:I
    goto :goto_e

    .line 407
    .end local v1           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_5c
    return-void
.end method

.method public setRunningApplicationList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, runnningPkgList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mRunningAppList:Ljava/util/List;

    .line 175
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 777
    return-void
.end method

.method public updateRunningApplicationListInfo()V
    .registers 6

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    if-nez v1, :cond_1b

    .line 191
    new-instance v1, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V

    iput-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->start()V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    monitor-enter v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_28

    .line 196
    :try_start_13
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 197
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_25

    .line 200
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    monitor-enter v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_28

    .line 201
    :try_start_1e
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->listUpdateThread:Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfo$ApplicationListUpdateThread;->updateList()V

    .line 202
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2d

    .line 207
    :goto_24
    return-void

    .line 197
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    .line 204
    :catch_28
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 202
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_30} :catch_28
.end method
