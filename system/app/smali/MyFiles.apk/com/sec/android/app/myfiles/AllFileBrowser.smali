.class public Lcom/sec/android/app/myfiles/AllFileBrowser;
.super Landroid/app/ListActivity;
.source "AllFileBrowser.java"


# static fields
.field private static bRefreshMediaEject:I

.field public static mLoader:Lcom/sec/android/app/myfiles/MediaLoader;

.field public static sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;


# instance fields
.field public a:Landroid/app/Activity;

.field public directoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

.field private mCurrentFolder:Ljava/lang/String;

.field private mCurrentSortBy:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeBtn:Landroid/view/View;

.field private mHomeDirectory:Ljava/lang/String;

.field private mInitRunnable:Ljava/lang/Runnable;

.field private mLastModifiedTime:J

.field private mListPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLoadingHandler:Landroid/os/Handler;

.field private mLoadingThread:Ljava/lang/Thread;

.field private mPleaseWaitString:Ljava/lang/String;

.field private mSdIcon:Landroid/widget/ImageView;

.field public mThreadState:I

.field private mTitlePath:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mUpBtn:Landroid/view/View;

.field private mWaitProgressDlg:Landroid/app/ProgressDialog;

.field public mWaitingHandler:Landroid/os/Handler;

.field public tempDirectoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;

    .line 117
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->bRefreshMediaEject:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->directoryEntries:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I

    .line 75
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mToast:Landroid/widget/Toast;

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLastModifiedTime:J

    .line 81
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeDirectory:Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 115
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mThreadState:I

    .line 119
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowser$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$1;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mInitRunnable:Ljava/lang/Runnable;

    .line 496
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$11;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLoadingHandler:Landroid/os/Handler;

    .line 769
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowser$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$13;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->browseToFolder()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->goToHomeDirectory()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/myfiles/AllFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mInitRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .prologue
    .line 58
    sget v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->bRefreshMediaEject:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->upOneLevel()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/AllFileBrowser;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/AllFileBrowser;ILjava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startManagedFileBrowser(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/AllFileBrowser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/myfiles/AllFileBrowser;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/AllFileBrowser;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/AllFileBrowser;[Ljava/io/File;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->fill([Ljava/io/File;)V

    return-void
.end method

.method private browseToFolder()V
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->browseToFolder(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private browseToFolder(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    if-nez p1, :cond_7

    .line 456
    :cond_6
    :goto_6
    return-void

    .line 380
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-nez v1, :cond_16

    .line 381
    new-instance v1, Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/myfiles/ListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    .line 387
    :cond_16
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 388
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setTitlePath(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setToolbarBtn(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/myfiles/AllFileBrowser$10;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser$10;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLoadingThread:Ljava/lang/Thread;

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLastModifiedTime:J

    .line 454
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLastModifiedTime:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    goto :goto_6
.end method

.method private createFolder()V
    .registers 4

    .prologue
    .line 651
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivity(Landroid/content/Intent;)V

    .line 654
    return-void
.end method

.method private details(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 729
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivity(Landroid/content/Intent;)V

    .line 732
    return-void
.end method

.method private declared-synchronized fill([Ljava/io/File;)V
    .registers 16
    .parameter "files"

    .prologue
    .line 629
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 631
    move-object v10, p1

    .local v10, arr$:[Ljava/io/File;
    array-length v12, v10

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_d
    if-ge v11, v12, :cond_4b

    aget-object v2, v10, v11

    .line 632
    .local v2, currentFile:Ljava/io/File;
    if-eqz v2, :cond_45

    .line 633
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->needThumbnail(Ljava/lang/String;)Z

    move-result v9

    .line 634
    .local v9, isImage:Z
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isHiddenItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 635
    iget-object v13, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v3, Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_48

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    :goto_3d
    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;ZZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v9           #isImage:Z
    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 635
    .restart local v9       #isImage:Z
    :cond_48
    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4d

    goto :goto_3d

    .line 644
    .end local v2           #currentFile:Ljava/io/File;
    .end local v9           #isImage:Z
    .end local v10           #arr$:[Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_4b
    monitor-exit p0

    return-void

    .line 629
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "f"

    .prologue
    .line 647
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private goToHomeDirectory()V
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Z)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method private hasItem()Z
    .registers 3

    .prologue
    .line 702
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 704
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2d

    .line 705
    :cond_25
    const v1, 0x7f09003e

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showToast(I)V

    .line 706
    const/4 v1, 0x0

    .line 709
    :goto_2c
    return v1

    :cond_2d
    const/4 v1, 0x1

    goto :goto_2c
.end method

.method private initToolbar()V
    .registers 6

    .prologue
    const v4, 0x7f0c003e

    const v2, 0x7f0c003c

    const v3, 0x7f0c0037

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mTitlePath:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mTitlePath:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mTitlePath:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mSdIcon:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeBtn:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v1, 0x7f0200c5

    const v2, 0x7f09000c

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeBtn:Landroid/view/View;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mUpBtn:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v1, 0x7f0200ca

    const v2, 0x7f09000d

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mUpBtn:Landroid/view/View;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setToolbarClickListener()V

    .line 173
    return-void
.end method

.method private rename(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 713
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 714
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivity(Landroid/content/Intent;)V

    .line 716
    return-void
.end method

.method private setTitlePath(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    const/4 v2, 0x3

    .line 541
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->enableSdIconOnTitlePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mSdIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    const v0, 0x7f0200a4

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setFeatureDrawableResource(II)V

    .line 550
    :goto_13
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mTitlePath:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->getShowingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    return-void

    .line 546
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mSdIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_13
.end method

.method private setToolbarBtn(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    const v4, 0x7f0c003e

    const v3, 0x7f0c003c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 527
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    .line 533
    :goto_1b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeDirectory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    .line 538
    :goto_30
    return-void

    .line 530
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    goto :goto_1b

    .line 536
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    goto :goto_30
.end method

.method private setToolbarClickListener()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeBtn:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeBtn:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowser$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$2;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mUpBtn:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mUpBtn:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowser$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$3;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_1c
    return-void
.end method

.method private share(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_10

    .line 721
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 722
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getShareMimeType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivity(Landroid/content/Intent;)V

    .line 726
    return-void
.end method

.method private showToast(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mToast:Landroid/widget/Toast;

    .line 205
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    return-void

    .line 203
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method private startManagedFileBrowser(I)V
    .registers 4
    .parameter "operation"

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startManagedFileBrowser(ILjava/lang/String;Z)V

    .line 681
    :cond_c
    return-void
.end method

.method private startManagedFileBrowser(ILjava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-string v1, "operation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    const-string v1, "item_select_complete"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 675
    return-void
.end method

.method private startRenameFileBrowser()V
    .registers 4

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivity(Landroid/content/Intent;)V

    .line 689
    :cond_17
    return-void
.end method

.method private startSendAppList()V
    .registers 3

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivity(Landroid/content/Intent;)V

    .line 694
    return-void
.end method

.method private startSettings()V
    .registers 3

    .prologue
    .line 697
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 698
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 699
    return-void
.end method

.method private upOneLevel()V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->getFolderParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Z)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method private declared-synchronized updateAdapter()V
    .registers 3

    .prologue
    .line 579
    monitor-enter p0

    :try_start_1
    const-string v0, "MyFiles"

    const-string v1, "AllFileBrowser-updaetAdapter => start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapter;->setListItems(Ljava/util/List;)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->notifyDataSetChanged()V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->start()V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setSelection(I)V

    .line 586
    :cond_2a
    const-string v0, "MyFiles"

    const-string v1, "AllFileBrowser-updaetAdapter => finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->directoryEntries:Ljava/util/List;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->tempDirectoryEntries:Ljava/util/List;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 590
    monitor-exit p0

    return-void

    .line 579
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 907
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 908
    const/4 v1, 0x6

    if-ne p1, v1, :cond_17

    .line 909
    if-ne p2, v2, :cond_16

    .line 910
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    .line 923
    :cond_16
    :goto_16
    return-void

    .line 913
    :cond_17
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x4

    if-ne p1, v1, :cond_16

    .line 914
    :cond_1d
    if-ne p2, v2, :cond_16

    .line 915
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, dstFolder:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 917
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 918
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    goto :goto_16
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 341
    const-string v0, "MyFiles"

    const-string v1, "AllFile:OnBackPressed - upOneLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->upOneLevel()V

    .line 350
    :goto_12
    return-void

    .line 344
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 347
    const-string v0, "MyFiles"

    const-string v1, "AllFile:OnBackPressed - super.onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_12
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 234
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/myfiles/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 235
    .local v1, contextItem:Lcom/sec/android/app/myfiles/SimpleItem;
    if-nez v1, :cond_14

    .line 286
    :goto_13
    return v6

    .line 238
    :cond_14
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, file:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_78

    goto :goto_13

    .line 242
    :pswitch_24
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->share(Ljava/lang/String;)V

    goto :goto_13

    .line 246
    :pswitch_28
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->rename(Ljava/lang/String;)V

    goto :goto_13

    .line 250
    :pswitch_2c
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 251
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v6}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startManagedFileBrowser(ILjava/lang/String;Z)V

    goto :goto_13

    .line 255
    :pswitch_36
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 256
    const/4 v4, 0x4

    invoke-direct {p0, v4, v2, v6}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startManagedFileBrowser(ILjava/lang/String;Z)V

    goto :goto_13

    .line 260
    :pswitch_40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090003

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 262
    const v4, 0x7f09004e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 263
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 264
    const v4, 0x7f090011

    new-instance v5, Lcom/sec/android/app/myfiles/AllFileBrowser$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowser$4;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    const v4, 0x7f090012

    new-instance v5, Lcom/sec/android/app/myfiles/AllFileBrowser$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$5;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_13

    .line 281
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :pswitch_73
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->details(Ljava/lang/String;)V

    goto :goto_13

    .line 240
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
        :pswitch_40
        :pswitch_2c
        :pswitch_36
        :pswitch_73
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "MyFiles"

    const-string v1, "AllFile:onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->requestWindowFeature(I)Z

    .line 132
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setContentView(I)V

    .line 134
    new-instance v0, Lcom/sec/android/app/myfiles/MediaLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/myfiles/MediaLoader;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLoader:Lcom/sec/android/app/myfiles/MediaLoader;

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->a:Landroid/app/Activity;

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->initToolbar()V

    .line 137
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mPleaseWaitString:Ljava/lang/String;

    .line 139
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 142
    sput-object p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->registerForContextMenu(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 209
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 211
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/myfiles/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 212
    .local v1, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-nez v1, :cond_11

    .line 230
    :goto_10
    return-void

    .line 215
    :cond_11
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 217
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->isFile()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isForwardable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 218
    const v2, 0x7f090001

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 225
    :cond_36
    const/4 v2, 0x2

    const v3, 0x7f090003

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 226
    const/4 v2, 0x4

    const v3, 0x7f090006

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 227
    const/4 v2, 0x3

    const v3, 0x7f090007

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 228
    const/4 v2, 0x1

    const v3, 0x7f090008

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 229
    const/4 v2, 0x5

    const v3, 0x7f090025

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_10
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0x7f090012

    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_46

    .line 335
    :goto_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 300
    :pswitch_10
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 301
    const/high16 v1, 0x7f06

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/app/myfiles/AllFileBrowser$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$6;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowser$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$7;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 316
    :pswitch_2a
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 317
    const v1, 0x7f060001

    iget v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I

    new-instance v3, Lcom/sec/android/app/myfiles/AllFileBrowser$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$8;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowser$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$9;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 298
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_10
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 839
    const-string v0, "MyFiles"

    const-string v1, "AllFile:onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Z)V

    .line 841
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 842
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 596
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 597
    const/4 v4, 0x0

    .line 598
    .local v4, item:Lcom/sec/android/app/myfiles/SimpleItem;
    const/4 v5, 0x0

    .line 601
    .local v5, selectedFileString:Ljava/lang/String;
    :try_start_5
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    move-object v4, v0

    .line 602
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_1f

    move-result-object v5

    .line 608
    const-string v6, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 609
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->upOneLevel()V

    .line 625
    :goto_1e
    return-void

    .line 603
    :catch_1f
    move-exception v1

    .line 604
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 611
    .end local v1           #e:Ljava/lang/Exception;
    :cond_24
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 612
    .local v2, firstPostion:I
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 615
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, folderName:Ljava/lang/String;
    iput-object v3, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 617
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Z)V

    .line 618
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/myfiles/AllFileBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 622
    .end local v3           #folderName:Ljava/lang/String;
    :cond_4f
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I

    invoke-static {v6, p0, v7, v8}, Lcom/sec/android/app/myfiles/FileUtils;->openFile(Ljava/io/File;Landroid/app/Activity;ZI)V

    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 855
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 856
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 903
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_11
    return v0

    .line 858
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startSendAppList()V

    goto :goto_11

    .line 862
    :pswitch_16
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->createFolder()V

    goto :goto_11

    .line 866
    :pswitch_1a
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 870
    :pswitch_1f
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 874
    :pswitch_24
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 878
    :pswitch_29
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startRenameFileBrowser()V

    goto :goto_11

    .line 882
    :pswitch_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showDialog(I)V

    goto :goto_11

    .line 886
    :pswitch_32
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showDialog(I)V

    goto :goto_11

    .line 898
    :pswitch_36
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->startSettings()V

    goto :goto_11

    .line 856
    :pswitch_data_3a
    .packed-switch 0x7f0c0050
        :pswitch_12
        :pswitch_16
        :pswitch_24
        :pswitch_32
        :pswitch_2d
        :pswitch_1a
        :pswitch_1f
        :pswitch_29
        :pswitch_36
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 825
    const-string v0, "MyFiles"

    const-string v1, "AllFile:OnPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-eqz v0, :cond_10

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    .line 829
    :cond_10
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 830
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 290
    if-ne p1, v2, :cond_d

    .line 291
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 292
    .local v0, lv:Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 294
    .end local v0           #lv:Landroid/widget/ListView;
    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 792
    const-string v0, "MyFiles"

    const-string v1, "AllFile:onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setToolbarClickListener()V

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mHomeDirectory:Ljava/lang/String;

    .line 799
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLastModifiedTime:J

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setTitlePath(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setToolbarBtn(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-eqz v1, :cond_69

    iget-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLastModifiedTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    iget-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mLastModifiedTime:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_83

    .line 809
    :cond_69
    const-string v0, "MyFiles"

    const-string v1, "refresh!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sput-object p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowser;

    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 814
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Z)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 821
    :cond_7f
    :goto_7f
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 822
    return-void

    .line 818
    :cond_83
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-eqz v0, :cond_7f

    iget v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mThreadState:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_7f

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->start()V

    goto :goto_7f
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 833
    const-string v0, "MyFiles"

    const-string v1, "AllFile:onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 836
    return-void
.end method

.method public refreshActivity(Z)V
    .registers 6
    .parameter "goToRoot"

    .prologue
    const/4 v3, 0x0

    .line 735
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allfile-refreshActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-eqz p1, :cond_2a

    .line 738
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 739
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->bRefreshMediaEject:I

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 747
    :goto_29
    return-void

    .line 744
    :cond_2a
    sput v3, Lcom/sec/android/app/myfiles/AllFileBrowser;->bRefreshMediaEject:I

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_29
.end method

.method public declared-synchronized showWaitProgressDialog(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 930
    monitor-enter p0

    :try_start_1
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWaitProgressDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-eqz p2, :cond_46

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_38

    .line 933
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getParent()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 940
    :goto_2c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowser$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowser$14;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_43

    .line 956
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 935
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_43

    goto :goto_2c

    .line 930
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    .line 952
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_36

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    goto :goto_36
.end method

.method public showWaitProgressDialog(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mPleaseWaitString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Ljava/lang/String;Z)V

    .line 927
    return-void
.end method
