.class public Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;
.super Landroid/app/Activity;
.source "MenuIndicesAdd.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# instance fields
.field httpHandler:Landroid/os/Handler;

.field indicesSearchListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public isIndicesExceeded:Z

.field public isRefreshingIndices:Z

.field mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field mIntent:Landroid/content/Intent;

.field mListView:Landroid/widget/ListView;

.field mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

.field mMyMajorRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkRetryCount:I

.field private mRefreshDialog:Landroid/app/Dialog;

.field private mRequestCanceled:Z

.field mSymbols:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    .line 51
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->isRefreshingIndices:Z

    .line 52
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->isIndicesExceeded:Z

    .line 54
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRequestCanceled:Z

    .line 154
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$3;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->indicesSearchListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->httpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->hideRefreshDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->itemMaxDialog()V

    return-void
.end method

.method private callList()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRequestCanceled:Z

    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mSymbols:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 90
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->showRefreshDialog()V

    .line 91
    return-void
.end method

.method private hideRefreshDialog()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 133
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 140
    :cond_9
    :goto_9
    return-void

    .line 135
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private init()V
    .registers 6

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mIntent:Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mIntent:Landroid/content/Intent;

    const-string v3, "fullsymbol"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, fullSymbol:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mIntent:Landroid/content/Intent;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mSymbols:[Ljava/lang/String;

    .line 79
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 80
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 82
    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mListView:Landroid/widget/ListView;

    .line 83
    return-void
.end method

.method private itemMaxDialog()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_e

    .line 146
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    .line 152
    :cond_e
    return-void
.end method

.method private showRefreshDialog()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    if-nez v0, :cond_29

    .line 97
    const/4 v1, 0x0

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$1;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$1;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    .line 110
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 125
    :cond_29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->init()V

    .line 67
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->callList()V

    .line 68
    return-void
.end method

.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter "methodName"
    .parameter "resultCode"
    .parameter "param"
    .parameter "result"

    .prologue
    .line 235
    const/16 v0, 0x69

    if-ne p1, v0, :cond_8

    .line 237
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRequestCanceled:Z

    if-eqz v0, :cond_9

    .line 351
    :cond_8
    :goto_8
    return-void

    .line 242
    :cond_9
    if-nez p2, :cond_16

    .line 244
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$4;-><init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 297
    :cond_16
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->hideRefreshDialog()V

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->finish()V

    goto :goto_8

    .line 316
    :cond_35
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mNetworkRetryCount:I

    if-lez v0, :cond_4b

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->finish()V

    goto :goto_8

    .line 345
    :cond_4b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->finish()V

    goto :goto_8
.end method
