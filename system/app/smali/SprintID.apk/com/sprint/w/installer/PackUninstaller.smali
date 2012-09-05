.class public Lcom/sprint/w/installer/PackUninstaller;
.super Landroid/app/Activity;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;,
        Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;,
        Lcom/sprint/w/installer/PackUninstaller$AppView;,
        Lcom/sprint/w/installer/PackUninstaller$ThumbView;,
        Lcom/sprint/w/installer/PackUninstaller$ItemView;,
        Lcom/sprint/w/installer/PackUninstaller$CategoryView;,
        Lcom/sprint/w/installer/PackUninstaller$CategoryItem;,
        Lcom/sprint/w/installer/PackUninstaller$Item;,
        Lcom/sprint/w/installer/PackUninstaller$Listable;,
        Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;
    }
.end annotation


# static fields
.field public static final ACTION_REMOVE_PARTIAL:Ljava/lang/String; = "com.sprint.w.isntaller.ACTION_REMOVE_PARTIAL"

.field public static final ACTION_SWAP_PACK:Ljava/lang/String; = "com.sprint.w.installer.ACTION_SWAP_PACK"

.field static final CATEGORY_APPS:Ljava/lang/String; = "Applications"

.field static final CATEGORY_RINGTONES:Ljava/lang/String; = "Ringtones"

.field static final CATEGORY_WALLPAPERS:Ljava/lang/String; = "Wallpapers"

.field private static final DIALOG_CONFIRM_UNINSTALL:I = 0x1

.field private static final DIALOG_UNINSTALL_PROGRESS:I = 0x2

.field public static final EXTRA_EXCLUDE_PACK_ID:Ljava/lang/String; = "com.sprint.w.installer.EXTRA_EXCLUDE_PACK_ID"

.field public static final EXTRA_LOAD_HOME:Ljava/lang/String; = "com.sprint.w.installer.EXTRA_LOAD_HOME"

.field public static final EXTRA_PACK_ID:Ljava/lang/String; = "com.sprint.w.installer.EXTRA_PACK_ID"

.field public static final RESULT_KEPT_SOME:I = 0x1

.field private static sProgressBar:Landroid/widget/ProgressBar;

.field private static sProgressMessage:Landroid/widget/TextView;

.field private static sProgressPercent:Landroid/widget/TextView;


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mAbort:Z

.field mAdapter:Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

.field final mAppDeleteObserver:Landroid/content/pm/IPackageDeleteObserver;

.field mAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

.field mBlockBackKey:Z

.field mButtonCheckAll:Landroid/widget/Button;

.field mButtonNext:Landroid/widget/Button;

.field mButtonUncheckAll:Landroid/widget/Button;

.field final mCheckAllClicked:Landroid/view/View$OnClickListener;

.field mExcludePackId:Ljava/lang/String;

.field mKeptSomeItems:Z

.field mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Listable;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field final mNextClicked:Landroid/view/View$OnClickListener;

.field mPackIcon:Landroid/widget/ImageView;

.field mPackId:Ljava/lang/String;

.field mPackInfo:Lcom/sprint/w/installer/PackInfo;

.field mPackName:Landroid/widget/TextView;

.field mPackVersion:Landroid/widget/TextView;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field final mPackageManagerSignal:Ljava/lang/Object;

.field mProgressMessageText:Ljava/lang/String;

.field mProgressPercent:I

.field mRemovePartial:Z

.field mRingtoneItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field mRingtones:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

.field private mService:Lcom/sprint/id/ISprintIDService;

.field mSwapPack:Z

.field final mThreadSyncLock:Ljava/lang/Object;

.field final mUncheckAllClicked:Landroid/view/View$OnClickListener;

.field final mUninstallAllDone:Ljava/lang/Runnable;

.field private final mUpdateProgressMessage:Ljava/lang/Runnable;

.field mWallpaperItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field mWallpapers:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const-class v0, Lcom/sprint/w/installer/PackUninstaller;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManagerSignal:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mThreadSyncLock:Ljava/lang/Object;

    .line 163
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackUninstaller$2;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mNextClicked:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;

    invoke-direct {v0, p0, v2}, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;-><init>(Lcom/sprint/w/installer/PackUninstaller;Z)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mUncheckAllClicked:Landroid/view/View$OnClickListener;

    .line 236
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sprint/w/installer/PackUninstaller$CheckStateModifier;-><init>(Lcom/sprint/w/installer/PackUninstaller;Z)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mCheckAllClicked:Landroid/view/View$OnClickListener;

    .line 849
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$8;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackUninstaller$8;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mUninstallAllDone:Ljava/lang/Runnable;

    .line 970
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppDeleteObserver:Landroid/content/pm/IPackageDeleteObserver;

    .line 973
    iput v2, p0, Lcom/sprint/w/installer/PackUninstaller;->mProgressPercent:I

    .line 981
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$9;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackUninstaller$9;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mUpdateProgressMessage:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sprint/w/installer/PackUninstaller;->loadContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sprint/w/installer/PackUninstaller;->rebuildList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackUninstaller;->uninstallApp(Lcom/sprint/w/installer/PackUninstaller$Item;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sprint/w/installer/PackUninstaller;->reloadAll()V

    return-void
.end method

.method static synthetic access$1200()Landroid/widget/ProgressBar;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/sprint/w/installer/PackUninstaller;->sProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/sprint/w/installer/PackUninstaller;->sProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/sprint/w/installer/PackUninstaller;->sProgressMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sprint/w/installer/PackUninstaller;->initListView()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/PackUninstaller;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sprint/w/installer/PackUninstaller;->isUninstallNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/PackUninstaller;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sprint/w/installer/PackUninstaller;->uninstallSelected()V

    return-void
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/PackUninstaller;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackUninstaller;->setProgressMessage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackUninstaller;->uninstallRingtone(Lcom/sprint/w/installer/PackUninstaller$Item;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackUninstaller;->uninstallWallpaper(Lcom/sprint/w/installer/PackUninstaller$Item;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sprint/w/installer/PackUninstaller;)Lcom/sprint/id/ISprintIDService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mService:Lcom/sprint/id/ISprintIDService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/id/ISprintIDService;)Lcom/sprint/id/ISprintIDService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller;->mService:Lcom/sprint/id/ISprintIDService;

    return-object p1
.end method

.method private addCategory(Lcom/sprint/w/installer/PackUninstaller$CategoryItem;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "cat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sprint/w/installer/PackUninstaller$CategoryItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackUninstaller$Item;>;"
    iput-object p2, p1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->mChildren:Ljava/util/ArrayList;

    .line 481
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 482
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-boolean v0, p1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->expanded:Z

    if-eqz v0, :cond_16

    .line 484
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 487
    :cond_16
    return-void
.end method

.method private deleteWidgetFromHost(Ljava/lang/String;)V
    .registers 19
    .parameter "pkgName"

    .prologue
    .line 924
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appWidgetId"

    aput-object v2, v3, v1

    .line 927
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "iconPackage = ? AND itemType=4"

    .line 928
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 931
    .local v5, args:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackUninstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 933
    .local v8, cur:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 934
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v13, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "appWidgetId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 937
    .local v14, index:I
    :cond_2c
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 938
    .local v7, appWidgetId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 942
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v15, v1, [I

    .line 943
    .local v15, ints:[I
    const/4 v10, 0x0

    .line 944
    .local v10, i:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    move v11, v10

    .end local v10           #i:I
    .local v11, i:I
    :goto_49
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 945
    .local v16, n:Ljava/lang/Integer;
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v15, v11

    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_49

    .line 948
    .end local v16           #n:Ljava/lang/Integer;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/PackUninstaller;->mService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v1, v15}, Lcom/sprint/id/ISprintIDService;->deleteWidgetsFromHostByID([I)V
    :try_end_66
    .catchall {:try_start_1b .. :try_end_66} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_66} :catch_6a

    .line 953
    .end local v7           #appWidgetId:I
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14           #index:I
    .end local v15           #ints:[I
    :cond_66
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 955
    :goto_69
    return-void

    .line 950
    :catch_6a
    move-exception v9

    .line 951
    .local v9, e:Ljava/lang/Exception;
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Could not delete widgets from host"

    invoke-virtual {v1, v2, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_78

    .line 953
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_69

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_78
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private initListView()V
    .registers 3

    .prologue
    .line 239
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mListView:Landroid/widget/ListView;

    .line 240
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mAdapter:Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mListView:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sprint/w/installer/PackUninstaller$3;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackUninstaller$3;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    return-void
.end method

.method private isUninstallNeeded()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 181
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_70

    .line 182
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/PackUninstaller$Listable;

    .line 183
    .local v2, l:Lcom/sprint/w/installer/PackUninstaller$Listable;
    invoke-interface {v2}, Lcom/sprint/w/installer/PackUninstaller$Listable;->getType()I

    move-result v4

    if-nez v4, :cond_24

    .line 184
    check-cast v2, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .end local v2           #l:Lcom/sprint/w/installer/PackUninstaller$Listable;
    iget-boolean v4, v2, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->checked:Z

    if-eqz v4, :cond_b

    .line 207
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_23
    return v3

    .line 187
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #l:Lcom/sprint/w/installer/PackUninstaller$Listable;
    :cond_24
    check-cast v2, Lcom/sprint/w/installer/PackUninstaller$Item;

    .end local v2           #l:Lcom/sprint/w/installer/PackUninstaller$Listable;
    iget-boolean v4, v2, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v4, :cond_b

    goto :goto_23

    .line 191
    :cond_2b
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 192
    .local v0, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v4, v0, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v4, :cond_31

    goto :goto_23

    .line 196
    .end local v0           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_42
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 197
    .restart local v0       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v4, v0, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v4, :cond_48

    goto :goto_23

    .line 201
    .end local v0           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_59
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller;->mRingtoneItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 202
    .restart local v0       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-boolean v4, v0, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    if-eqz v4, :cond_5f

    goto :goto_23

    .line 207
    .end local v0           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_70
    const/4 v3, 0x0

    goto :goto_23
.end method

.method private loadContent()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 358
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 359
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sprint/w/installer/PackInfo;->loadPackDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    .line 362
    :cond_e
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "package"

    aput-object v0, v2, v11

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "packId"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "packName"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "packVersion"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "itemType"

    aput-object v1, v2, v0

    .line 365
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 366
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 367
    .local v4, args:[Ljava/lang/String;
    iget-boolean v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mSwapPack:Z

    if-eqz v0, :cond_f4

    .line 368
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v9

    .line 369
    .local v9, info:Lcom/sprint/w/installer/PackInfo;
    if-eqz v9, :cond_4c

    .line 370
    const-string v3, "packId=?"

    .line 371
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    iget-object v0, v9, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    aput-object v0, v4, v10

    .line 387
    .end local v9           #info:Lcom/sprint/w/installer/PackInfo;
    .restart local v4       #args:[Ljava/lang/String;
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 388
    .local v6, cur:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppItems:Ljava/util/ArrayList;

    if-nez v0, :cond_110

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppItems:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mRingtoneItems:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mWallpaperItems:Ljava/util/ArrayList;

    .line 397
    :goto_71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 399
    :cond_77
    new-instance v8, Lcom/sprint/w/installer/PackUninstaller$Item;

    iget-boolean v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mSwapPack:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v0, :cond_121

    :cond_81
    move v0, v11

    :goto_82
    invoke-direct {v8, v0}, Lcom/sprint/w/installer/PackUninstaller$Item;-><init>(Z)V

    .line 400
    .local v8, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->id:I

    .line 401
    const-string v0, "itemType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->type:I

    .line 402
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    .line 403
    const-string v0, "packId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packId:Ljava/lang/String;

    .line 404
    const-string v0, "packName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packName:Ljava/lang/String;

    .line 405
    const-string v0, "packVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packVersion:Ljava/lang/String;

    .line 406
    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    .line 407
    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    .line 408
    iget v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->type:I

    packed-switch v0, :pswitch_data_192

    .line 437
    :cond_ea
    :goto_ea
    :pswitch_ea
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_77

    .line 440
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_f0
    :try_start_f0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_f3
    .catch Ljava/lang/RuntimeException; {:try_start_f0 .. :try_end_f3} :catch_18f

    .line 443
    :goto_f3
    return-void

    .line 375
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_f4
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackId:Ljava/lang/String;

    if-eqz v0, :cond_102

    .line 376
    const-string v3, "packId=?"

    .line 377
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackId:Ljava/lang/String;

    aput-object v0, v4, v10

    .restart local v4       #args:[Ljava/lang/String;
    goto/16 :goto_4c

    .line 380
    :cond_102
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mExcludePackId:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 381
    const-string v3, "packId!=?"

    .line 382
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mExcludePackId:Ljava/lang/String;

    aput-object v0, v4, v10

    .restart local v4       #args:[Ljava/lang/String;
    goto/16 :goto_4c

    .line 393
    .restart local v6       #cur:Landroid/database/Cursor;
    :cond_110
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 394
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mRingtoneItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_71

    :cond_121
    move v0, v10

    .line 399
    goto/16 :goto_82

    .line 411
    .restart local v8       #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :pswitch_124
    :try_start_124
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 412
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_139} :catch_15f

    .line 414
    :try_start_139
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->version:Ljava/lang/String;
    :try_end_146
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_139 .. :try_end_146} :catch_17c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_146} :catch_15f

    .line 418
    :goto_146
    :try_start_146
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sprint/w/installer/util/Util;->appHasMultipleParents(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    .line 423
    iget-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sprint/w/installer/util/Util;->getParentPacksForApp(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packNames:[Ljava/lang/String;
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_15e} :catch_15f

    goto :goto_ea

    .line 425
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :catch_15f
    move-exception v7

    .line 426
    .local v7, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App seems to no longer be installed: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_ea

    .line 415
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #info:Landroid/content/pm/ApplicationInfo;
    :catch_17c
    move-exception v7

    .line 416
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    :try_start_17e
    iput-object v0, v8, Lcom/sprint/w/installer/PackUninstaller$Item;->version:Ljava/lang/String;
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_180} :catch_15f

    goto :goto_146

    .line 430
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_181
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mRingtoneItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 433
    :pswitch_188
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 441
    .end local v8           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :catch_18f
    move-exception v0

    goto/16 :goto_f3

    .line 408
    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_124
        :pswitch_181
        :pswitch_ea
        :pswitch_188
    .end packed-switch
.end method

.method private rebuildList()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 454
    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller;->mThreadSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    :try_start_4
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    if-nez v1, :cond_3c

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    .line 457
    iget-boolean v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mSwapPack:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    if-eqz v1, :cond_18

    :cond_17
    const/4 v0, 0x1

    .line 458
    .local v0, checked:Z
    :cond_18
    new-instance v1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    const-string v3, "Ringtones"

    const-string v4, "All packs"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mRingtones:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .line 459
    new-instance v1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    const-string v3, "Wallpapers"

    const-string v4, "All packs"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mWallpapers:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .line 460
    new-instance v1, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    const-string v3, "Applications"

    const-string v4, "All packs"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mApplications:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    .line 462
    .end local v0           #checked:Z
    :cond_3c
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 463
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mApplications:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Lcom/sprint/w/installer/PackUninstaller;->addCategory(Lcom/sprint/w/installer/PackUninstaller$CategoryItem;Ljava/util/ArrayList;)V

    .line 464
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mRingtones:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller;->mRingtoneItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Lcom/sprint/w/installer/PackUninstaller;->addCategory(Lcom/sprint/w/installer/PackUninstaller$CategoryItem;Ljava/util/ArrayList;)V

    .line 465
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mWallpapers:Lcom/sprint/w/installer/PackUninstaller$CategoryItem;

    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller;->mWallpaperItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Lcom/sprint/w/installer/PackUninstaller;->addCategory(Lcom/sprint/w/installer/PackUninstaller$CategoryItem;Ljava/util/ArrayList;)V

    .line 466
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_64

    .line 467
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mAdapter:Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

    if-eqz v1, :cond_63

    .line 468
    new-instance v1, Lcom/sprint/w/installer/PackUninstaller$4;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackUninstaller$4;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 477
    :cond_63
    return-void

    .line 466
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private reloadAll()V
    .registers 2

    .prologue
    .line 112
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackUninstaller$1;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 160
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method private declared-synchronized setProgressMessage(Ljava/lang/String;I)V
    .registers 4
    .parameter "message"
    .parameter "percent"

    .prologue
    .line 976
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller;->mProgressMessageText:Ljava/lang/String;

    .line 977
    iput p2, p0, Lcom/sprint/w/installer/PackUninstaller;->mProgressPercent:I

    .line 978
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mUpdateProgressMessage:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackUninstaller;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 979
    monitor-exit p0

    return-void

    .line 976
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private uninstallApp(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 6
    .parameter "i"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller;->mAppDeleteObserver:Landroid/content/pm/IPackageDeleteObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 910
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManagerSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_d
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManagerSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_46

    .line 915
    :goto_12
    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_43

    .line 916
    iget v0, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->id:I

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/PackUninstaller;->unregisterItem(I)V

    .line 917
    iget-object v0, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/PackUninstaller;->deleteWidgetFromHost(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 921
    return-void

    .line 915
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    .line 913
    :catch_46
    move-exception v0

    goto :goto_12
.end method

.method private uninstallRingtone(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 10
    .parameter "i"

    .prologue
    .line 873
    :try_start_0
    iget-object v3, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 875
    .local v0, cpUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 878
    .local v2, n:I
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Removed %d records"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 880
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_54

    .line 881
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 883
    :cond_54
    iget v3, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->id:I

    invoke-direct {p0, v3}, Lcom/sprint/w/installer/PackUninstaller;->unregisterItem(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    .line 887
    .end local v0           #cpUri:Landroid/net/Uri;
    .end local v2           #n:I
    :goto_59
    return-void

    .line 884
    :catch_5a
    move-exception v1

    .line 885
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to uninstall ringer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_59
.end method

.method private uninstallSelected()V
    .registers 4

    .prologue
    .line 763
    sget-object v1, Lcom/sprint/w/installer/PackUninstaller;->sProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/sprint/w/installer/PackUninstaller;->sProgressMessage:Landroid/widget/TextView;

    if-nez v1, :cond_10

    .line 764
    :cond_8
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Progress dialog not initialized!"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 845
    :goto_f
    return-void

    .line 767
    :cond_10
    sget-object v1, Lcom/sprint/w/installer/PackUninstaller;->sProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 768
    new-instance v0, Lcom/sprint/w/installer/PackUninstaller$7;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackUninstaller$7;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 844
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_f
.end method

.method private uninstallWallpaper(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    .registers 12
    .parameter "i"

    .prologue
    .line 892
    :try_start_0
    iget-object v4, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, fileName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpapers"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 894
    .local v3, wpDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 896
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 897
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 899
    iget v4, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->id:I

    invoke-direct {p0, v4}, Lcom/sprint/w/installer/PackUninstaller;->unregisterItem(I)V

    .line 900
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v6, "path=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 906
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #wpDir:Ljava/io/File;
    :goto_41
    return-void

    .line 903
    :catch_42
    move-exception v0

    .line 904
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to uninstall wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sprint/w/installer/PackUninstaller$Item;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_41
.end method

.method private unregisterItem(I)V
    .registers 9
    .parameter "id"

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 760
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sprint.w.isntaller.ACTION_REMOVE_PARTIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mRemovePartial:Z

    .line 86
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sprint.w.installer.EXTRA_PACK_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackId:Ljava/lang/String;

    .line 92
    :goto_23
    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    const v1, 0x7f0c0079

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonNext:Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonNext:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller;->mNextClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonNext:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    const v1, 0x7f0c0078

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonUncheckAll:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonUncheckAll:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller;->mUncheckAllClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonUncheckAll:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    const v1, 0x7f0c0077

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonCheckAll:Landroid/widget/Button;

    .line 102
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonCheckAll:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller;->mCheckAllClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mButtonCheckAll:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    const v1, 0x7f0c0009

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackIcon:Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackVersion:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackName:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Lcom/sprint/w/installer/PackUninstaller;->reloadAll()V

    .line 109
    return-void

    .line 89
    :cond_9e
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sprint.w.installer.EXTRA_PACK_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mPackId:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sprint.w.installer.EXTRA_EXCLUDE_PACK_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackUninstaller;->mExcludePackId:Ljava/lang/String;

    goto/16 :goto_23
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 724
    packed-switch p1, :pswitch_data_76

    .line 753
    :goto_4
    return-object v1

    .line 726
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060059

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060057

    new-instance v3, Lcom/sprint/w/installer/PackUninstaller$6;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/PackUninstaller$6;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/sprint/w/installer/PackUninstaller$5;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/PackUninstaller$5;-><init>(Lcom/sprint/w/installer/PackUninstaller;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 741
    :pswitch_34
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002c

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 742
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    sput-object v1, Lcom/sprint/w/installer/PackUninstaller;->sProgressBar:Landroid/widget/ProgressBar;

    .line 743
    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/sprint/w/installer/PackUninstaller;->sProgressMessage:Landroid/widget/TextView;

    .line 744
    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/sprint/w/installer/PackUninstaller;->sProgressPercent:Landroid/widget/TextView;

    .line 749
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 724
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5
        :pswitch_34
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/sprint/w/installer/PackUninstaller;->mBlockBackKey:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 997
    const/4 v0, 0x1

    .line 999
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method
