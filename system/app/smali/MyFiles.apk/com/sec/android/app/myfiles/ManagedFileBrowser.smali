.class public Lcom/sec/android/app/myfiles/ManagedFileBrowser;
.super Landroid/app/ListActivity;
.source "ManagedFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;
    }
.end annotation


# static fields
.field private static mCheckBox:Landroid/widget/CheckBox;

.field private static mToast:Landroid/widget/Toast;

.field public static sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;


# instance fields
.field private ITEM_SELECT_MODE:Z

.field private cancelMsg:Ljava/lang/String;

.field private directoryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private errorMsg:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

.field private mCurrentFolder:Ljava/lang/String;

.field private mCurrentSortBy:I

.field private mErrorType:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManagerHandler:Landroid/os/Handler;

.field private mLeftButton:Landroid/widget/Button;

.field private mLeftSoftKeyClickListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingHandler:Landroid/os/Handler;

.field private mLoadingThread:Ljava/lang/Thread;

.field private mLocale:Ljava/lang/String;

.field private mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

.field private mOperation:I

.field private mOperationCanceled:Z

.field private mOperationFiles:[Ljava/io/File;

.field private mPleaseWaitString:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightButton:Landroid/widget/Button;

.field private mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

.field public mThreadState:I

.field private mTitlePath:Landroid/widget/TextView;

.field private mUnableDialog:Landroid/app/AlertDialog;

.field private mWaitProgressDlg:Landroid/app/ProgressDialog;

.field private operationName:Ljava/lang/String;

.field private tempDirectoryEntries:Ljava/util/List;
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
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    .line 119
    sput-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationFiles:[Ljava/io/File;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    .line 85
    const/16 v0, 0x63

    iput v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mHandler:Landroid/os/Handler;

    .line 89
    iput v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentSortBy:I

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    .line 105
    iput-boolean v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 113
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->cancelMsg:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 138
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mThreadState:I

    .line 151
    iput v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I

    .line 155
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    .line 426
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLoadingHandler:Landroid/os/Handler;

    .line 603
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$6;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftSoftKeyClickListener:Landroid/view/View$OnClickListener;

    .line 788
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$8;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mInputMethodManagerHandler:Landroid/os/Handler;

    .line 873
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressHandler:Landroid/os/Handler;

    .line 974
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setOperationName()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->initSoftKey()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentSortBy:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setOperationFiles()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->startFileOperation(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)[Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/myfiles/ManagedFileBrowser;[Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->copyPossible([Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setSoftKeyText()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showUnableDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/myfiles/ManagedFileBrowser;[Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->movePossible([Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setAsHome()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->cancelMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    return-object v0
.end method

.method static synthetic access$3000()Landroid/widget/CheckBox;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setAdapter()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/ManagedFileBrowser;[Ljava/io/File;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->fill([Ljava/io/File;)V

    return-void
.end method

.method private browseTo(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, dir:Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setTitlePath(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setSoftKeyText()V

    .line 373
    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    iget-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    if-eqz v1, :cond_25

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    :cond_25
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/myfiles/ManagedFileBrowser$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$3;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLoadingThread:Ljava/lang/Thread;

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 403
    const-string v1, "MyFiles"

    const-string v2, "finish browseTo : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method private browseToFolder()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private browseToFolder(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 363
    :cond_6
    :goto_6
    return-void

    .line 342
    :cond_7
    const-string v0, "MyFiles"

    const-string v1, "browseToFolder - path: start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-nez v0, :cond_27

    .line 345
    new-instance v0, Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/myfiles/ListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    .line 350
    :goto_1d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showWaitProgressDialog(Z)V

    .line 351
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseTo(Ljava/lang/String;)V

    .line 362
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    goto :goto_6

    .line 347
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    goto :goto_1d
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 2

    .prologue
    .line 968
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 972
    :cond_d
    monitor-exit p0

    return-void

    .line 968
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private copyPossible([Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "srcFiles"
    .parameter "dstFolder"

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->moveToSubFolder([Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 636
    const/4 v0, 0x0

    .line 638
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private createFolder()V
    .registers 4

    .prologue
    .line 542
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method

.method private declared-synchronized fill([Ljava/io/File;)V
    .registers 25
    .parameter "files"

    .prologue
    .line 559
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 560
    if-eqz p1, :cond_9c

    .line 561
    move-object/from16 v20, p1

    .local v20, arr$:[Ljava/io/File;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_13
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_67

    aget-object v4, v20, v21

    .line 562
    .local v4, currentFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-nez v2, :cond_27

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 563
    :cond_27
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Utils;->isHiddenItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 564
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->needThumbnail(Ljava/lang/String;)Z

    move-result v11

    .line 565
    .local v11, isImage:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v5, Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_64

    sget-object v9, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    :goto_58
    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;ZZ)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    .end local v11           #isImage:Z
    :cond_61
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    .line 565
    .restart local v11       #isImage:Z
    :cond_64
    sget-object v9, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    goto :goto_58

    .line 572
    .end local v4           #currentFile:Ljava/io/File;
    .end local v11           #isImage:Z
    :cond_67
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-eqz v2, :cond_9e

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v12, Lcom/sec/android/app/myfiles/SimpleItem;

    const/4 v14, 0x0

    new-instance v15, Lcom/sec/android/app/myfiles/SimpleIcon;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v15, v5, v6}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    invoke-interface {v2, v3, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V
    :try_end_9c
    .catchall {:try_start_1 .. :try_end_9c} :catchall_c6

    .line 583
    .end local v20           #arr$:[Ljava/io/File;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :cond_9c
    :goto_9c
    monitor-exit p0

    return-void

    .line 578
    .restart local v20       #arr$:[Ljava/io/File;
    .restart local v21       #i$:I
    .restart local v22       #len$:I
    :cond_9e
    :try_start_9e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v12, Lcom/sec/android/app/myfiles/SimpleItem;

    const/4 v14, 0x0

    new-instance v15, Lcom/sec/android/app/myfiles/SimpleIcon;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v15, v5, v6}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    invoke-interface {v2, v3, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V
    :try_end_c5
    .catchall {:try_start_9e .. :try_end_c5} :catchall_c6

    goto :goto_9c

    .line 559
    .end local v20           #arr$:[Ljava/io/File;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :catchall_c6
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getErrorString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 704
    const-string v0, ""

    .line 706
    .local v0, error:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I

    packed-switch v1, :pswitch_data_44

    .line 724
    :goto_7
    return-object v0

    .line 708
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 709
    goto :goto_7

    .line 711
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    goto :goto_7

    .line 714
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    goto :goto_7

    .line 717
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    goto :goto_7

    .line 720
    :pswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 706
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_8
        :pswitch_14
        :pswitch_20
        :pswitch_2c
        :pswitch_38
    .end packed-switch
.end method

.method private getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "f"

    .prologue
    .line 587
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getOperationName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 693
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 700
    :goto_10
    return-object v0

    .line 695
    :cond_11
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    .line 696
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 697
    :cond_22
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 700
    :cond_33
    const-string v0, ""

    goto :goto_10
.end method

.method private initSoftKey()V
    .registers 3

    .prologue
    .line 591
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SoftKeyLayout;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mRightButton:Landroid/widget/Button;

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftSoftKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->cancelMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$5;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    return-void
.end method

.method private initTitlePath()V
    .registers 3

    .prologue
    .line 301
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mTitlePath:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mTitlePath:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mTitlePath:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 304
    return-void
.end method

.method private isSubFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 665
    :goto_0
    invoke-static {p2}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 666
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 667
    const/4 v0, 0x1

    .line 671
    :goto_d
    return v0

    .line 668
    :cond_e
    invoke-static {p2}, Lcom/sec/android/app/myfiles/Utils;->getFolderParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 671
    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private movePossible([Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .parameter "srcFiles"
    .parameter "dstFolder"

    .prologue
    const/4 v0, 0x0

    .line 642
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;

    .line 644
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I

    .line 650
    :cond_25
    :goto_25
    return v0

    .line 647
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->moveToSubFolder([Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 650
    const/4 v0, 0x1

    goto :goto_25
.end method

.method private moveToSubFolder([Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .parameter "srcFiles"
    .parameter "dstFolder"

    .prologue
    .line 654
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_2c

    aget-object v1, v0, v2

    .line 655
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->isSubFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;

    .line 657
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I

    .line 658
    const/4 v4, 0x1

    .line 661
    .end local v1           #f:Ljava/io/File;
    :goto_28
    return v4

    .line 654
    .restart local v1       #f:Ljava/io/File;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 661
    .end local v1           #f:Ljava/io/File;
    :cond_2c
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private declared-synchronized setAdapter()V
    .registers 3

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapter;->setListItems(Ljava/util/List;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->notifyDataSetChanged()V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->start()V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setSelection(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 259
    :cond_23
    monitor-exit p0

    return-void

    .line 253
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setAsHome()V
    .registers 4

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 729
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "home_directory_path"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setResult(ILandroid/content/Intent;)V

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->finish()V

    .line 732
    return-void
.end method

.method private setBroadcastReceiver()V
    .registers 3

    .prologue
    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 287
    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$2;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    return-void
.end method

.method private setFastScroller(I)V
    .registers 4
    .parameter "itemCount"

    .prologue
    .line 328
    const/16 v0, 0x32

    if-le p1, v0, :cond_b

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 332
    :goto_a
    return-void

    .line 331
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_a
.end method

.method private setLocaleReceiver()V
    .registers 3

    .prologue
    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$1;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    return-void
.end method

.method private setOperationFiles()Z
    .registers 2

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setOperationFiles(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setOperationFiles(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 752
    const-string v0, "MyFiles"

    const-string v2, "setOperationFiles start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 755
    if-eqz p1, :cond_27

    .line 756
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 758
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_1d
    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_25
    move v0, v1

    .line 775
    :goto_26
    return v0

    .line 761
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 762
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->isReal()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 763
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 770
    :cond_4d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationFiles:[Ljava/io/File;

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationFiles:[Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 773
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    .line 774
    const-string v0, "MyFiles"

    const-string v1, "setOperationFiles finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private setOperationName()V
    .registers 3

    .prologue
    .line 307
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;

    .line 314
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->cancelMsg:Ljava/lang/String;

    .line 315
    return-void

    .line 309
    :cond_20
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;

    goto :goto_12

    .line 311
    :cond_33
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;

    goto :goto_12
.end method

.method private setSoftKeyText()V
    .registers 3

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-eqz v0, :cond_c

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :cond_b
    :goto_b
    return-void

    .line 738
    :cond_c
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_b

    .line 740
    :cond_1a
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_28

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_b

    .line 742
    :cond_28
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_b
.end method

.method private setTitlePath(Ljava/lang/String;)V
    .registers 4
    .parameter "path"

    .prologue
    const/4 v1, 0x3

    .line 318
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->enableSdIconOnTitlePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 319
    const v0, 0x7f0200a4

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setFeatureDrawableResource(II)V

    .line 324
    :goto_d
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mTitlePath:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->getShowingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void

    .line 322
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_d
.end method

.method private showUnableDialog()V
    .registers 4

    .prologue
    .line 675
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_32

    .line 676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getOperationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 678
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 679
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 680
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 681
    const v1, 0x7f090011

    new-instance v2, Lcom/sec/android/app/myfiles/ManagedFileBrowser$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$7;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    .line 689
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 690
    return-void
.end method

.method private startFileOperation(I)V
    .registers 9
    .parameter "operation"

    .prologue
    .line 860
    const/16 v0, 0x63

    if-ne p1, v0, :cond_5

    .line 871
    :goto_4
    return-void

    .line 864
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 865
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationFiles:[Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressHandler:Landroid/os/Handler;

    move v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;-><init>([Ljava/io/File;Ljava/lang/String;ILandroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->start()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_4

    .line 868
    :catch_20
    move-exception v6

    .line 869
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private upOneLevel()V
    .registers 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->getFolderParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, parentFolder:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 450
    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder(Ljava/lang/String;)V

    .line 451
    :cond_b
    return-void
.end method

.method private declared-synchronized updateAdapter()V
    .registers 3

    .prologue
    .line 410
    monitor-enter p0

    :try_start_1
    const-string v0, "MyFiles"

    const-string v1, "ManagedFileBrowser-updaetAdapter => start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setFastScroller(I)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapter;->setListItems(Ljava/util/List;)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->notifyDataSetChanged()V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->start()V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setSelection(I)V

    .line 420
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    .line 423
    const-string v0, "MyFiles"

    const-string v1, "ManagedFileBrowser-updaetAdapter => finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 424
    monitor-exit p0

    return-void

    .line 410
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 779
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 780
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 781
    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    .line 782
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder()V

    .line 785
    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 549
    const-string v0, "MyFiles"

    const-string v1, "onBackPressed - upOneLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->upOneLevel()V

    .line 555
    :goto_16
    return-void

    .line 552
    :cond_17
    const-string v0, "MyFiles"

    const-string v1, "onBackPressed - super.onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_16
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 206
    const-string v0, "Debug"

    const-string v1, "Managed: onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mUnableDialog:Landroid/app/AlertDialog;

    .line 211
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showUnableDialog()V

    .line 214
    :cond_38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const-string v3, "MyFiles"

    const-string v4, "Managed:onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->requestWindowFeature(I)Z

    .line 164
    const v3, 0x7f030011

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setContentView(I)V

    .line 165
    sput-object p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, mPath:Ljava/lang/String;
    const-string v3, "operation"

    const/16 v4, 0x63

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    .line 170
    const-string v3, "item_select_complete"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 172
    .local v1, itemSelectComplete:Z
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->initTitlePath()V

    .line 173
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setOperationName()V

    .line 175
    const v3, 0x7f090033

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mPleaseWaitString:Ljava/lang/String;

    .line 177
    if-eqz v1, :cond_61

    .line 178
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setOperationFiles(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->finish()V

    .line 202
    :goto_4c
    return-void

    .line 182
    :cond_4d
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 183
    iget v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    if-ne v3, v6, :cond_6a

    .line 184
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setContentView(I)V

    .line 185
    invoke-direct {p0, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->startFileOperation(I)V

    goto :goto_4c

    .line 189
    :cond_61
    iput-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 190
    iget v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6a

    .line 191
    iput-boolean v5, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    .line 194
    :cond_6a
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentSortBy:I

    .line 195
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 197
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->initSoftKey()V

    .line 198
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setLocaleReceiver()V

    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setBroadcastReceiver()V

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder(Ljava/lang/String;)V

    goto :goto_4c
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 843
    const-string v0, "MyFiles"

    const-string v1, "Managed:onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->closeProgressDialog()V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    iput-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 852
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_21

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 854
    iput-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 856
    :cond_21
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 857
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 21
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 454
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 459
    :try_start_3
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 460
    .local v7, item:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_3e

    move-result-object v12

    .line 466
    .local v12, selectedFileString:Ljava/lang/String;
    iget-boolean v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-eqz v13, :cond_e5

    .line 467
    sget-object v13, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_45

    .line 468
    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v13

    if-nez v13, :cond_43

    const/4 v10, 0x1

    .line 470
    .local v10, select:Z
    :goto_28
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_79

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 471
    .local v5, i:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v5, v10}, Lcom/sec/android/app/myfiles/SimpleItem;->setChecking(Z)V

    goto :goto_2e

    .line 461
    .end local v5           #i:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v10           #select:Z
    .end local v12           #selectedFileString:Ljava/lang/String;
    :catch_3e
    move-exception v2

    .line 462
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    .end local v2           #e:Ljava/lang/Exception;
    :cond_42
    :goto_42
    return-void

    .line 468
    .restart local v7       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .restart local v12       #selectedFileString:Ljava/lang/String;
    :cond_43
    const/4 v10, 0x0

    goto :goto_28

    .line 474
    :cond_45
    if-ltz p3, :cond_79

    .line 475
    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v13

    if-nez v13, :cond_9c

    const/4 v13, 0x1

    :goto_4e
    invoke-virtual {v7, v13}, Lcom/sec/android/app/myfiles/SimpleItem;->setChecking(Z)V

    .line 477
    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v13

    if-nez v13, :cond_9e

    .line 478
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 479
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    :cond_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_79

    .line 480
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 481
    .local v9, sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    sget-object v13, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 482
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/sec/android/app/myfiles/SimpleItem;->setChecking(Z)V

    .line 510
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    .end local v9           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_79
    :goto_79
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 511
    .restart local v8       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    :cond_7f
    :goto_7f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_42

    .line 512
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 513
    .restart local v9       #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v13

    if-eqz v13, :cond_da

    .line 514
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    if-eqz v13, :cond_42

    .line 515
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_42

    .line 475
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    .end local v9           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_9c
    const/4 v13, 0x0

    goto :goto_4e

    .line 487
    :cond_9e
    const/4 v1, 0x0

    .line 488
    .local v1, checkCount:I
    const/4 v11, 0x0

    .line 489
    .local v11, selectAllItem:Lcom/sec/android/app/myfiles/SimpleItem;
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 491
    .restart local v8       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    :goto_a6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c9

    .line 492
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 493
    .restart local v9       #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    sget-object v13, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c0

    .line 494
    move-object v11, v9

    goto :goto_a6

    .line 496
    :cond_c0
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v13

    if-eqz v13, :cond_c9

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    .line 503
    .end local v9           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_c9
    if-eqz v11, :cond_79

    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v13, v1, :cond_79

    .line 504
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/sec/android/app/myfiles/SimpleItem;->setChecking(Z)V

    goto :goto_79

    .line 518
    .end local v1           #checkCount:I
    .end local v11           #selectAllItem:Lcom/sec/android/app/myfiles/SimpleItem;
    .restart local v9       #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_da
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    if-eqz v13, :cond_7f

    .line 519
    iget-object v13, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLeftButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7f

    .line 522
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    .end local v9           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_e5
    const-string v13, ".."

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 523
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->upOneLevel()V

    goto/16 :goto_42

    .line 524
    :cond_f2
    sget-object v13, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_103

    .line 525
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->createFolder()V

    goto/16 :goto_42

    .line 527
    :cond_103
    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_126

    .line 528
    invoke-virtual {v7}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, folderName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_121

    .line 531
    invoke-direct {p0, v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 533
    :cond_121
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder()V

    goto/16 :goto_42

    .line 535
    .end local v3           #folder:Ljava/io/File;
    .end local v4           #folderName:Ljava/lang/String;
    :cond_126
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder()V

    goto/16 :goto_42
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 827
    const-string v0, "MyFiles"

    const-string v1, "Managed:onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-eqz v0, :cond_10

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    .line 830
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mLocale:Ljava/lang/String;

    .line 831
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 832
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 805
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 806
    const-string v0, "MyFiles"

    const-string v1, "Managed:onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_14

    .line 809
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->finish()V

    .line 824
    :cond_13
    :goto_13
    return-void

    .line 815
    :cond_14
    const-string v0, "clipboardEx"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 816
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 817
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 819
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mInputMethodManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-nez v0, :cond_13

    .line 823
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->browseToFolder()V

    goto :goto_13
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 835
    const-string v0, "MyFiles"

    const-string v1, "Managed:onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 840
    return-void
.end method

.method public declared-synchronized showWaitProgressDialog(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1398
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

    .line 1399
    if-eqz p2, :cond_42

    .line 1400
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_34

    .line 1401
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 1408
    :goto_28
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$10;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3f

    .line 1430
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 1403
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3f

    goto :goto_28

    .line 1398
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1421
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_3f

    move-result v0

    if-eqz v0, :cond_32

    .line 1423
    :try_start_4e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_54

    goto :goto_32

    .line 1424
    :catch_54
    move-exception v0

    .line 1425
    :try_start_55
    const-string v1, "MyFiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss dialog err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_55 .. :try_end_71} :catchall_3f

    goto :goto_32
.end method

.method public showWaitProgressDialog(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mPleaseWaitString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showWaitProgressDialog(Ljava/lang/String;Z)V

    .line 1395
    return-void
.end method

.method protected updateTitleItem()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 262
    const/4 v8, 0x0

    .line 263
    .local v8, isChecked:Z
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getChecking()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-eqz v0, :cond_17

    .line 264
    const/4 v8, 0x1

    .line 266
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->ITEM_SELECT_MODE:Z

    if-eqz v0, :cond_41

    .line 268
    iget-object v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v3, Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-direct {v3, v2, v2}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    invoke-interface {v9, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 270
    if-eqz v8, :cond_40

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/SimpleItem;->setChecking(Z)V

    .line 278
    :cond_40
    :goto_40
    return-void

    .line 275
    :cond_41
    iget-object v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->directoryEntries:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v3, Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-direct {v3, v2, v2}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-object v1, p0

    move v4, v5

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    invoke-interface {v9, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_40
.end method
