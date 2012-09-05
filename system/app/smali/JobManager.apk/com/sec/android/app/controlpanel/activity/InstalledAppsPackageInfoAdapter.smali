.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "InstalledAppsPackageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    }
.end annotation


# static fields
.field static mUninstallLockPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonPressed:Z

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private scrollState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    .line 73
    sget-object v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getUninstallLockPackageList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mUninstallLockPackages:Ljava/util/ArrayList;

    .line 75
    :cond_10
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    return-void
.end method

.method private getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 13
    .parameter "_configFilename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, _packageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 332
    .local v0, dis:Ljava/io/DataInputStream;
    const-string v7, "InstalledAppsPackageInfoAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPackageList() configFilename:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-nez p2, :cond_1c

    .line 369
    :cond_1b
    :goto_1b
    return-void

    .line 338
    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2b} :catch_d9
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2b} :catch_d7

    .line 340
    .end local v0           #dis:Ljava/io/DataInputStream;
    .local v1, dis:Ljava/io/DataInputStream;
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-lez v7, :cond_80

    .line 341
    const/4 v5, 0x0

    .line 343
    .local v5, strNumOfPackages:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 345
    if-eqz v5, :cond_42

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_80

    .line 346
    :cond_42
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configFilename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5b
    .catchall {:try_start_2b .. :try_end_5b} :catchall_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_5b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_5b} :catch_92

    .line 354
    .end local v5           #strNumOfPackages:Ljava/lang/String;
    :catch_5b
    move-exception v3

    move-object v0, v1

    .line 355
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :goto_5d
    :try_start_5d
    const-string v7, "InstalledAppsPackageInfoAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There has no files. :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_c8

    .line 361
    if-eqz v0, :cond_1b

    .line 363
    :try_start_77
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_1b

    .line 364
    :catch_7b
    move-exception v2

    .line 365
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 350
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :cond_80
    :goto_80
    :try_start_80
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v7

    if-eqz v7, :cond_b9

    .line 351
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, strPackageName:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catchall {:try_start_80 .. :try_end_91} :catchall_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_91} :catch_5b
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_91} :catch_92

    goto :goto_80

    .line 357
    .end local v6           #strPackageName:Ljava/lang/String;
    :catch_92
    move-exception v4

    move-object v0, v1

    .line 358
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    .local v4, ioe:Ljava/io/IOException;
    :goto_94
    :try_start_94
    const-string v7, "InstalledAppsPackageInfoAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There has IOException. :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_94 .. :try_end_ac} :catchall_c8

    .line 361
    if-eqz v0, :cond_1b

    .line 363
    :try_start_ae
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b3

    goto/16 :goto_1b

    .line 364
    :catch_b3
    move-exception v2

    .line 365
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1b

    .line 361
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :cond_b9
    if-eqz v1, :cond_db

    .line 363
    :try_start_bb
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c1

    move-object v0, v1

    .line 366
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_1b

    .line 364
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catch_c1
    move-exception v2

    .line 365
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 366
    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_1b

    .line 361
    .end local v2           #e:Ljava/io/IOException;
    :catchall_c8
    move-exception v7

    :goto_c9
    if-eqz v0, :cond_ce

    .line 363
    :try_start_cb
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 366
    :cond_ce
    :goto_ce
    throw v7

    .line 364
    :catch_cf
    move-exception v2

    .line 365
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ce

    .line 361
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catchall_d4
    move-exception v7

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_c9

    .line 357
    :catch_d7
    move-exception v4

    goto :goto_94

    .line 354
    :catch_d9
    move-exception v3

    goto :goto_5d

    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :cond_db
    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto/16 :goto_1b
.end method


# virtual methods
.method public getBaseAppList()Ljava/util/List;
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
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 81
    const/4 v0, 0x0

    .line 82
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScrollState()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->scrollState:I

    return v0
.end method

.method public getSortOrder()I
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "installAppList_sort_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUninstallLockPackageList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const-string v0, "/system/etc/uninstall_lock_packages.txt"

    .line 312
    .local v0, uninstallLockFileName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, uninstallLockPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "/system/etc/uninstall_lock_packages.txt"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getPackageList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 316
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1c

    .line 317
    :cond_14
    const-string v2, "InstalledAppsPackageInfoAdapter"

    const-string v3, "There\'s no information"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    .line 321
    .end local v1           #uninstallLockPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 114
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_b

    .line 241
    :goto_a
    return-object v6

    .line 121
    :cond_b
    if-nez p2, :cond_e3

    .line 122
    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030002

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;-><init>()V

    .line 124
    .local v0, holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    const v6, 0x7f070003

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 125
    const v6, 0x7f070002

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 126
    const v6, 0x7f070004

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    .line 127
    const v6, 0x7f070006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    .line 128
    const v6, 0x7f070007

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    .line 129
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const v7, 0x7f050006

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_5d
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 136
    .local v2, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v2, :cond_e0

    .line 188
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 189
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    :goto_73
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v3

    .line 197
    .local v3, size:J
    const-string v5, ""

    .line 198
    .local v5, sizeString:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_89

    .line 199
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 201
    :cond_89
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_f1

    .line 202
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_98
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const/4 v1, 0x0

    .line 213
    .local v1, installLocation:Ljava/lang/String;
    const-string v1, ""

    .line 216
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getStoredExternalStorage()I

    move-result v6

    packed-switch v6, :pswitch_data_15c

    .line 234
    :goto_bf
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setFocusable(Z)V

    .line 235
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setClickable(Z)V

    .line 236
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v1           #installLocation:Ljava/lang/String;
    .end local v3           #size:J
    .end local v5           #sizeString:Ljava/lang/String;
    :cond_e0
    move-object v6, p2

    .line 241
    goto/16 :goto_a

    .line 132
    .end local v0           #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    .end local v2           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_e3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    goto/16 :goto_5d

    .line 191
    .restart local v2       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_eb
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_73

    .line 204
    .restart local v3       #size:J
    .restart local v5       #sizeString:Ljava/lang/String;
    :cond_f1
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    .line 218
    .restart local v1       #installLocation:Ljava/lang/String;
    :pswitch_fb
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f050050

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 222
    :pswitch_11b
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f050051

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 226
    :pswitch_13b
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f050052

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_bf

    .line 216
    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_11b
        :pswitch_13b
    .end packed-switch
.end method

.method public isButtonPressed()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->isButtonPressed()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getScrollState()I

    move-result v0

    if-nez v0, :cond_f

    .line 263
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 265
    :cond_f
    return-void
.end method

.method public setButtonPressed(Z)V
    .registers 2
    .parameter "buttonPressed"

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    .line 258
    return-void
.end method

.method public setList(Ljava/util/List;)V
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
    .line 102
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 107
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "touchListener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 111
    return-void
.end method

.method public setScrollState(I)V
    .registers 2
    .parameter "scrollState"

    .prologue
    .line 249
    iput p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->scrollState:I

    .line 250
    return-void
.end method

.method public setSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 283
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_b

    .line 284
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 285
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "installAppList_sort_order"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/controlpanel/Utils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public sort()V
    .registers 5

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getSortOrder()I

    move-result v1

    .line 270
    .local v1, sortOrder:I
    if-nez v1, :cond_11

    .line 271
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 280
    :cond_10
    :goto_10
    return-void

    .line 272
    :cond_11
    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 277
    :catch_1f
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "InstalledAppsPackageInfoAdapter"

    const-string v3, "sort() exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 274
    .end local v0           #e:Ljava/lang/Exception;
    :cond_28
    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 275
    :try_start_2b
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_1f

    goto :goto_10
.end method
