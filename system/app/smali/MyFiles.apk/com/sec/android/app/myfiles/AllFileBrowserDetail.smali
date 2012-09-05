.class public Lcom/sec/android/app/myfiles/AllFileBrowserDetail;
.super Landroid/app/ListActivity;
.source "AllFileBrowserDetail.java"


# static fields
.field public static mLoader:Lcom/sec/android/app/myfiles/MediaLoader;

.field public static sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;


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

.field private mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

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
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->directoryEntries:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->tempDirectoryEntries:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I

    .line 77
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mToast:Landroid/widget/Toast;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLastModifiedTime:J

    .line 83
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHomeDirectory:Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 117
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mThreadState:I

    .line 119
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$1;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mInitRunnable:Ljava/lang/Runnable;

    .line 443
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLoadingHandler:Landroid/os/Handler;

    .line 706
    new-instance v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->browseToFolder()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->goToHomeDirectory()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Lcom/sec/android/app/myfiles/ListAdapterDetail;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mInitRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->upOneLevel()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;ILjava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;[Ljava/io/File;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->fill([Ljava/io/File;)V

    return-void
.end method

.method private browseToFolder()V
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->browseToFolder(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private browseToFolder(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_6

    if-nez p1, :cond_7

    .line 416
    :cond_6
    :goto_6
    return-void

    .line 365
    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->showWaitProgressDialog(Z)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    if-nez v1, :cond_1a

    .line 368
    new-instance v1, Lcom/sec/android/app/myfiles/ListAdapterDetail;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/myfiles/ListAdapterDetail;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    .line 373
    :cond_1a
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 376
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setTitlePath(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setToolbarBtn(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$10;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$10;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLoadingThread:Ljava/lang/Thread;

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 410
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLastModifiedTime:J

    .line 414
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLastModifiedTime:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    goto :goto_6
.end method

.method private createFolder()V
    .registers 4

    .prologue
    .line 592
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivity(Landroid/content/Intent;)V

    .line 595
    return-void
.end method

.method private details(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 670
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivity(Landroid/content/Intent;)V

    .line 673
    return-void
.end method

.method private declared-synchronized fill([Ljava/io/File;)V
    .registers 16
    .parameter "files"

    .prologue
    .line 572
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 573
    move-object v10, p1

    .local v10, arr$:[Ljava/io/File;
    array-length v12, v10

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_9
    if-ge v11, v12, :cond_47

    aget-object v2, v10, v11

    .line 574
    .local v2, currentFile:Ljava/io/File;
    if-eqz v2, :cond_41

    .line 575
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->needThumbnail(Ljava/lang/String;)Z

    move-result v9

    .line 576
    .local v9, isImage:Z
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isHiddenItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 577
    iget-object v13, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->tempDirectoryEntries:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v3, Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    :goto_39
    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;ZZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v9           #isImage:Z
    :cond_41
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 577
    .restart local v9       #isImage:Z
    :cond_44
    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_49

    goto :goto_39

    .line 584
    .end local v2           #currentFile:Ljava/io/File;
    .end local v9           #isImage:Z
    :cond_47
    monitor-exit p0

    return-void

    .line 572
    .end local v10           #arr$:[Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "f"

    .prologue
    .line 588
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private goToHomeDirectory()V
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHomeDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method private hasItem()Z
    .registers 3

    .prologue
    .line 643
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
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

    .line 645
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->getCount()I

    move-result v1

    if-nez v1, :cond_2d

    .line 646
    :cond_25
    const v1, 0x7f09003e

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->showToast(I)V

    .line 647
    const/4 v1, 0x0

    .line 650
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

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mTitlePath:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mTitlePath:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mTitlePath:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mSdIcon:Landroid/widget/ImageView;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHomeBtn:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v1, 0x7f0200c5

    const v2, 0x7f09000c

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mUpBtn:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v1, 0x7f0200ca

    const v2, 0x7f09000d

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 171
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setToolbarClickListener()V

    .line 172
    return-void
.end method

.method private rename(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 654
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 655
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivity(Landroid/content/Intent;)V

    .line 657
    return-void
.end method

.method private setTitlePath(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    const/4 v2, 0x3

    .line 486
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->enableSdIconOnTitlePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mSdIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    const v0, 0x7f0200a4

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setFeatureDrawableResource(II)V

    .line 495
    :goto_13
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mTitlePath:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->getShowingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    return-void

    .line 491
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mSdIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

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

    .line 472
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    .line 478
    :goto_1b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHomeDirectory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    .line 483
    :goto_30
    return-void

    .line 475
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setEnabled(Z)V

    goto :goto_1b

    .line 481
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

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
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHomeBtn:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHomeBtn:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$2;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mUpBtn:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mUpBtn:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$3;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_1c
    return-void
.end method

.method private share(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 660
    const/4 v1, 0x0

    .line 661
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_10

    .line 662
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 663
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getShareMimeType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 666
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivity(Landroid/content/Intent;)V

    .line 667
    return-void
.end method

.method private showToast(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 195
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mToast:Landroid/widget/Toast;

    .line 200
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    return-void

    .line 198
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method private startManagedFileBrowser(I)V
    .registers 4
    .parameter "operation"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(ILjava/lang/String;Z)V

    .line 622
    :cond_c
    return-void
.end method

.method private startManagedFileBrowser(ILjava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v1, "operation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string v1, "item_select_complete"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 616
    return-void
.end method

.method private startRenameFileBrowser()V
    .registers 4

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 626
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivity(Landroid/content/Intent;)V

    .line 630
    :cond_17
    return-void
.end method

.method private startSendAppList()V
    .registers 3

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/SendAppListDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivity(Landroid/content/Intent;)V

    .line 635
    return-void
.end method

.method private startSettings()V
    .registers 3

    .prologue
    .line 638
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 640
    return-void
.end method

.method private upOneLevel()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->getFolderParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method private declared-synchronized updateAdapter()V
    .registers 3

    .prologue
    .line 524
    monitor-enter p0

    :try_start_1
    const-string v0, "MyFiles"

    const-string v1, "DetailFileBrowser-updaetAdapter => start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->tempDirectoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->setListItems(Ljava/util/List;)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->notifyDataSetChanged()V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->start()V

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setSelection(I)V

    .line 531
    :cond_2a
    const-string v0, "MyFiles"

    const-string v1, "DetailFileBrowser-updaetAdapter => finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->tempDirectoryEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->directoryEntries:Ljava/util/List;

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->tempDirectoryEntries:Ljava/util/List;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 535
    monitor-exit p0

    return-void

    .line 524
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

    .line 835
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 836
    const/4 v1, 0x6

    if-ne p1, v1, :cond_17

    .line 837
    if-ne p2, v2, :cond_16

    .line 838
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    .line 852
    :cond_16
    :goto_16
    return-void

    .line 841
    :cond_17
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x4

    if-ne p1, v1, :cond_16

    .line 842
    :cond_1d
    if-ne p2, v2, :cond_16

    .line 843
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, dstFolder:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 846
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 847
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    goto :goto_16
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 333
    const-string v0, "MyFiles"

    const-string v1, "AllFileDetail:OnBackPressed - upOneLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->upOneLevel()V

    .line 341
    :goto_12
    return-void

    .line 336
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setLastModifiedTime(J)V

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentDirectory(Ljava/lang/String;)V

    .line 338
    const-string v0, "MyFiles"

    const-string v1, "AllFileDetail:OnBackPressed - super.onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_12
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 228
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 229
    .local v1, contextItem:Lcom/sec/android/app/myfiles/SimpleItem;
    if-nez v1, :cond_14

    .line 279
    :goto_13
    return v6

    .line 231
    :cond_14
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, file:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_78

    goto :goto_13

    .line 235
    :pswitch_24
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->share(Ljava/lang/String;)V

    goto :goto_13

    .line 239
    :pswitch_28
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->rename(Ljava/lang/String;)V

    goto :goto_13

    .line 243
    :pswitch_2c
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 244
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v6}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(ILjava/lang/String;Z)V

    goto :goto_13

    .line 248
    :pswitch_36
    iget-object v4, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 249
    const/4 v4, 0x4

    invoke-direct {p0, v4, v2, v6}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(ILjava/lang/String;Z)V

    goto :goto_13

    .line 253
    :pswitch_40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090003

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 255
    const v4, 0x7f09004e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 256
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 257
    const v4, 0x7f090011

    new-instance v5, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    const v4, 0x7f090012

    new-instance v5, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$5;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_13

    .line 274
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :pswitch_73
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->details(Ljava/lang/String;)V

    goto :goto_13

    .line 233
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

    .line 128
    const-string v0, "MyFiles"

    const-string v1, "AllFileDatail:onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->requestWindowFeature(I)Z

    .line 131
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setContentView(I)V

    .line 133
    new-instance v0, Lcom/sec/android/app/myfiles/MediaLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/myfiles/MediaLoader;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLoader:Lcom/sec/android/app/myfiles/MediaLoader;

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->a:Landroid/app/Activity;

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->initToolbar()V

    .line 136
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mPleaseWaitString:Ljava/lang/String;

    .line 138
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 141
    sput-object p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->registerForContextMenu(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 204
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 206
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 207
    .local v1, item:Lcom/sec/android/app/myfiles/SimpleItem;
    if-nez v1, :cond_11

    .line 224
    :goto_10
    return-void

    .line 209
    :cond_11
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 211
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->isFile()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isForwardable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 212
    const v2, 0x7f090001

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 219
    :cond_36
    const/4 v2, 0x2

    const v3, 0x7f090003

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 220
    const/4 v2, 0x4

    const v3, 0x7f090006

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 221
    const/4 v2, 0x3

    const v3, 0x7f090007

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 222
    const/4 v2, 0x1

    const v3, 0x7f090008

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 223
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

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_46

    .line 328
    :goto_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 293
    :pswitch_10
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 294
    const/high16 v1, 0x7f06

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$6;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$7;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 309
    :pswitch_2a
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 310
    const v1, 0x7f060001

    iget v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I

    new-instance v3, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$9;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 291
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_10
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 767
    const-string v0, "MyFiles"

    const-string v1, "AllFileDetail:onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->showWaitProgressDialog(Z)V

    .line 769
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 770
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 541
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 542
    const/4 v4, 0x0

    .line 543
    .local v4, item:Lcom/sec/android/app/myfiles/SimpleItem;
    const/4 v5, 0x0

    .line 546
    .local v5, selectedFileString:Ljava/lang/String;
    :try_start_5
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->directoryEntries:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    move-object v4, v0

    .line 547
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_1f

    move-result-object v5

    .line 553
    const-string v6, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 554
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->upOneLevel()V

    .line 568
    :goto_1e
    return-void

    .line 548
    :catch_1f
    move-exception v1

    .line 549
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 556
    .end local v1           #e:Ljava/lang/Exception;
    :cond_24
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 557
    .local v2, firstPostion:I
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 560
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, folderName:Ljava/lang/String;
    iput-object v3, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    .line 562
    iget-object v6, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 565
    .end local v3           #folderName:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I

    invoke-static {v6, p0, v7, v8}, Lcom/sec/android/app/myfiles/FileUtils;->openFile(Ljava/io/File;Landroid/app/Activity;ZI)V

    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 783
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 784
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 831
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_11
    return v0

    .line 786
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startSendAppList()V

    goto :goto_11

    .line 790
    :pswitch_16
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->createFolder()V

    goto :goto_11

    .line 794
    :pswitch_1a
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 798
    :pswitch_1f
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 802
    :pswitch_24
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(I)V

    goto :goto_11

    .line 806
    :pswitch_29
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startRenameFileBrowser()V

    goto :goto_11

    .line 810
    :pswitch_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->showDialog(I)V

    goto :goto_11

    .line 814
    :pswitch_32
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->showDialog(I)V

    goto :goto_11

    .line 826
    :pswitch_36
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startSettings()V

    goto :goto_11

    .line 784
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
    .line 753
    const-string v0, "MyFiles"

    const-string v1, "AllFileDetail:OnPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    if-eqz v0, :cond_10

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->pause()V

    .line 757
    :cond_10
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 758
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 283
    if-ne p1, v1, :cond_c

    .line 284
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 285
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 287
    .end local v0           #lv:Landroid/widget/ListView;
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 720
    const-string v0, "MyFiles"

    const-string v1, "AllFileDetail:onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setToolbarClickListener()V

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    .line 726
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mHomeDirectory:Ljava/lang/String;

    .line 727
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getLastModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLastModifiedTime:J

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setTitlePath(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setToolbarBtn(Ljava/lang/String;)V

    .line 731
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    if-eqz v1, :cond_69

    iget-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLastModifiedTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_69

    iget-wide v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mLastModifiedTime:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_7f

    .line 737
    :cond_69
    const-string v0, "MyFiles"

    const-string v1, "refresh!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    sput-object p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->sMyThis:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 749
    :cond_7b
    :goto_7b
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 750
    return-void

    .line 743
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    if-eqz v0, :cond_7b

    iget v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mThreadState:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_7b

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->notifyDataSetChanged()V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->start()V

    goto :goto_7b
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 761
    const-string v0, "MyFiles"

    const-string v1, "AllFileDetail:onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 764
    return-void
.end method

.method public refreshActivity(Z)V
    .registers 6
    .parameter "goToRoot"

    .prologue
    const/4 v3, 0x0

    .line 676
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allfiledetail-refreshActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-eqz p1, :cond_27

    .line 679
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 686
    :goto_26
    return-void

    .line 683
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26
.end method

.method public declared-synchronized showWaitProgressDialog(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 859
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

    .line 860
    if-eqz p2, :cond_46

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_38

    .line 862
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 869
    :goto_2c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$14;-><init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_43

    .line 885
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 864
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_43

    goto :goto_2c

    .line 859
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    .line 881
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_36

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    goto :goto_36
.end method

.method public showWaitProgressDialog(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mPleaseWaitString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->showWaitProgressDialog(Ljava/lang/String;Z)V

    .line 856
    return-void
.end method
