.class public Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;
.super Landroid/app/Activity;
.source "ManagedFileBrowserThumb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;
    }
.end annotation


# static fields
.field private static mCheckBox:Landroid/widget/CheckBox;

.field private static mToast:Landroid/widget/Toast;

.field public static sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;


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

.field private mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

.field private mCurrentFolder:Ljava/lang/String;

.field private mCurrentSortBy:I

.field private mErrorType:I

.field private mGrid:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManagerHandler:Landroid/os/Handler;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLeftButton:Landroid/widget/Button;

.field private mLeftSoftKeyClickListener:Landroid/view/View$OnClickListener;

.field private mLoadingHandler:Landroid/os/Handler;

.field private mLoadingThread:Ljava/lang/Thread;

.field private mLocale:Ljava/lang/String;

.field private mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

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
    sput-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    .line 119
    sput-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationFiles:[Ljava/io/File;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    .line 85
    const/16 v0, 0x63

    iput v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mHandler:Landroid/os/Handler;

    .line 89
    iput v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentSortBy:I

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    .line 105
    iput-boolean v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 113
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->cancelMsg:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 138
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mThreadState:I

    .line 151
    iput v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I

    .line 155
    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    .line 379
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$4;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;

    .line 403
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$5;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 580
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$7;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftSoftKeyClickListener:Landroid/view/View$OnClickListener;

    .line 773
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$9;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mInputMethodManagerHandler:Landroid/os/Handler;

    .line 862
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$10;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressHandler:Landroid/os/Handler;

    .line 963
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setOperationName()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->initSoftKey()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentSortBy:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setOperationFiles()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->startFileOperation(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)[Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;[Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->copyPossible([Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setSoftKeyText()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->showUnableDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;[Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->movePossible([Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationCanceled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->cancelMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I

    return p1
.end method

.method static synthetic access$2900()Landroid/widget/CheckBox;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Lcom/sec/android/app/myfiles/ListAdapterThumb;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setAdapter()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;[Ljava/io/File;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->fill([Ljava/io/File;)V

    return-void
.end method

.method private browseTo(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 325
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, dir:Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setTitlePath(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setSoftKeyText()V

    .line 330
    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    iget-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    if-eqz v1, :cond_25

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    :cond_25
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$3;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingThread:Ljava/lang/Thread;

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 354
    const-string v1, "MyFiles"

    const-string v2, "finish browseTo end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method private browseToFolder()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private browseToFolder(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 321
    :cond_6
    :goto_6
    return-void

    .line 302
    :cond_7
    const-string v0, "MyFiles"

    const-string v1, "browseToFolder - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    if-nez v0, :cond_27

    .line 304
    new-instance v0, Lcom/sec/android/app/myfiles/ListAdapterThumb;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/myfiles/ListAdapterThumb;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    .line 310
    :goto_1d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->showWaitProgressDialog(Z)V

    .line 311
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseTo(Ljava/lang/String;)V

    .line 320
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    goto :goto_6

    .line 306
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->pause()V

    goto :goto_1d
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 2

    .prologue
    .line 957
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 959
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 961
    :cond_d
    monitor-exit p0

    return-void

    .line 957
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
    .line 610
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->moveToSubFolder([Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 611
    const/4 v0, 0x0

    .line 613
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private createFolder()V
    .registers 4

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/myfiles/activity/CreateFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    const-string v1, "uri"

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->startActivityForResult(Landroid/content/Intent;I)V

    .line 528
    return-void
.end method

.method private declared-synchronized fill([Ljava/io/File;)V
    .registers 25
    .parameter "files"

    .prologue
    .line 540
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 541
    if-eqz p1, :cond_8c

    .line 542
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

    .line 543
    .local v4, currentFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    if-nez v2, :cond_27

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 544
    :cond_27
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/Utils;->isHiddenItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 545
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->needThumbnail(Ljava/lang/String;)Z

    move-result v11

    .line 546
    .local v11, isImage:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v5, Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

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

    .line 542
    .end local v11           #isImage:Z
    :cond_61
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    .line 546
    .restart local v11       #isImage:Z
    :cond_64
    sget-object v9, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    goto :goto_58

    .line 553
    .end local v4           #currentFile:Ljava/io/File;
    .end local v11           #isImage:Z
    :cond_67
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    if-eqz v2, :cond_8e

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

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
    :try_end_8c
    .catchall {:try_start_1 .. :try_end_8c} :catchall_b8

    .line 562
    .end local v20           #arr$:[Ljava/io/File;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :cond_8c
    :goto_8c
    monitor-exit p0

    return-void

    .line 557
    .restart local v20       #arr$:[Ljava/io/File;
    .restart local v21       #i$:I
    .restart local v22       #len$:I
    :cond_8e
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v12, Lcom/sec/android/app/myfiles/SimpleItem;

    const/4 v14, 0x0

    new-instance v15, Lcom/sec/android/app/myfiles/SimpleIcon;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v15, v5, v6}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    invoke-interface {v2, v3, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_b7
    .catchall {:try_start_8e .. :try_end_b7} :catchall_b8

    goto :goto_8c

    .line 540
    .end local v20           #arr$:[Ljava/io/File;
    .end local v21           #i$:I
    .end local v22           #len$:I
    :catchall_b8
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getErrorString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 675
    const-string v0, ""

    .line 676
    .local v0, error:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I

    packed-switch v1, :pswitch_data_44

    .line 693
    :goto_7
    return-object v0

    .line 678
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    goto :goto_7

    .line 681
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    goto :goto_7

    .line 684
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    goto :goto_7

    .line 687
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    goto :goto_7

    .line 690
    :pswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 676
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
    .line 565
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getLargeIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getOperationName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 665
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    :goto_10
    return-object v0

    .line 667
    :cond_11
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    .line 668
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 669
    :cond_22
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 672
    :cond_33
    const-string v0, ""

    goto :goto_10
.end method

.method private initSoftKey()V
    .registers 3

    .prologue
    .line 568
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SoftKeyLayout;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mSoftKey:Lcom/sec/android/app/myfiles/SoftKeyLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mRightButton:Landroid/widget/Button;

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftSoftKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->cancelMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$6;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    return-void
.end method

.method private initTitlePath()V
    .registers 3

    .prologue
    .line 264
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 267
    return-void
.end method

.method private isSubFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 639
    :goto_0
    invoke-static {p2}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 640
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 641
    const/4 v0, 0x1

    .line 644
    :goto_d
    return v0

    .line 642
    :cond_e
    invoke-static {p2}, Lcom/sec/android/app/myfiles/Utils;->getFolderParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 644
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

    .line 616
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

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;

    .line 618
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I

    .line 625
    :cond_25
    :goto_25
    return v0

    .line 621
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->moveToSubFolder([Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 625
    const/4 v0, 0x1

    goto :goto_25
.end method

.method private moveToSubFolder([Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .parameter "srcFiles"
    .parameter "dstFolder"

    .prologue
    .line 629
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_2c

    aget-object v1, v0, v2

    .line 630
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->isSubFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 631
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->errorMsg:Ljava/lang/String;

    .line 632
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mErrorType:I

    .line 633
    const/4 v4, 0x1

    .line 636
    .end local v1           #f:Ljava/io/File;
    :goto_28
    return v4

    .line 629
    .restart local v1       #f:Ljava/io/File;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 636
    .end local v1           #f:Ljava/io/File;
    :cond_2c
    const/4 v4, 0x0

    goto :goto_28
.end method

.method private declared-synchronized setAdapter()V
    .registers 3

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->setListItems(Ljava/util/List;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->notifyDataSetChanged()V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->start()V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 363
    monitor-exit p0

    return-void

    .line 358
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setBroadcastReceiver()V
    .registers 3

    .prologue
    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 252
    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$2;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    return-void
.end method

.method private setFastScroller(I)V
    .registers 4
    .parameter "itemCount"

    .prologue
    .line 288
    const/16 v0, 0x64

    if-le p1, v0, :cond_b

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 292
    :goto_a
    return-void

    .line 291
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    goto :goto_a
.end method

.method private setLocaleReceiver()V
    .registers 3

    .prologue
    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$1;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method private setOperationFiles()Z
    .registers 2

    .prologue
    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setOperationFiles(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setOperationFiles(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 713
    const-string v0, "MyFiles"

    const-string v2, "setOperationFiles start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 716
    if-eqz p1, :cond_27

    .line 717
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 719
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_1d
    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_25
    move v0, v1

    .line 737
    :goto_26
    return v0

    .line 722
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

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

    .line 723
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->isReal()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 724
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 731
    :cond_4d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationFiles:[Ljava/io/File;

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationFiles:[Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 734
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    .line 736
    const-string v0, "MyFiles"

    const-string v1, "setOperationFiles finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private setOperationName()V
    .registers 3

    .prologue
    .line 269
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 270
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;

    .line 276
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->cancelMsg:Ljava/lang/String;

    .line 277
    return-void

    .line 271
    :cond_20
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;

    goto :goto_12

    .line 273
    :cond_33
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;

    goto :goto_12
.end method

.method private setSoftKeyText()V
    .registers 3

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    if-eqz v0, :cond_c

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->operationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :cond_b
    :goto_b
    return-void

    .line 700
    :cond_c
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_b

    .line 702
    :cond_1a
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_b
.end method

.method private setTitlePath(Ljava/lang/String;)V
    .registers 4
    .parameter "path"

    .prologue
    const/4 v1, 0x3

    .line 279
    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->enableSdIconOnTitlePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 280
    const v0, 0x7f0200a4

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setFeatureDrawableResource(II)V

    .line 285
    :goto_d
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mTitlePath:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->getShowingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void

    .line 283
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_d
.end method

.method private showUnableDialog()V
    .registers 4

    .prologue
    .line 648
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_32

    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getOperationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 652
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 653
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 654
    const v1, 0x7f090011

    new-instance v2, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$8;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    .line 661
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 662
    return-void
.end method

.method private startFileOperation(I)V
    .registers 9
    .parameter "operation"

    .prologue
    .line 849
    const/16 v0, 0x63

    if-ne p1, v0, :cond_5

    .line 860
    :goto_4
    return-void

    .line 853
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 854
    new-instance v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperationFiles:[Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mProgressHandler:Landroid/os/Handler;

    move v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;-><init>([Ljava/io/File;Ljava/lang/String;ILandroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOpThread:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->start()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_4

    .line 857
    :catch_20
    move-exception v6

    .line 858
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private upOneLevel()V
    .registers 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->getFolderParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, parentFolder:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 401
    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder(Ljava/lang/String;)V

    .line 402
    :cond_b
    return-void
.end method

.method private declared-synchronized updateAdapter()V
    .registers 3

    .prologue
    .line 367
    monitor-enter p0

    :try_start_1
    const-string v0, "MyFiles"

    const-string v1, "ManagedFileBrowserThumb-updaetAdapter => start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setFastScroller(I)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->setListItems(Ljava/util/List;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->notifyDataSetChanged()V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->start()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->tempDirectoryEntries:Ljava/util/List;

    .line 377
    const-string v0, "MyFiles"

    const-string v1, "ManagedFileBrowserThumb-updaetAdapter => finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 378
    monitor-exit p0

    return-void

    .line 367
    :catchall_43
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
    .line 741
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 742
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 743
    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    .line 744
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder()V

    .line 747
    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 531
    const-string v0, "MyFiles"

    const-string v1, "onBackPressed - upOneLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->upOneLevel()V

    .line 537
    :goto_16
    return-void

    .line 534
    :cond_17
    const-string v0, "MyFiles"

    const-string v1, "onBackPressed - super.onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_16
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setNumColumnsByConfiguration(Landroid/content/res/Configuration;)V

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mUnableDialog:Landroid/app/AlertDialog;

    .line 767
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->showUnableDialog()V

    .line 769
    :cond_34
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 770
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const-string v3, "MyFiles"

    const-string v4, "ManagedThumb:onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->requestWindowFeature(I)Z

    .line 161
    const v3, 0x7f030031

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setContentView(I)V

    .line 162
    sput-object p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, mPath:Ljava/lang/String;
    const-string v3, "operation"

    const/16 v4, 0x63

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    .line 166
    const-string v3, "item_select_complete"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 167
    .local v1, itemSelectComplete:Z
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->initTitlePath()V

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setOperationName()V

    .line 169
    const v3, 0x7f090033

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mPleaseWaitString:Ljava/lang/String;

    .line 170
    if-eqz v1, :cond_61

    .line 171
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setOperationFiles(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->finish()V

    .line 193
    :goto_4c
    return-void

    .line 176
    :cond_4d
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 177
    iget v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mOperation:I

    if-ne v3, v5, :cond_63

    .line 178
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setContentView(I)V

    .line 179
    invoke-direct {p0, v5}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->startFileOperation(I)V

    goto :goto_4c

    .line 183
    :cond_61
    iput-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    .line 185
    :cond_63
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentSortBy:I

    .line 186
    const v3, 0x7f0c0016

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    .line 187
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 189
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->initSoftKey()V

    .line 190
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setLocaleReceiver()V

    .line 191
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setBroadcastReceiver()V

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder(Ljava/lang/String;)V

    goto :goto_4c
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 832
    const-string v0, "MyFiles"

    const-string v1, "ManagedThumb:onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->closeProgressDialog()V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 837
    iput-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 840
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_21

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 842
    iput-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 845
    :cond_21
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 846
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 27
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 413
    .local v9, item:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getText1()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_64

    move-result-object v16

    .line 418
    .local v16, selectedFileString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c0

    .line 419
    new-instance v17, Lcom/sec/android/app/myfiles/CheckedImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/CheckedImageButton;-><init>(Landroid/content/Context;)V

    .line 420
    .local v17, vi:Lcom/sec/android/app/myfiles/CheckedImageButton;
    const v19, 0x7f0c001f

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/CheckedImageButton;->initViews(Landroid/view/View;)V

    .line 421
    sget-object v19, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9b

    .line 422
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v19

    if-nez v19, :cond_69

    const/4 v13, 0x1

    .line 424
    .local v13, select:Z
    :goto_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_54
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 425
    .local v7, i:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v7, v13}, Lcom/sec/android/app/myfiles/SimpleItem;->setMarked(Z)V

    goto :goto_54

    .line 414
    .end local v7           #i:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v13           #select:Z
    .end local v16           #selectedFileString:Ljava/lang/String;
    .end local v17           #vi:Lcom/sec/android/app/myfiles/CheckedImageButton;
    :catch_64
    move-exception v4

    .line 415
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    .end local v4           #e:Ljava/lang/Exception;
    :cond_68
    :goto_68
    return-void

    .line 422
    .restart local v9       #item:Lcom/sec/android/app/myfiles/SimpleItem;
    .restart local v16       #selectedFileString:Ljava/lang/String;
    .restart local v17       #vi:Lcom/sec/android/app/myfiles/CheckedImageButton;
    :cond_69
    const/4 v13, 0x0

    goto :goto_4a

    .line 427
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v13       #select:Z
    :cond_6b
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_10d

    .line 428
    new-instance v18, Lcom/sec/android/app/myfiles/CheckedImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/CheckedImageButton;-><init>(Landroid/content/Context;)V

    .line 429
    .local v18, view:Lcom/sec/android/app/myfiles/CheckedImageButton;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 430
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_91

    .line 431
    const v19, 0x7f0c001f

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/myfiles/CheckedImageButton;->initViews(Landroid/view/View;)V

    .line 434
    :cond_91
    if-eqz v18, :cond_98

    .line 435
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setChecked(Z)V

    .line 427
    :cond_98
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 439
    .end local v3           #childView:Landroid/view/View;
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #select:Z
    .end local v18           #view:Lcom/sec/android/app/myfiles/CheckedImageButton;
    :cond_9b
    if-ltz p3, :cond_10d

    .line 440
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->isChecked()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b5

    .line 441
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/myfiles/CheckedImageButton;->toggle()V

    .line 442
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/myfiles/CheckedImageButton;->isChecked()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/app/myfiles/SimpleItem;->setMarked(Z)V

    .line 444
    :cond_b5
    const/4 v11, 0x0

    .line 446
    .local v11, nPos:I
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v19

    if-nez v19, :cond_141

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 448
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    :goto_c6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10d

    .line 449
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 450
    .local v12, sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    sget-object v19, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v12}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13e

    .line 451
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/sec/android/app/myfiles/SimpleItem;->setMarked(Z)V

    .line 452
    new-instance v18, Lcom/sec/android/app/myfiles/CheckedImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/CheckedImageButton;-><init>(Landroid/content/Context;)V

    .line 453
    .restart local v18       #view:Lcom/sec/android/app/myfiles/CheckedImageButton;
    const-string v19, "@SELECT_ALL_ITEM"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 454
    .local v15, selectAllView:Landroid/view/View;
    if-eqz v15, :cond_10d

    .line 455
    const v19, 0x7f0c001f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/myfiles/CheckedImageButton;->initViews(Landroid/view/View;)V

    .line 456
    if-eqz v18, :cond_10d

    .line 457
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setChecked(Z)V

    .line 490
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    .end local v11           #nPos:I
    .end local v12           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v15           #selectAllView:Landroid/view/View;
    .end local v18           #view:Lcom/sec/android/app/myfiles/CheckedImageButton;
    :cond_10d
    :goto_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 492
    .restart local v10       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    :cond_117
    :goto_117
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_68

    .line 493
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 494
    .restart local v12       #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    invoke-virtual {v12}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v19

    if-eqz v19, :cond_1ab

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    if-eqz v19, :cond_68

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_68

    .line 462
    .restart local v11       #nPos:I
    :cond_13e
    add-int/lit8 v11, v11, 0x1

    .line 463
    goto :goto_c6

    .line 465
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    .end local v12           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_141
    const/4 v2, 0x0

    .line 466
    .local v2, checkCount:I
    const/4 v14, 0x0

    .line 467
    .local v14, selectAllItem:Lcom/sec/android/app/myfiles/SimpleItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 468
    .restart local v10       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    :goto_14d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_170

    .line 469
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 470
    .restart local v12       #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    sget-object v19, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v12}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_167

    .line 471
    move-object v14, v12

    goto :goto_14d

    .line 473
    :cond_167
    invoke-virtual {v12}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v19

    if-eqz v19, :cond_170

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_14d

    .line 480
    .end local v12           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_170
    if-eqz v14, :cond_10d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_10d

    .line 481
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/sec/android/app/myfiles/SimpleItem;->setMarked(Z)V

    .line 482
    new-instance v18, Lcom/sec/android/app/myfiles/CheckedImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/CheckedImageButton;-><init>(Landroid/content/Context;)V

    .line 483
    .restart local v18       #view:Lcom/sec/android/app/myfiles/CheckedImageButton;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0c001f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/myfiles/CheckedImageButton;->initViews(Landroid/view/View;)V

    .line 484
    if-eqz v18, :cond_10d

    .line 485
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/myfiles/CheckedImageButton;->setChecked(Z)V

    goto/16 :goto_10d

    .line 499
    .end local v2           #checkCount:I
    .end local v11           #nPos:I
    .end local v14           #selectAllItem:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v18           #view:Lcom/sec/android/app/myfiles/CheckedImageButton;
    .restart local v12       #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    if-eqz v19, :cond_117

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLeftButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_117

    .line 504
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/myfiles/SimpleItem;>;"
    .end local v12           #sItem:Lcom/sec/android/app/myfiles/SimpleItem;
    .end local v17           #vi:Lcom/sec/android/app/myfiles/CheckedImageButton;
    :cond_1c0
    const-string v19, ".."

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d1

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->upOneLevel()V

    goto/16 :goto_68

    .line 506
    :cond_1d1
    sget-object v19, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getItemType()Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e2

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->createFolder()V

    goto/16 :goto_68

    .line 509
    :cond_1e2
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_207

    .line 510
    invoke-virtual {v9}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, folderName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v5, folder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_202

    .line 513
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder(Ljava/lang/String;)V

    goto/16 :goto_68

    .line 515
    :cond_202
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder()V

    goto/16 :goto_68

    .line 518
    .end local v5           #folder:Ljava/io/File;
    .end local v6           #folderName:Ljava/lang/String;
    :cond_207
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->browseToFolder()V

    goto/16 :goto_68
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 814
    const-string v0, "MyFiles"

    const-string v1, "ManagedThumb:onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mLocale:Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    if-eqz v0, :cond_20

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->pause()V

    .line 818
    :cond_20
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 819
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 791
    const-string v0, "MyFiles"

    const-string v1, "ManagedThumb:onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v0, "clipboardEx"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 795
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 796
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 798
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mInputMethodManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->setNumColumnsByConfiguration(Landroid/content/res/Configuration;)V

    .line 802
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 804
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_38

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->finish()V

    .line 810
    :cond_38
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 823
    const-string v0, "MyFiles"

    const-string v1, "ManagedThumb:onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 828
    return-void
.end method

.method public setNumColumnsByConfiguration(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 750
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    if-eqz v1, :cond_1a

    .line 751
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 752
    .local v0, position:I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 753
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 757
    :goto_15
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 759
    .end local v0           #position:I
    :cond_1a
    return-void

    .line 755
    .restart local v0       #position:I
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_15
.end method

.method public declared-synchronized showWaitProgressDialog(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1397
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

    .line 1398
    if-eqz p2, :cond_42

    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_34

    .line 1400
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 1407
    :goto_28
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$11;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3f

    .line 1429
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 1402
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1403
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3f

    goto :goto_28

    .line 1397
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1420
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_3f

    move-result v0

    if-eqz v0, :cond_32

    .line 1422
    :try_start_4e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_54

    goto :goto_32

    .line 1423
    :catch_54
    move-exception v0

    .line 1424
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
    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->mPleaseWaitString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->showWaitProgressDialog(Ljava/lang/String;Z)V

    .line 1394
    return-void
.end method

.method protected updateTitleItem()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 228
    const/4 v8, 0x0

    .line 229
    .local v8, isChecked:Z
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    if-eqz v0, :cond_17

    .line 230
    const/4 v8, 0x1

    .line 233
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->ITEM_SELECT_MODE:Z

    if-eqz v0, :cond_41

    .line 235
    iget-object v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v3, Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-direct {v3, v2, v2}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    invoke-interface {v9, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 237
    if-eqz v8, :cond_40

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/myfiles/SimpleItem;->setMarked(Z)V

    .line 245
    :cond_40
    :goto_40
    return-void

    .line 241
    :cond_41
    iget-object v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->directoryEntries:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem;

    new-instance v3, Lcom/sec/android/app/myfiles/SimpleIcon;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f020091

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/sec/android/app/myfiles/SimpleIcon;-><init>(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    move-object v1, p0

    move v4, v5

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/myfiles/SimpleItem;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/sec/android/app/myfiles/SimpleIcon;ZZZLcom/sec/android/app/myfiles/SimpleItem$ItemType;)V

    invoke-interface {v9, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_40
.end method
