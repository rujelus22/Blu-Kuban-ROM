.class public Lcom/sec/android/app/myfiles/RenameFileBrowser;
.super Landroid/app/ListActivity;
.source "RenameFileBrowser.java"


# static fields
.field private static RENAME_FILE:I

.field private static sMyThis:Lcom/sec/android/app/myfiles/RenameFileBrowser;


# instance fields
.field private currentPreudoFolder:Ljava/lang/String;

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

.field private mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

.field private mCurrentSortBy:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

.field private mLoadingHandler:Landroid/os/Handler;

.field private mLoadingThread:Ljava/lang/Thread;

.field private mPleaseWaitString:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mThreadState:I

.field private mWaitProgressDlg:Landroid/app/ProgressDialog;

.field private mlistView:Landroid/widget/ListView;

.field private sNeedRefresh:Ljava/lang/Boolean;

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
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->RENAME_FILE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->directoryEntries:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mHandler:Landroid/os/Handler;

    .line 68
    iput v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mCurrentSortBy:I

    .line 70
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sNeedRefresh:Ljava/lang/Boolean;

    .line 78
    iput-object v2, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object v2, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 97
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mThreadState:I

    .line 268
    new-instance v0, Lcom/sec/android/app/myfiles/RenameFileBrowser$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser$4;-><init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->directoryEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 49
    sget v0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->RENAME_FILE:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/sec/android/app/myfiles/RenameFileBrowser;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/RenameFileBrowser;Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/RenameFileBrowser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mCurrentSortBy:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/RenameFileBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->updateAdapter()V

    return-void
.end method

.method private browseTo(Ljava/lang/String;)V
    .registers 6
    .parameter "aDirectory"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 187
    .local v0, path:Ljava/lang/String;
    const-string v1, "[MyFiles]"

    const-string v2, "Rename BrowseTo start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getInstance()Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->init()V

    .line 190
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getInstance()Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/myfiles/Util/GsRequest;

    const-string v3, "haha"

    invoke-direct {v2, v3}, Lcom/sec/android/app/myfiles/Util/GsRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->putRequest(Lcom/sec/android/app/myfiles/Util/GsRequest;)V

    .line 192
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getInstance()Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getRequest()Lcom/sec/android/app/myfiles/Util/GsRequest;

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 199
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/RenameFileBrowser$3;-><init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingThread:Ljava/lang/Thread;

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 242
    return-void
.end method

.method private getIconByType(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "f"

    .prologue
    .line 290
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private refresh()V
    .registers 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-nez v0, :cond_f

    .line 319
    new-instance v0, Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mlistView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/myfiles/ListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    .line 322
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->browseToSameFolder()V

    .line 323
    return-void
.end method

.method private updateAdapter()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 248
    const-string v0, "[MyFiles]"

    const-string v1, "RenameFileBrowser-updaetAdapter => start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ListAdapter;->setListItems(Ljava/util/List;)V

    .line 252
    sget-object v0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->notifyDataSetChanged()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 256
    const v0, 0x7f09003e

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->finish()V

    .line 262
    :goto_30
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->directoryEntries:Ljava/util/List;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->tempDirectoryEntries:Ljava/util/List;

    .line 265
    const-string v0, "[MyFiles]"

    const-string v1, "RenameFileBrowser-updaetAdapter => finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 259
    :cond_43
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->start()V

    .line 260
    sget-object v0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->setSelection(I)V

    goto :goto_30
.end method


# virtual methods
.method protected browseToSameFolder()V
    .registers 3

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->showWaitProgressDialog(Z)V

    .line 165
    sget-object v0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->browseTo(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 294
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 295
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 296
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sNeedRefresh:Ljava/lang/Boolean;

    .line 298
    :cond_d
    if-nez p2, :cond_16

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sNeedRefresh:Ljava/lang/Boolean;

    .line 301
    :cond_16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->setTitle(I)V

    .line 108
    const v3, 0x7f030029

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->setContentView(I)V

    .line 109
    new-instance v3, Lcom/sec/android/app/myfiles/FileInfoStore;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/FileInfoStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/myfiles/FileInfoStore;->open(Ljava/lang/String;)Lcom/sec/android/app/myfiles/FileInfoStore;

    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, path:Ljava/lang/String;
    if-nez v2, :cond_34

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_34
    if-nez v2, :cond_3a

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->finish()V

    .line 160
    :goto_39
    return-void

    .line 124
    :cond_3a
    const v3, 0x7f090033

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mPleaseWaitString:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentSortBy()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mCurrentSortBy:I

    .line 128
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mlistView:Landroid/widget/ListView;

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mlistView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/myfiles/RenameFileBrowser$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser$1;-><init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iput-object v2, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->currentPreudoFolder:Ljava/lang/String;

    .line 141
    sput-object p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    .line 142
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sNeedRefresh:Ljava/lang/Boolean;

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 148
    new-instance v3, Lcom/sec/android/app/myfiles/RenameFileBrowser$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser$2;-><init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;)V

    iput-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    iget-object v3, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_39
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mInfoStore:Lcom/sec/android/app/myfiles/FileInfoStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/FileInfoStore;->close(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    :cond_19
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 342
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 327
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 346
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sNeedRefresh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-nez v0, :cond_17

    .line 305
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->refresh()V

    .line 306
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->sNeedRefresh:Ljava/lang/Boolean;

    .line 308
    :cond_17
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 310
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_23

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->finish()V

    .line 315
    :cond_23
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    if-eqz v0, :cond_9

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    .line 332
    :cond_9
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 333
    return-void
.end method

.method public declared-synchronized showWaitProgressDialog(Ljava/lang/String;Z)V
    .registers 6
    .parameter "msg"
    .parameter "isShow"

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    const-string v0, "[MyFiles]"

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

    .line 367
    if-eqz p2, :cond_42

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_34

    .line 369
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 376
    :goto_28
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/RenameFileBrowser$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/RenameFileBrowser$5;-><init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3f

    .line 392
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 371
    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3f

    goto :goto_28

    .line 366
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 388
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_32

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_3f

    goto :goto_32
.end method

.method public showWaitProgressDialog(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser;->mPleaseWaitString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->showWaitProgressDialog(Ljava/lang/String;Z)V

    .line 363
    return-void
.end method
