.class Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareApp.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shareapp/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;
    }
.end annotation


# instance fields
.field mAlphaComparator:Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;

.field private mAppFilter:Landroid/widget/Filter;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListCheck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterLock:Ljava/lang/Object;

.field private mFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v5, 0x0

    .line 487
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 480
    new-instance v3, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;

    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct {v3, v4}, Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    iput-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAlphaComparator:Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;

    .line 482
    new-instance v3, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;

    invoke-direct {v3, p0, v5}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter$AppFilter;-><init>(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;Lcom/sec/android/app/shareapp/ShareApp$1;)V

    iput-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppFilter:Landroid/widget/Filter;

    .line 483
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    .line 484
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    .line 485
    iput-object v5, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    .line 488
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 489
    .local v2, size:I
    iput-object p3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 490
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    .line 491
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 492
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 493
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_52
    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->reverseGenerateList()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->generateFilterListLocked(Ljava/util/List;)V

    return-void
.end method

.method private addFilterListLocked(ILandroid/content/pm/ApplicationInfo;)V
    .registers 9
    .parameter "newIdx"
    .parameter "info"

    .prologue
    .line 672
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 674
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 675
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_1b
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 678
    :try_start_1e
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 679
    .local v1, label:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 680
    .local v0, appName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_30

    .line 681
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    :cond_30
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit v3

    .line 685
    return-void

    .line 684
    .end local v0           #appName:Ljava/lang/CharSequence;
    .end local v1           #label:Ljava/lang/String;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private addLocalEntry(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 649
    invoke-direct {p0, p1}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->shouldBeInList(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 650
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAlphaComparator:Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 651
    .local v0, newIdx:I
    if-ltz v0, :cond_12

    .line 659
    .end local v0           #newIdx:I
    :cond_11
    :goto_11
    return v1

    .line 654
    .restart local v0       #newIdx:I
    :cond_12
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 655
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->addFilterListLocked(ILandroid/content/pm/ApplicationInfo;)V

    .line 656
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private generateFilterListLocked(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    .line 724
    iget-object v5, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    monitor-enter v5

    .line 725
    :try_start_a
    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 726
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 727
    .local v3, label:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 728
    .local v0, appName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2e

    .line 729
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    :cond_2e
    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 733
    .end local v0           #appName:Ljava/lang/CharSequence;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #label:Ljava/lang/String;
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3a

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3d
    :try_start_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    .line 734
    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->sortAppList(Ljava/util/List;)V

    .line 735
    return-void
.end method

.method private removeFilterListLocked(Ljava/lang/String;)Z
    .registers 7
    .parameter "removePkg"

    .prologue
    .line 688
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 690
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_30

    .line 691
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 692
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 693
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 694
    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    monitor-enter v4

    .line 695
    :try_start_22
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    monitor-exit v4

    .line 697
    const/4 v3, 0x1

    .line 700
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :goto_29
    return v3

    .line 696
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :catchall_2a
    move-exception v3

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v3

    .line 690
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 700
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_30
    const/4 v3, 0x0

    goto :goto_29
.end method

.method private removePkgBase(Ljava/lang/String;)V
    .registers 6
    .parameter "pkgName"

    .prologue
    .line 638
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 639
    .local v2, imax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_1e

    .line 640
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 641
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 642
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 646
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1e
    return-void

    .line 639
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private reverseGenerateList()V
    .registers 5

    .prologue
    .line 738
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_9
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/shareapp/ShareApp;->getFilteredApps(Ljava/util/List;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->generateFilterListLocked(Ljava/util/List;)V

    .line 739
    invoke-direct {p0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->sortListInner()V

    .line 740
    return-void

    .line 738
    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private shouldBeInList(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 663
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    .line 668
    :cond_7
    :goto_7
    return v0

    .line 665
    :cond_8
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_7

    .line 668
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private sortListInner()V
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->sortAppList(Ljava/util/List;)V

    .line 744
    return-void
.end method


# virtual methods
.method public addToList(Ljava/lang/String;)V
    .registers 7
    .parameter "pkgName"

    .prologue
    .line 583
    if-nez p1, :cond_3

    .line 604
    :cond_2
    :goto_2
    return-void

    .line 587
    :cond_3
    const/4 v1, 0x0

    .line 589
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_e} :catch_2a

    move-result-object v1

    .line 595
    if-nez v1, :cond_44

    .line 596
    const-string v2, "ShareApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null ApplicationInfo for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 590
    :catch_2a
    move-exception v0

    .line 591
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ShareApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring non-existent package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 600
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_44
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-direct {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->addLocalEntry(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public getCheckedApps()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v8, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 552
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, checkedPkg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 554
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 555
    .local v7, pkgName:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 556
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 559
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_66

    .line 560
    iget-object v8, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 561
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 562
    .local v6, pkg:Ljava/lang/String;
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 563
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 570
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v6           #pkg:Ljava/lang/String;
    :cond_66
    return-object v5
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 513
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 748
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_b

    .line 749
    const/4 v2, 0x0

    .line 780
    :goto_a
    return-object v2

    .line 753
    :cond_b
    if-nez p2, :cond_94

    .line 754
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/sec/android/app/shareapp/ShareApp;->access$1100(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v4, 0x7f03

    invoke-virtual {v2, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 756
    new-instance v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;

    invoke-direct {v1}, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;-><init>()V

    .line 757
    .local v1, holder:Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;
    const v2, 0x7f050001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 758
    const/high16 v2, 0x7f05

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 759
    const v2, 0x7f050002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appCheck:Landroid/widget/CheckBox;

    .line 766
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 772
    :goto_41
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 773
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_91

    .line 774
    iget-object v2, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v2, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    iget-object v4, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appCheck:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_83
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 777
    iget-object v2, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppCheckChangeListener:Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;
    invoke-static {v3}, Lcom/sec/android/app/shareapp/ShareApp;->access$1200(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_91
    move-object v2, p2

    .line 780
    goto/16 :goto_a

    .line 768
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #holder:Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;
    :cond_94
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;

    .restart local v1       #holder:Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;
    goto :goto_41

    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_9b
    move v2, v3

    .line 776
    goto :goto_83
.end method

.method public isCheckedOverOneApp()Z
    .registers 5

    .prologue
    .line 535
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 536
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 537
    .local v0, found:Z
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 539
    .local v2, pkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 540
    const/4 v0, 0x1

    .line 545
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_26
    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .registers 6
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x0

    .line 522
    if-nez p1, :cond_4

    .line 530
    :cond_3
    :goto_3
    return v2

    .line 525
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 526
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 527
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public removeFromList(Ljava/util/List;)V
    .registers 6
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
    .line 607
    .local p1, pkgNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 622
    :cond_2
    :goto_2
    return-void

    .line 610
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 615
    .local v2, pkg:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->removePkgBase(Ljava/lang/String;)V

    .line 616
    invoke-direct {p0, v2}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->removeFilterListLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 617
    const/4 v0, 0x1

    goto :goto_e

    .line 620
    .end local v2           #pkg:Ljava/lang/String;
    :cond_25
    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public setAppCheck(IZ)V
    .registers 6
    .parameter "position"
    .parameter "check"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 575
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppListCheck:Ljava/util/Map;

    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_1f
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 499
    return-void
.end method

.method public sortAppList(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->mAlphaComparator:Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 580
    return-void
.end method

.method public updatePackage(Ljava/lang/String;)V
    .registers 6
    .parameter "pkgName"

    .prologue
    .line 625
    const/4 v1, 0x0

    .line 627
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/sec/android/app/shareapp/ShareApp;->access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_13

    move-result-object v1

    .line 633
    if-eqz v1, :cond_12

    .line 634
    invoke-virtual {p0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->notifyDataSetChanged()V

    .line 635
    :cond_12
    :goto_12
    return-void

    .line 629
    :catch_13
    move-exception v0

    .line 630
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method
