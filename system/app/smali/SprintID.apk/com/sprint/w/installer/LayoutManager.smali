.class public Lcom/sprint/w/installer/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/LayoutManager$Layout;,
        Lcom/sprint/w/installer/LayoutManager$WidgetMeta;,
        Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;,
        Lcom/sprint/w/installer/LayoutManager$SearchWidgetMeta;,
        Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;,
        Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;,
        Lcom/sprint/w/installer/LayoutManager$FolderMeta;,
        Lcom/sprint/w/installer/LayoutManager$Folderable;,
        Lcom/sprint/w/installer/LayoutManager$AppMeta;
    }
.end annotation


# static fields
.field static final TW_FILTER:Ljava/io/FilenameFilter;

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field mContext:Landroid/app/Activity;

.field mScreenOffset:I

.field mService:Lcom/sprint/id/ISprintIDService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/sprint/w/installer/LayoutManager;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    .line 643
    new-instance v0, Lcom/sprint/w/installer/LayoutManager$2;

    invoke-direct {v0}, Lcom/sprint/w/installer/LayoutManager$2;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/LayoutManager;->TW_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter "parentActivity"

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/w/installer/LayoutManager;->mScreenOffset:I

    .line 464
    iput-object p1, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    .line 465
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->getLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sprint/w/installer/env/LauncherStrategy;->getScreenCount()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    .line 466
    invoke-static {}, Lcom/sprint/w/installer/WInstallerApp;->getLauncherStrategy()Lcom/sprint/w/installer/env/LauncherStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sprint/w/installer/env/LauncherStrategy;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sprint/w/installer/LayoutManager;->mScreenOffset:I

    .line 468
    :cond_21
    return-void
.end method

.method static synthetic access$000()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/LayoutManager;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/LayoutManager;->isOnTablet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$AppMeta;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/LayoutManager;->addAppShortcut(Lcom/sprint/w/installer/LayoutManager$AppMeta;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/LayoutManager;Landroid/app/Activity;IIIIILandroid/content/ComponentName;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/sprint/w/installer/LayoutManager;->addAppWidget(Landroid/app/Activity;IIIIILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/LayoutManager;->addShortcut(Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/LayoutManager;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/w/installer/LayoutManager;->addSearchWidget(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/LayoutManager;->addLiveFolder(Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/LayoutManager$FolderMeta;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/LayoutManager;->addFolder(Lcom/sprint/w/installer/LayoutManager$FolderMeta;)V

    return-void
.end method

.method private addAppShortcut(Lcom/sprint/w/installer/LayoutManager$AppMeta;I)V
    .registers 16
    .parameter "m"
    .parameter "container"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 730
    iget-object v8, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 732
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 733
    .local v3, intent:Landroid/content/Intent;
    iget-object v8, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->intent:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8b

    .line 735
    :try_start_11
    iget-object v8, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->intent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 736
    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 739
    .local v6, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 740
    .local v0, dri:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 741
    .local v5, r:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_36

    iget v8, v5, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v9, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-le v8, v9, :cond_22

    .line 742
    :cond_36
    move-object v0, v5

    goto :goto_22

    .line 745
    .end local v5           #r:Landroid/content/pm/ResolveInfo;
    :cond_38
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_43} :catch_6f

    .line 756
    .end local v0           #dri:Landroid/content/pm/ResolveInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_43
    const/high16 v8, 0x1020

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 758
    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 759
    .restart local v6       #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 760
    sget-object v8, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LayoutManager: Could not find an activity for Intent URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 786
    .end local v6           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_6e
    return-void

    .line 746
    :catch_6f
    move-exception v1

    .line 747
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse the intent URI, skipping it.: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->intent:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e

    .line 751
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8b
    invoke-static {p1}, Lcom/sprint/w/installer/LayoutManager;->rewriteShortcutTarget(Lcom/sprint/w/installer/LayoutManager$AppMeta;)V

    .line 752
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 753
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_43

    .line 764
    .restart local v6       #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a0
    iget-object v8, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->title:Ljava/lang/String;

    if-eqz v8, :cond_b0

    iget-object v8, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_c4

    .line 765
    :cond_b0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->title:Ljava/lang/String;

    .line 768
    :cond_c4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 769
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "container"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    const-string v8, "screen"

    iget v9, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->screen:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    const-string v8, "intent"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v8, "title"

    iget-object v9, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->title:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v8, "itemType"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v8, "cellX"

    iget v9, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v8, "cellY"

    iget v9, p1, Lcom/sprint/w/installer/LayoutManager$AppMeta;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string v8, "spanX"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v8, "spanY"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v8, "iconType"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    :try_start_127
    iget-object v8, p0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v8, v7}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_12c} :catch_12e

    goto/16 :goto_6e

    .line 782
    :catch_12e
    move-exception v1

    .line 784
    .local v1, e:Landroid/os/RemoteException;
    sget-object v8, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Error adding App Shortcut"

    invoke-virtual {v8, v9, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e
.end method

.method private addAppWidget(Landroid/app/Activity;IIIIILandroid/content/ComponentName;)V
    .registers 12
    .parameter "context"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "cn"

    .prologue
    .line 532
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v2, "screen"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 535
    const-string v2, "cellX"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v2, "cellY"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    const-string v2, "spanX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v2, "spanY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    const-string v2, "itemType"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    const-string v2, "iconPackage"

    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v2, "iconResource"

    invoke-virtual {p7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :try_start_59
    iget-object v2, p0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v2, v1}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5e} :catch_5f

    .line 554
    :goto_5e
    return-void

    .line 550
    :catch_5f
    move-exception v0

    .line 552
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Error adding App Widget"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5e
.end method

.method public static addAppWidgetWithLightContext(Lcom/sprint/id/ISprintIDService;Landroid/content/Context;IIIIILandroid/content/ComponentName;)V
    .registers 12
    .parameter "service"
    .parameter "context"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "cn"

    .prologue
    .line 558
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 559
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string v2, "screen"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    const-string v2, "cellX"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string v2, "cellY"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string v2, "spanX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string v2, "spanY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string v2, "itemType"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v2, "iconPackage"

    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v2, "iconResource"

    invoke-virtual {p7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :try_start_59
    invoke-interface {p0, v1}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 580
    :goto_5c
    return-void

    .line 575
    :catch_5d
    move-exception v0

    .line 577
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Error adding Live Folder"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c
.end method

.method private addFolder(Lcom/sprint/w/installer/LayoutManager$FolderMeta;)V
    .registers 15
    .parameter "m"

    .prologue
    const/4 v12, 0x1

    .line 844
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 845
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "container"

    const/16 v11, -0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    const-string v10, "screen"

    iget v11, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->screen:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v10, "title"

    iget-object v11, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v10, "itemType"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v10, "cellX"

    iget v11, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v10, "cellY"

    iget v11, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->y:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v10, "spanX"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v10, "spanY"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v10, "iconType"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    iget-object v10, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->iconPackage:Ljava/lang/String;

    if-eqz v10, :cond_75

    iget-object v10, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->icon:Ljava/lang/String;

    if-eqz v10, :cond_75

    .line 856
    const-string v10, "iconPackage"

    iget-object v11, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->iconPackage:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v10, "iconResource"

    iget-object v11, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->icon:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_75
    const/4 v8, 0x0

    .line 862
    .local v8, uri:Landroid/net/Uri;
    :try_start_76
    iget-object v10, p0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v10, v9}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7b} :catch_af

    move-result-object v8

    .line 868
    :goto_7c
    if-eqz v8, :cond_ae

    .line 869
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 871
    .local v6, parent:Ljava/lang/String;
    :try_start_82
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 872
    .local v4, id:I
    iget-object v10, p1, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_8c
    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/w/installer/LayoutManager$Folderable;

    .line 873
    .local v5, item:Lcom/sprint/w/installer/LayoutManager$Folderable;
    invoke-interface {v5}, Lcom/sprint/w/installer/LayoutManager$Folderable;->getType()I

    move-result v10

    if-nez v10, :cond_b8

    .line 874
    move-object v0, v5

    check-cast v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;

    move-object v1, v0

    .line 875
    .local v1, am:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    invoke-direct {p0, v1, v4}, Lcom/sprint/w/installer/LayoutManager;->addAppShortcut(Lcom/sprint/w/installer/LayoutManager$AppMeta;I)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a5} :catch_a6

    goto :goto_8c

    .line 881
    .end local v1           #am:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:I
    .end local v5           #item:Lcom/sprint/w/installer/LayoutManager$Folderable;
    :catch_a6
    move-exception v2

    .line 882
    .local v2, e:Ljava/lang/Exception;
    sget-object v10, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v11, "Error adding folder children"

    invoke-virtual {v10, v11, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #parent:Ljava/lang/String;
    :cond_ae
    return-void

    .line 863
    :catch_af
    move-exception v2

    .line 865
    .local v2, e:Landroid/os/RemoteException;
    sget-object v10, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v11, "Error adding App Shortcut"

    invoke-virtual {v10, v11, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7c

    .line 876
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #id:I
    .restart local v5       #item:Lcom/sprint/w/installer/LayoutManager$Folderable;
    .restart local v6       #parent:Ljava/lang/String;
    :cond_b8
    :try_start_b8
    invoke-interface {v5}, Lcom/sprint/w/installer/LayoutManager$Folderable;->getType()I

    move-result v10

    if-ne v10, v12, :cond_8c

    .line 877
    move-object v0, v5

    check-cast v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;

    move-object v7, v0

    .line 878
    .local v7, sm:Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
    invoke-direct {p0, v7, v4}, Lcom/sprint/w/installer/LayoutManager;->addShortcut(Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;I)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c5} :catch_a6

    goto :goto_8c
.end method

.method private addLiveFolder(Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;)V
    .registers 7
    .parameter "m"

    .prologue
    const/4 v4, 0x1

    .line 817
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 818
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    const-string v2, "screen"

    iget v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    const-string v2, "intent"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->intent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v2, "title"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v2, "itemType"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    const-string v2, "cellX"

    iget v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    const-string v2, "cellY"

    iget v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v2, "iconType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v2, "uri"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v2, "displayMode"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    iget-object v2, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->iconPackage:Ljava/lang/String;

    if-eqz v2, :cond_8d

    iget-object v2, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->icon:Ljava/lang/String;

    if-eqz v2, :cond_8d

    .line 831
    const-string v2, "iconPackage"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->iconPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v2, "iconResource"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_8d
    :try_start_8d
    iget-object v2, p0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v2, v1}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_92} :catch_93

    .line 841
    :goto_92
    return-void

    .line 837
    :catch_93
    move-exception v0

    .line 839
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Error adding Live Folder"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_92
.end method

.method private addSearchWidget(III)V
    .registers 18
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_5f

    .line 584
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "container"

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string v0, "screen"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    const-string v0, "itemType"

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    const-string v0, "cellX"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    const-string v0, "cellY"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    const-string v0, "spanX"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string v0, "spanY"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    :try_start_50
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v0, v13}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_55} :catch_56

    .line 621
    .end local v13           #values:Landroid/content/ContentValues;
    :goto_55
    return-void

    .line 595
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_56
    move-exception v9

    .line 597
    .local v9, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Error adding Search Widget"

    invoke-virtual {v0, v1, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    .line 601
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_5f
    iget-object v0, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/SearchManager;

    .line 602
    .local v12, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 605
    .local v8, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_6d
    const-string v0, "getGlobalSearchActivity"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 606
    .local v10, m:Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v10, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 607
    .local v11, searchComponent:Landroid/content/ComponentName;
    if-nez v11, :cond_92

    .line 608
    sget-object v0, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Can\'t add search widget: GlobalSearchActivity is null"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_88} :catch_89

    goto :goto_55

    .line 617
    .end local v10           #m:Ljava/lang/reflect/Method;
    .end local v11           #searchComponent:Landroid/content/ComponentName;
    :catch_89
    move-exception v9

    .line 618
    .local v9, e:Ljava/lang/Exception;
    sget-object v0, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Failed to add search widget"

    invoke-virtual {v0, v1, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    .line 611
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #m:Ljava/lang/reflect/Method;
    .restart local v11       #searchComponent:Landroid/content/ComponentName;
    :cond_92
    :try_start_92
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/LayoutManager;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 612
    .local v7, cn:Landroid/content/ComponentName;
    if-eqz v7, :cond_aa

    .line 613
    iget-object v1, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/sprint/w/installer/LayoutManager;->addAppWidget(Landroid/app/Activity;IIIIILandroid/content/ComponentName;)V

    goto :goto_55

    .line 615
    :cond_aa
    sget-object v0, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Can\'t add search widget: no widget provider found!"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b1} :catch_89

    goto :goto_55
.end method

.method private addShortcut(Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;I)V
    .registers 9
    .parameter "m"
    .parameter "container"

    .prologue
    const/4 v5, 0x1

    .line 790
    invoke-static {p1}, Lcom/sprint/w/installer/LayoutManager;->rewriteShortcutTarget(Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;)V

    .line 791
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 792
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "container"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string v2, "screen"

    iget v3, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string v2, "intent"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->intent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    sget-object v2, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->intent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 798
    const-string v2, "title"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v2, "itemType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v2, "cellX"

    iget v3, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v2, "cellY"

    iget v3, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const-string v2, "spanX"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    const-string v2, "spanY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    const-string v2, "iconType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    const-string v2, "iconPackage"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->iconPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v2, "iconResource"

    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :try_start_8e
    iget-object v2, p0, Lcom/sprint/w/installer/LayoutManager;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v2, v1}, Lcom/sprint/id/ISprintIDService;->addDesktopItemNoNotify(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_93} :catch_94

    .line 814
    :goto_93
    return-void

    .line 810
    :catch_94
    move-exception v0

    .line 812
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Error adding Shortcut"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_93
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 628
    iget-object v5, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 629
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 630
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_f

    move-object v2, v6

    .line 640
    :cond_e
    :goto_e
    return-object v2

    .line 633
    :cond_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 634
    .local v3, providerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v3, :cond_2d

    .line 635
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 636
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 634
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_2d
    move-object v2, v6

    .line 640
    goto :goto_e
.end method

.method public static isMotoBlur()Z
    .registers 2

    .prologue
    .line 665
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isOnTablet(Ljava/lang/String;)Z
    .registers 10
    .parameter "className"

    .prologue
    .line 669
    const/4 v6, 0x1

    .line 670
    .local v6, result:Z
    iget-object v7, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 671
    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x7f080003

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, no_tab_array:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_11
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    .line 673
    .local v3, no_tab:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 674
    const/4 v6, 0x0

    .line 672
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 677
    .end local v3           #no_tab:Ljava/lang/String;
    :cond_1f
    return v6
.end method

.method public static isTouchWiz()Z
    .registers 4

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 653
    .local v1, result:Z
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/app/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, apps:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 655
    sget-object v3, Lcom/sprint/w/installer/LayoutManager;->TW_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, twFiles:[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_18

    .line 658
    const/4 v1, 0x1

    .line 661
    .end local v2           #twFiles:[Ljava/lang/String;
    :cond_18
    return v1
.end method

.method static rewriteShortcutTarget(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 10
    .parameter "compName"

    .prologue
    .line 681
    const/4 v5, 0x0

    .line 682
    .local v5, resourceId:I
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "SPH-P100"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 683
    const/high16 v5, 0x7f08

    .line 691
    :goto_d
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, array:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    array-length v6, v0

    if-ge v3, v6, :cond_6e

    .line 696
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 697
    add-int/lit8 v6, v3, 0x1

    aget-object v6, v0, v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, entry:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v4, v2, v6

    .line 699
    .local v4, packageName:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v1, v2, v6

    .line 700
    .local v1, className:Ljava/lang/String;
    sget-object v6, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rewriting from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 701
    new-instance p0, Landroid/content/ComponentName;

    .end local p0
    invoke-direct {p0, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #entry:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #packageName:Ljava/lang/String;
    :cond_6e
    return-object p0

    .line 684
    .restart local p0
    :cond_6f
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isTouchWiz()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 685
    const v5, 0x7f080001

    goto :goto_d

    .line 686
    :cond_79
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->isMotoBlur()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 687
    const v5, 0x7f080002

    goto :goto_d

    .line 695
    .restart local v0       #array:[Ljava/lang/String;
    .restart local v3       #i:I
    :cond_83
    add-int/lit8 v3, v3, 0x2

    goto :goto_1a
.end method

.method static rewriteShortcutTarget(Lcom/sprint/w/installer/LayoutManager$AppMeta;)V
    .registers 5
    .parameter "appMeta"

    .prologue
    .line 723
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sprint/w/installer/LayoutManager;->rewriteShortcutTarget(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 724
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->packageName:Ljava/lang/String;

    .line 725
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    .line 726
    return-void
.end method

.method static rewriteShortcutTarget(Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;)V
    .registers 8
    .parameter "scMeta"

    .prologue
    .line 709
    :try_start_0
    iget-object v4, p0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->intent:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 710
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 711
    .local v3, srcCompName:Landroid/content/ComponentName;
    if-nez v3, :cond_e

    .line 720
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #srcCompName:Landroid/content/ComponentName;
    :goto_d
    return-void

    .line 714
    .restart local v2       #i:Landroid/content/Intent;
    .restart local v3       #srcCompName:Landroid/content/ComponentName;
    :cond_e
    invoke-static {v3}, Lcom/sprint/w/installer/LayoutManager;->rewriteShortcutTarget(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 715
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 716
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->intent:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_d

    .line 717
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #srcCompName:Landroid/content/ComponentName;
    :catch_1d
    move-exception v1

    .line 718
    .local v1, e:Ljava/net/URISyntaxException;
    sget-object v4, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing intent URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->intent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method public apply(Lcom/sprint/w/installer/LayoutManager$Layout;)V
    .registers 7
    .parameter "l"

    .prologue
    .line 480
    sget-object v2, Lcom/sprint/w/installer/LayoutManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Applying layout"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 482
    new-instance v1, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {v1}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;-><init>()V

    .line 483
    .local v1, conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    new-instance v0, Lcom/sprint/w/installer/LayoutManager$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/sprint/w/installer/LayoutManager$1;-><init>(Lcom/sprint/w/installer/LayoutManager;Lcom/sprint/w/installer/service/SprintIDServiceConnection;Lcom/sprint/w/installer/LayoutManager$Layout;)V

    .line 524
    .local v0, callback:Ljava/lang/Runnable;
    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 526
    iget-object v2, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 528
    return-void
.end method

.method public parse(Ljava/io/InputStream;)Lcom/sprint/w/installer/LayoutManager$Layout;
    .registers 5
    .parameter "is"

    .prologue
    .line 471
    new-instance v0, Lcom/sprint/w/installer/LayoutManager$Layout;

    invoke-direct {v0}, Lcom/sprint/w/installer/LayoutManager$Layout;-><init>()V

    .line 472
    .local v0, l:Lcom/sprint/w/installer/LayoutManager$Layout;
    iget-object v1, p0, Lcom/sprint/w/installer/LayoutManager;->mContext:Landroid/app/Activity;

    iget v2, p0, Lcom/sprint/w/installer/LayoutManager;->mScreenOffset:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sprint/w/installer/LayoutManager$Layout;->parse(Ljava/io/InputStream;Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 475
    .end local v0           #l:Lcom/sprint/w/installer/LayoutManager$Layout;
    :goto_f
    return-object v0

    .restart local v0       #l:Lcom/sprint/w/installer/LayoutManager$Layout;
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
