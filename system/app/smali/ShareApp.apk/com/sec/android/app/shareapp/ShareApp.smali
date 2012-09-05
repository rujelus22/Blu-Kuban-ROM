.class public Lcom/sec/android/app/shareapp/ShareApp;
.super Landroid/app/Activity;
.source "ShareApp.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;,
        Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;,
        Lcom/sec/android/app/shareapp/ShareApp$AlphaComparator;,
        Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;,
        Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;
    }
.end annotation


# instance fields
.field private mAppCheckChangeListener:Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;

.field private mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

.field protected mDoneButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field private mListEmptyView:Landroid/view/ViewGroup;

.field private mListEmptyViewImage:Landroid/widget/ImageView;

.field private mListEmptyViewText:Landroid/widget/TextView;

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;

.field private mSearch:Landroid/widget/EditText;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    new-instance v0, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;-><init>(Lcom/sec/android/app/shareapp/ShareApp;Lcom/sec/android/app/shareapp/ShareApp$1;)V

    iput-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppCheckChangeListener:Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;

    .line 101
    new-instance v0, Lcom/sec/android/app/shareapp/ShareApp$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shareapp/ShareApp$1;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    iput-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 855
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppCheckChangeListener:Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/shareapp/ShareApp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/shareapp/ShareApp;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/shareapp/ShareApp;->closeTextKeypad()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/shareapp/ShareApp;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mReceiver:Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyViewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyViewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private closeTextKeypad()V
    .registers 4

    .prologue
    .line 368
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 369
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 373
    return-void
.end method

.method private static matchFilter(ZLjava/util/Map;Ljava/lang/String;)Z
    .registers 5
    .parameter "filter"
    .parameter
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, filterMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 461
    .local v0, add:Z
    if-eqz p0, :cond_c

    .line 462
    if-eqz p1, :cond_b

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 463
    :cond_b
    const/4 v0, 0x0

    .line 466
    :cond_c
    return v0
.end method

.method private updatePackageList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "actionStr"
    .parameter "pkgName"

    .prologue
    .line 446
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->addToList(Ljava/lang/String;)V

    .line 457
    :cond_15
    :goto_15
    return-void

    .line 450
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->updatePackage(Ljava/lang/String;)V

    goto :goto_15

    .line 452
    :cond_1c
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v0, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->removeFromList(Ljava/util/List;)V

    goto :goto_15
.end method


# virtual methods
.method getFilteredApps(Ljava/util/List;ZLjava/util/Map;)Ljava/util/List;
    .registers 10
    .parameter
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, pAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p3, filterMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez p1, :cond_8

    .line 442
    :cond_7
    return-object v3

    .line 423
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 424
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 425
    .local v1, flag:Z
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3b

    .line 427
    const/4 v1, 0x1

    .line 433
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/sec/android/app/shareapp/ShareApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 434
    const/4 v1, 0x0

    .line 436
    :cond_2d
    if-eqz v1, :cond_c

    .line 437
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p3, v4}, Lcom/sec/android/app/shareapp/ShareApp;->matchFilter(ZLjava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 438
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 428
    :cond_3b
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_20

    .line 430
    const/4 v1, 0x1

    goto :goto_20
.end method

.method getInstalledApps()Ljava/util/List;
    .registers 8
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
    .line 389
    const-string v5, "ShareApp"

    const-string v6, "getInstalledApps() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v5, p0, Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 391
    .local v4, installedAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v5, "ShareApp"

    const-string v6, "PackageManager.getInstalledApplications() returned"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-nez v4, :cond_1d

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    :cond_1c
    return-object v1

    .line 395
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 397
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 398
    .local v2, flag:Z
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4d

    .line 400
    const/4 v2, 0x1

    .line 406
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/sec/android/app/shareapp/ShareApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 407
    const/4 v2, 0x0

    .line 409
    :cond_47
    if-eqz v2, :cond_26

    .line 410
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 401
    :cond_4d
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3a

    .line 403
    const/4 v2, 0x1

    goto :goto_3a
.end method

.method loadAppLists()V
    .registers 4

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/sec/android/app/shareapp/ShareApp;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_20

    .line 379
    new-instance v1, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;-><init>(Lcom/sec/android/app/shareapp/ShareApp;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    #calls: Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->generateFilterListLocked(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->access$900(Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;Ljava/util/List;)V

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    :goto_1f
    return-void

    .line 383
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->setApps(Ljava/util/List;)V

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_1f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->setContentView(I)V

    .line 124
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->setTitle(I)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/shareapp/ShareApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mPm:Landroid/content/pm/PackageManager;

    .line 127
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    new-instance v1, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;-><init>(Lcom/sec/android/app/shareapp/ShareApp;Lcom/sec/android/app/shareapp/ShareApp$1;)V

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mReceiver:Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;

    .line 130
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mSearch:Landroid/widget/EditText;

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mSearch:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/shareapp/ShareApp$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/shareapp/ShareApp$2;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mSearch:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyView:Landroid/view/ViewGroup;

    .line 157
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyViewText:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyViewImage:Landroid/widget/ImageView;

    .line 160
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mDoneButton:Landroid/widget/Button;

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mDoneButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/shareapp/ShareApp$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/shareapp/ShareApp$3;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 278
    .local v0, cancel:Landroid/widget/Button;
    new-instance v1, Lcom/sec/android/app/shareapp/ShareApp$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/shareapp/ShareApp$4;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "KeyCode"
    .parameter "event"

    .prologue
    .line 345
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x42

    if-ne p2, v0, :cond_d

    .line 346
    invoke-direct {p0}, Lcom/sec/android/app/shareapp/ShareApp;->closeTextKeypad()V

    .line 352
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/sec/android/app/shareapp/ShareApp;->setIntent(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 311
    const-string v1, "ShareApp"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_a
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->mReceiver:Lcom/sec/android/app/shareapp/ShareApp$PackageIntentReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/shareapp/ShareApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_f} :catch_19

    .line 320
    :goto_f
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;

    if-eqz v1, :cond_18

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 323
    :cond_18
    return-void

    .line 315
    :catch_19
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "ShareApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 328
    const-string v0, "ShareApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/shareapp/ShareApp$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/shareapp/ShareApp$5;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 340
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 357
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/sec/android/app/shareapp/ShareApp;->closeTextKeypad()V

    .line 365
    return-void
.end method
