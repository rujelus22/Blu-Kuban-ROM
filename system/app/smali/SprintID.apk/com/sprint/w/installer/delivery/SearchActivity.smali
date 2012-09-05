.class public Lcom/sprint/w/installer/delivery/SearchActivity;
.super Lcom/sprint/w/installer/psi/BaseActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_AUTH_FAIL:I = 0x4

.field private static final DIALOG_AUTH_FAIL_MAX:I = 0x5

.field private static final DIALOG_GENERIC_ERROR:I = 0x2

.field private static final DIALOG_RETRY_QUESTION:I = 0x3

.field private static final DIALOG_SHOW_LOCAL_ERR_MSG:I = 0x1

.field public static final EXTRA_SEARCHPSI:Ljava/lang/String; = "SearchPSI"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field static final REQUEST_SHOW_TERMS_AND_CONDITIONS:I = 0xe2

.field public static final STATUS_ERROR_FUNCTIONALITY_NOT_COMPLETED:I = -0x8

.field static sRetryAttempts:I


# instance fields
.field createCatalogViewer:Ljava/lang/Runnable;

.field private incomingUri:Landroid/net/Uri;

.field private log:Lcom/sprint/id/logger/Logger;

.field mAdapter:Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;

.field mAppData:Landroid/os/Bundle;

.field mBtnGo:Landroid/widget/Button;

.field private mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

.field mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

.field private mDescription:Landroid/widget/TextView;

.field private mFeedTitle:Landroid/widget/TextView;

.field final mHandler:Landroid/os/Handler;

.field private mInstalledPack:Lcom/sprint/w/installer/PackInfo;

.field mInstalledPacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sprint/w/installer/PackInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mLocalErrorMsg:Ljava/lang/String;

.field mPwd:Landroid/widget/EditText;

.field mQuery:Ljava/lang/String;

.field private mRequestID:Ljava/lang/String;

.field mSearchDesc:Landroid/widget/TextView;

.field mSearchHandler:Landroid/os/Handler;

.field mSearchPSI:Z

.field mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

.field mServicePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/sprint/w/installer/DeliveryState;

.field mStatusExtra:Ljava/lang/String;

.field private mSyncUpdateLock:Ljava/lang/Object;

.field mTitle:Landroid/widget/TextView;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private sPinCleared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/BaseActivity;-><init>()V

    .line 79
    const-class v0, Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPacks:Ljava/util/Map;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchHandler:Landroid/os/Handler;

    .line 90
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    .line 102
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->incomingUri:Landroid/net/Uri;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 107
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatusExtra:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->sPinCleared:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mLocalErrorMsg:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSyncUpdateLock:Ljava/lang/Object;

    .line 479
    new-instance v0, Lcom/sprint/w/installer/delivery/SearchActivity$6;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$6;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mUpdateResults:Ljava/lang/Runnable;

    .line 953
    new-instance v0, Lcom/sprint/w/installer/delivery/SearchActivity$14;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$14;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->createCatalogViewer:Ljava/lang/Runnable;

    .line 1001
    new-instance v0, Lcom/sprint/w/installer/delivery/SearchActivity$15;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$15;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1012
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->resetActionBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->startProcessing()V

    return-void
.end method

.method static synthetic access$1102(Lcom/sprint/w/installer/delivery/SearchActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->sPinCleared:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sprint/w/installer/delivery/SearchActivity;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mFeedTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDescription:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sprint/w/installer/delivery/SearchActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/sprint/w/installer/delivery/SearchActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->initSearchButton()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->handleCatalogViewer()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/Catalog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/DeliveryRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/PackInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sprint/w/installer/delivery/SearchActivity;Lcom/sprint/w/installer/delivery/DeliveryRequest;)Lcom/sprint/w/installer/delivery/DeliveryRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/delivery/SearchActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity;->searchPSI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/delivery/SearchActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/delivery/SearchActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/DeliveryState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setupAuthUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setupPinUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->processRequest()V

    return-void
.end method

.method private downloadDeliveryRequestPack()V
    .registers 4

    .prologue
    .line 599
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.DOWNLOAD_FROM_DELIVERY_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, iDwnSrv:Landroid/content/Intent;
    const-class v1, Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 601
    const-class v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 603
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->finish()V

    .line 604
    return-void
.end method

.method private handleCatalogViewer()V
    .registers 4

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v0, :cond_b

    .line 973
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->REACHED_CATALOG_VIEW:Lcom/sprint/w/installer/DeliveryState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 975
    :cond_b
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->loadCatalogContent()V

    .line 976
    return-void
.end method

.method private initSearchButton()V
    .registers 3

    .prologue
    .line 421
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$4;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$4;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    return-void
.end method

.method private initSearchView()V
    .registers 2

    .prologue
    .line 143
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setContentView(I)V

    .line 145
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 147
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    .line 149
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->initSearchButton()V

    .line 152
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->resetFields()V

    .line 153
    return-void
.end method

.method private isRetryAllowed()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 936
    sget v1, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_e

    .line 937
    sget v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    .line 938
    const/4 v0, 0x1

    .line 941
    :goto_d
    return v0

    .line 940
    :cond_e
    sput v0, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    goto :goto_d
.end method

.method private loadCatalogContent()V
    .registers 4

    .prologue
    .line 979
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 980
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSyncUpdateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_9
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    if-eqz v0, :cond_28

    .line 982
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mFeedTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/Catalog;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/Catalog;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->updateListView()V

    .line 985
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 987
    :cond_28
    monitor-exit v1

    .line 988
    return-void

    .line 987
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private processPackDownload()V
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->handsFree:I

    if-nez v0, :cond_a

    .line 590
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->showTandC()V

    .line 596
    :goto_9
    return-void

    .line 594
    :cond_a
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->downloadDeliveryRequestPack()V

    goto :goto_9
.end method

.method private processRequest()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 546
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v0, :cond_62

    .line 548
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->sPinCleared:Z

    if-eqz v0, :cond_4c

    .line 549
    :cond_f
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    if-nez v0, :cond_19

    .line 552
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->processRequestRSS()V

    .line 585
    :cond_18
    :goto_18
    return-void

    .line 553
    :cond_19
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    if-ne v0, v2, :cond_23

    .line 558
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->processPackDownload()V

    goto :goto_18

    .line 559
    :cond_23
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 562
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->processRequestJSON()V

    goto :goto_18

    .line 563
    :cond_2e
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 566
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->ERROR_FUNCTIONALITY_NOT_COMPLETED:Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "Manual delivery not completed"

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 567
    :cond_3d
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 570
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->ERROR_FUNCTIONALITY_NOT_COMPLETED:Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "Maintenance delivery not compelted"

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 573
    :cond_4c
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isRetryAllowed()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 574
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 576
    :cond_5b
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_18

    .line 579
    :cond_62
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->incomingUri:Landroid/net/Uri;

    if-eqz v0, :cond_6a

    .line 580
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->processRequestDeliveryCode()V

    goto :goto_18

    .line 582
    :cond_6a
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "DeliveryHub.processRequest STARTED WITHOUT ANY INPUTS, HOW DID THIS HAPPEN?"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->finish()V

    goto :goto_18
.end method

.method private processRequestDeliveryCode()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 732
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->incomingUri:Landroid/net/Uri;

    if-eqz v1, :cond_a2

    .line 733
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->incomingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    .line 734
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    if-eqz v1, :cond_9a

    .line 735
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 737
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->isAnyDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 738
    const/4 v8, 0x0

    .line 740
    .local v8, jsonResponse:Ljava/lang/String;
    const v1, 0x7f060102

    :try_start_22
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, url:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 742
    .local v7, json:Lorg/json/JSONObject;
    const-string v1, "m"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getMdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    const-string v1, "r"

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060103

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/sprint/w/installer/util/HttpUtil;->executeHttpPostWithHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4c} :catch_55

    move-result-object v8

    .line 749
    .end local v0           #url:Ljava/lang/String;
    .end local v7           #json:Lorg/json/JSONObject;
    :goto_4d
    if-nez v8, :cond_67

    .line 750
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_DELIVERY_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v9}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 775
    .end local v8           #jsonResponse:Ljava/lang/String;
    :cond_54
    :goto_54
    return-void

    .line 745
    .restart local v8       #jsonResponse:Ljava/lang/String;
    :catch_55
    move-exception v6

    .line 746
    .local v6, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error in processRequestDeliveryCode"

    invoke-virtual {v1, v2, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_DELIVERY_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_4d

    .line 752
    .end local v6           #e:Ljava/lang/Exception;
    :cond_67
    new-instance v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-direct {v1, v8}, Lcom/sprint/w/installer/delivery/DeliveryRequest;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 753
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-boolean v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->responseValid:Z

    if-eqz v1, :cond_54

    .line 754
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_84

    .line 755
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->errorMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 757
    :cond_84
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->processRequest()V

    goto :goto_54

    .line 763
    .end local v8           #jsonResponse:Ljava/lang/String;
    :cond_88
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 764
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 766
    :cond_94
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    invoke-direct {p0, v1, v10, v9}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 770
    :cond_9a
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "no deliveryID found"

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54

    .line 773
    :cond_a2
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "incomingURI null"

    invoke-direct {p0, v1, v2, v9}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_54
.end method

.method private processRequestJSON()V
    .registers 1

    .prologue
    .line 729
    return-void
.end method

.method private processRequestRSS()V
    .registers 18

    .prologue
    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Entered processRequestRSS()"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    if-eqz v1, :cond_242

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have a URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v3, v3, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 636
    invoke-static/range {p0 .. p0}, Lcom/sprint/w/installer/util/Util;->isAnyDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_226

    .line 638
    :try_start_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v5, v5, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v6, v6, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/sprint/w/installer/util/HttpUtil;->openUrlWithAuthReponse(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 640
    .local v15, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 641
    .local v9, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 642
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 643
    .local v8, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v8, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 644
    .local v10, doc:Lorg/w3c/dom/Document;
    const-string v1, "channel"

    invoke-interface {v10, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 645
    .local v16, nl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_80

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Expected rss 2.0 \'channel\' tag"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 647
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "Expected rss 2.0 channel tag"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 723
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :goto_7f
    return-void

    .line 650
    .restart local v8       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #doc:Lorg/w3c/dom/Document;
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    :cond_80
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 651
    .local v12, elem:Lorg/w3c/dom/Element;
    new-instance v1, Lcom/sprint/w/installer/delivery/Catalog;

    invoke-direct {v1}, Lcom/sprint/w/installer/delivery/Catalog;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    const/4 v2, 0x0

    const-string v3, "title"

    invoke-static {v12, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/Catalog;->title:Ljava/lang/String;

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    const/4 v2, 0x0

    const-string v3, "description"

    invoke-static {v12, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/Catalog;->description:Ljava/lang/String;

    .line 654
    const-string v1, "item"

    invoke-interface {v12, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 656
    const/4 v14, 0x0

    .local v14, i:I
    :goto_bc
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_1a3

    .line 657
    new-instance v13, Lcom/sprint/w/installer/delivery/CatalogCard;

    invoke-direct {v13}, Lcom/sprint/w/installer/delivery/CatalogCard;-><init>()V

    .line 658
    .local v13, fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .end local v12           #elem:Lorg/w3c/dom/Element;
    check-cast v12, Lorg/w3c/dom/Element;

    .line 659
    .restart local v12       #elem:Lorg/w3c/dom/Element;
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "id"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    .line 660
    iget-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    if-nez v1, :cond_e6

    .line 661
    const/4 v1, 0x0

    const-string v2, "guid"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    .line 663
    :cond_e6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v2, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->isApprovedID(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_118

    .line 664
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

    iget-object v2, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    :try_end_fc
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_37 .. :try_end_fc} :catch_fd
    .catch Lorg/apache/http/HttpException; {:try_start_37 .. :try_end_fc} :catch_185
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_37 .. :try_end_fc} :catch_1ae
    .catch Lorg/xml/sax/SAXException; {:try_start_37 .. :try_end_fc} :catch_1de
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_fc} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_fc} :catch_20e

    goto :goto_7f

    .line 684
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v12           #elem:Lorg/w3c/dom/Element;
    .end local v13           #fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    .end local v14           #i:I
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :catch_fd
    move-exception v7

    .line 685
    .local v7, ae:Lorg/apache/http/auth/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "AuthenticationException in processRequestRSS"

    invoke-virtual {v1, v2, v7}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 687
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_7f

    .line 667
    .end local v7           #ae:Lorg/apache/http/auth/AuthenticationException;
    .restart local v8       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #doc:Lorg/w3c/dom/Document;
    .restart local v12       #elem:Lorg/w3c/dom/Element;
    .restart local v13       #fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    .restart local v14       #i:I
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    :cond_118
    const/4 v1, 0x0

    :try_start_119
    const-string v2, "title"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->title:Ljava/lang/String;

    .line 668
    const/4 v1, 0x0

    const-string v2, "pubDate"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->date:Ljava/lang/String;

    .line 669
    const/4 v1, 0x0

    const-string v2, "description"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->description:Ljava/lang/String;

    .line 670
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "icon"

    const-string v3, "url"

    invoke-static {v12, v1, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->iconUrl:Ljava/lang/String;

    .line 671
    const/4 v1, 0x0

    const-string v2, "link"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->link:Ljava/lang/String;

    .line 672
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "version"

    const-string v3, "name"

    invoke-static {v12, v1, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->version:Ljava/lang/String;
    :try_end_154
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_119 .. :try_end_154} :catch_fd
    .catch Lorg/apache/http/HttpException; {:try_start_119 .. :try_end_154} :catch_185
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_119 .. :try_end_154} :catch_1ae
    .catch Lorg/xml/sax/SAXException; {:try_start_119 .. :try_end_154} :catch_1de
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_154} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_154} :catch_20e

    .line 674
    :try_start_154
    const-string v1, "http://developer.sprint.com/dtds/sop-1.0.dtd"

    const-string v2, "version"

    const-string v3, "code"

    invoke-static {v12, v1, v2, v3}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->versionCode:I
    :try_end_164
    .catch Ljava/lang/NumberFormatException; {:try_start_154 .. :try_end_164} :catch_17a
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_154 .. :try_end_164} :catch_fd
    .catch Lorg/apache/http/HttpException; {:try_start_154 .. :try_end_164} :catch_185
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_154 .. :try_end_164} :catch_1ae
    .catch Lorg/xml/sax/SAXException; {:try_start_154 .. :try_end_164} :catch_1de
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_164} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_164} :catch_20e

    .line 678
    :goto_164
    const/4 v1, 0x0

    :try_start_165
    const-string v2, "terms"

    invoke-static {v12, v1, v2}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/sprint/w/installer/delivery/CatalogCard;->terms:Ljava/lang/String;

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_bc

    .line 675
    :catch_17a
    move-exception v11

    .line 676
    .local v11, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "version code is not a number"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_184
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_165 .. :try_end_184} :catch_fd
    .catch Lorg/apache/http/HttpException; {:try_start_165 .. :try_end_184} :catch_185
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_165 .. :try_end_184} :catch_1ae
    .catch Lorg/xml/sax/SAXException; {:try_start_165 .. :try_end_184} :catch_1de
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_184} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_184} :catch_20e

    goto :goto_164

    .line 691
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #elem:Lorg/w3c/dom/Element;
    .end local v13           #fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    .end local v14           #i:I
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :catch_185
    move-exception v11

    .line 692
    .local v11, e:Lorg/apache/http/HttpException;
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 693
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Lorg/apache/http/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 698
    :goto_198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "HttpException in processRequestRSS"

    invoke-virtual {v1, v2, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    .line 682
    .end local v11           #e:Lorg/apache/http/HttpException;
    .restart local v8       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v9       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #doc:Lorg/w3c/dom/Document;
    .restart local v12       #elem:Lorg/w3c/dom/Element;
    .restart local v14       #i:I
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v16       #nl:Lorg/w3c/dom/NodeList;
    :cond_1a3
    :try_start_1a3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->createCatalogViewer:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1ac
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_1a3 .. :try_end_1ac} :catch_fd
    .catch Lorg/apache/http/HttpException; {:try_start_1a3 .. :try_end_1ac} :catch_185
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a3 .. :try_end_1ac} :catch_1ae
    .catch Lorg/xml/sax/SAXException; {:try_start_1a3 .. :try_end_1ac} :catch_1de
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1ac} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1ac} :catch_20e

    goto/16 :goto_7f

    .line 699
    .end local v8           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v9           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #doc:Lorg/w3c/dom/Document;
    .end local v12           #elem:Lorg/w3c/dom/Element;
    .end local v14           #i:I
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #nl:Lorg/w3c/dom/NodeList;
    :catch_1ae
    move-exception v11

    .line 700
    .local v11, e:Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "ParserConfigurationException in processRequestRSS"

    invoke-virtual {v1, v2, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    .line 689
    .end local v11           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v7       #ae:Lorg/apache/http/auth/AuthenticationException;
    :cond_1c6
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_7f

    .line 695
    .end local v7           #ae:Lorg/apache/http/auth/AuthenticationException;
    .local v11, e:Lorg/apache/http/HttpException;
    :cond_1d1
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Lorg/apache/http/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto :goto_198

    .line 702
    .end local v11           #e:Lorg/apache/http/HttpException;
    :catch_1de
    move-exception v11

    .line 703
    .local v11, e:Lorg/xml/sax/SAXException;
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "SAXException in processRequestRSS"

    invoke-virtual {v1, v2, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    .line 705
    .end local v11           #e:Lorg/xml/sax/SAXException;
    :catch_1f6
    move-exception v11

    .line 706
    .local v11, e:Ljava/io/IOException;
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "IOException in processRequestRSS"

    invoke-virtual {v1, v2, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    .line 708
    .end local v11           #e:Ljava/io/IOException;
    :catch_20e
    move-exception v11

    .line 709
    .local v11, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 710
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Exception in processRequestRSS"

    invoke-virtual {v1, v2, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    .line 714
    .end local v11           #e:Ljava/lang/Exception;
    :cond_226
    invoke-direct/range {p0 .. p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->isRetryAllowed()Z

    move-result v1

    if-eqz v1, :cond_237

    .line 715
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_7f

    .line 717
    :cond_237
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_7f

    .line 721
    :cond_242
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    const-string v2, "RSS url not found"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    goto/16 :goto_7f
.end method

.method private resetActionBar()V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 391
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 392
    return-void
.end method

.method private resetFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 157
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->incomingUri:Landroid/net/Uri;

    .line 159
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;

    .line 161
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatusExtra:Ljava/lang/String;

    .line 163
    sput v2, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    .line 164
    iput-boolean v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->sPinCleared:Z

    .line 165
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mBtnGo:Landroid/widget/Button;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mLocalErrorMsg:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mPwd:Landroid/widget/EditText;

    .line 170
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mFeedTitle:Landroid/widget/TextView;

    .line 171
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDescription:Landroid/widget/TextView;

    .line 172
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 173
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    .line 174
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mListView:Landroid/widget/ListView;

    .line 175
    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAdapter:Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;

    .line 176
    return-void
.end method

.method private searchKeyword(Ljava/lang/String;)V
    .registers 4
    .parameter "searchValue"

    .prologue
    .line 334
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->isAnyDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 335
    new-instance v0, Lcom/sprint/w/installer/delivery/SearchActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity$3;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;Ljava/lang/String;)V

    .line 381
    .local v0, skwd:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    .end local v0           #skwd:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    :goto_11
    return-void

    .line 384
    :cond_12
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->resetActionBar()V

    .line 385
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->showDialog(I)V

    goto :goto_11
.end method

.method private searchPSI(Ljava/lang/String;)V
    .registers 5
    .parameter "key"

    .prologue
    .line 296
    iget-boolean v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->sIgnoreNoMobileData:Z

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/w/installer/util/Util;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 297
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sprint/w/installer/delivery/SearchActivity$1;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$1;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :goto_18
    return-void

    .line 308
    :cond_19
    new-instance v0, Lcom/sprint/w/installer/delivery/SearchActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity$2;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;Ljava/lang/String;)V

    .line 330
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_18
.end method

.method private setTextHint(ILjava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "valIn"

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 859
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_b

    .line 860
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 862
    :cond_b
    return-void
.end method

.method private setTextViewText(ILjava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "valIn"

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 852
    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_b

    .line 853
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :cond_b
    return-void
.end method

.method private setViewVisible(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 865
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_a

    .line 867
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 869
    :cond_a
    return-void
.end method

.method private setupAuthUI()V
    .registers 5

    .prologue
    const v3, 0x7f0c0019

    const v2, 0x7f0c0018

    const v1, 0x7f0c0017

    .line 784
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationHelp()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 785
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationInstructions()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 786
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setTextViewText(ILjava/lang/String;)V

    .line 788
    :cond_20
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationLabelUser()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 789
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelUser:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setTextHint(ILjava/lang/String;)V

    .line 791
    :cond_2f
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationLabelPassword()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 792
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setTextHint(ILjava/lang/String;)V

    .line 795
    :cond_3e
    const v0, 0x7f0c0016

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 796
    invoke-direct {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 797
    invoke-direct {p0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 798
    invoke-direct {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 799
    const v0, 0x7f0c001a

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 800
    const v0, 0x7f0c000f

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 801
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mBtnGo:Landroid/widget/Button;

    .line 802
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mBtnGo:Landroid/widget/Button;

    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$8;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$8;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    return-void
.end method

.method private setupPinUI()V
    .registers 5

    .prologue
    const v3, 0x7f0c001b

    const v1, 0x7f0c0017

    const v2, 0x7f0c0019

    .line 823
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationInstructions()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 824
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationInstructions:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setTextViewText(ILjava/lang/String;)V

    .line 826
    :cond_18
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryRequest;->hasAuthenticationLabelPassword()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 827
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationLabelPassword:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setTextHint(ILjava/lang/String;)V

    .line 831
    :goto_27
    const v0, 0x7f0c0016

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 832
    invoke-direct {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 833
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 834
    invoke-direct {p0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 835
    const v0, 0x7f0c001a

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 836
    invoke-direct {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->setViewVisible(I)V

    .line 837
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mBtnGo:Landroid/widget/Button;

    .line 838
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mBtnGo:Landroid/widget/Button;

    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$9;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$9;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    return-void

    .line 829
    :cond_5b
    const-string v0, "PIN:"

    invoke-direct {p0, v2, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->setTextHint(ILjava/lang/String;)V

    goto :goto_27
.end method

.method private showTandC()V
    .registers 4

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .local v0, i:Landroid/content/Intent;
    const-string v1, "terms"

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const/16 v1, 0xe2

    invoke-virtual {p0, v0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 610
    return-void
.end method

.method private startProcessing()V
    .registers 3

    .prologue
    .line 537
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$7;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$7;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 543
    return-void
.end method

.method private statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    .registers 5
    .parameter "statusIn"
    .parameter "extra"
    .parameter "closeTransaction"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatus:Lcom/sprint/w/installer/DeliveryState;

    .line 529
    iput-object p2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mStatusExtra:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 532
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 534
    :cond_d
    return-void
.end method

.method private updateListView()V
    .registers 3

    .prologue
    .line 991
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_25

    .line 992
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mListView:Landroid/widget/ListView;

    .line 993
    new-instance v0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAdapter:Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;

    .line 994
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAdapter:Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 995
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 999
    :goto_24
    return-void

    .line 997
    :cond_25
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAdapter:Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->notifyDataSetChanged()V

    goto :goto_24
.end method


# virtual methods
.method protected createDeliveryHub()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 434
    sput v2, Lcom/sprint/w/installer/delivery/SearchActivity;->sRetryAttempts:I

    .line 436
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->setContentView(I)V

    .line 437
    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    .line 438
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 439
    const v1, 0x7f0c005c

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    .line 441
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 443
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 445
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->initSearchButton()V

    .line 447
    const v1, 0x7f0c0019

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mPwd:Landroid/widget/EditText;

    .line 448
    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 449
    .local v0, cb:Landroid/widget/CheckBox;
    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$5;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$5;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 460
    return-void
.end method

.method protected handleDeliveryHub()V
    .registers 5

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->incomingUri:Landroid/net/Uri;

    .line 465
    :try_start_a
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 466
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mRequestID:Ljava/lang/String;

    .line 467
    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_25

    .line 473
    :cond_21
    :goto_21
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->startProcessing()V

    .line 474
    return-void

    .line 469
    :catch_25
    move-exception v0

    .line 470
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeliveryHub Exception getParcelable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public handleSearchIntent()V
    .registers 8

    .prologue
    const v6, 0x7f060013

    const/4 v5, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, title:Ljava/lang/String;
    if-nez v1, :cond_17

    .line 193
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    :cond_17
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "app_data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAppData:Landroid/os/Bundle;

    .line 200
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAppData:Landroid/os/Bundle;

    if-nez v3, :cond_6b

    .line 201
    iput-boolean v5, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchPSI:Z

    .line 206
    :goto_2e
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 207
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 211
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    if-eqz v3, :cond_6a

    .line 215
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->search(Ljava/lang/String;)V

    .line 228
    :cond_6a
    :goto_6a
    return-void

    .line 203
    .end local v0           #action:Ljava/lang/String;
    :cond_6b
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAppData:Landroid/os/Bundle;

    const-string v4, "SearchPSI"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchPSI:Z

    goto :goto_2e

    .line 217
    .restart local v0       #action:Ljava/lang/String;
    :cond_76
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 218
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 219
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_6a

    .line 220
    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    .line 221
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    if-eqz v3, :cond_6a

    .line 222
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->search(Ljava/lang/String;)V

    goto :goto_6a
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 616
    const/4 v0, -0x1

    if-ne v0, p2, :cond_c

    .line 617
    packed-switch p1, :pswitch_data_26

    .line 630
    :goto_7
    return-void

    .line 619
    :pswitch_8
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->downloadDeliveryRequestPack()V

    goto :goto_7

    .line 623
    :cond_c
    packed-switch p1, :pswitch_data_2c

    goto :goto_7

    .line 625
    :pswitch_10
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->CANCEL_TC:Lcom/sprint/w/installer/DeliveryState;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v3, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 626
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->finish()V

    goto :goto_7

    .line 617
    :pswitch_data_26
    .packed-switch 0xe2
        :pswitch_8
    .end packed-switch

    .line 623
    :pswitch_data_2c
    .packed-switch 0xe2
        :pswitch_10
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 418
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->initSearchView()V

    .line 132
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->handleSearchIntent()V

    .line 133
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v2, 0x7f0600ea

    const v3, 0x104000a

    .line 879
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 880
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 881
    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 882
    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$10;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$10;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 888
    packed-switch p1, :pswitch_data_74

    .line 924
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 926
    :goto_24
    return-object v1

    .line 890
    :pswitch_25
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mLocalErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 926
    :goto_2a
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_24

    .line 893
    :pswitch_2f
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2a

    .line 896
    :pswitch_37
    const v1, 0x7f0600e7

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 897
    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$11;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$11;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2a

    .line 904
    :pswitch_4a
    const v1, 0x7f0600e8

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2a

    .line 907
    :pswitch_55
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 908
    const v1, 0x7f060047

    new-instance v2, Lcom/sprint/w/installer/delivery/SearchActivity$12;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$12;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 914
    new-instance v1, Lcom/sprint/w/installer/delivery/SearchActivity$13;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/SearchActivity$13;-><init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_2a

    .line 888
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2f
        :pswitch_55
        :pswitch_37
        :pswitch_4a
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const v5, 0x7f0c0097

    const v6, 0x7f0c003c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getZoneLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, zone_label:Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 242
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getZoneIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 243
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 250
    :goto_32
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_59

    :goto_38
    return v1

    .line 247
    :cond_39
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0600ef

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_32

    :cond_59
    move v1, v2

    .line 250
    goto :goto_38
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 138
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->initSearchView()V

    .line 139
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/SearchActivity;->handleSearchIntent()V

    .line 140
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    .line 279
    :goto_7
    const/4 v1, 0x1

    return v1

    .line 263
    :sswitch_9
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_7

    .line 264
    :catch_14
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error opening Wi-Fi settings"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 269
    .end local v0           #e:Ljava/lang/RuntimeException;
    :sswitch_1d
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->launchZoneApp(Landroid/content/Context;)V

    goto :goto_7

    .line 273
    :sswitch_21
    :try_start_21
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0600f5

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_50} :catch_51

    goto :goto_7

    .line 274
    :catch_51
    move-exception v0

    .line 275
    .restart local v0       #e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error opening Dialer"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 260
    :sswitch_data_5a
    .sparse-switch
        0x7f0c003c -> :sswitch_1d
        0x7f0c0097 -> :sswitch_21
        0x7f0c0098 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 255
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 180
    invoke-super {p0}, Lcom/sprint/w/installer/psi/BaseActivity;->onResume()V

    .line 181
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    .line 182
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->loadAllPackDetails(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 183
    .local v1, p:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/w/installer/PackInfo;

    .line 186
    .local v2, pi:Lcom/sprint/w/installer/PackInfo;
    iget-object v4, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPacks:Ljava/util/Map;

    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    if-eqz v3, :cond_2b

    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_31

    :cond_2b
    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    :goto_2d
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_31
    iget-object v3, v2, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    goto :goto_2d

    .line 188
    .end local v2           #pi:Lcom/sprint/w/installer/PackInfo;
    :cond_34
    return-void
.end method

.method public onSearchRequested()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 232
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mAppData:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 233
    return v3
.end method

.method protected retryLastAction()V
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->search(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method search(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 284
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "com.sprint.w.installer.SuggestProvider"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    .local v1, sugg:Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v1, p1, v4}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v2, Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, p0, v3, v4}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 288
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 289
    .local v0, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/delivery/SearchActivity;->searchKeyword(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public searchLoadComplete()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 395
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 396
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const v3, 0x7f060017

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_20
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 402
    .local v0, lv:Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v1, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Listable;>;"
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    new-instance v2, Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 406
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    new-instance v2, Lcom/sprint/w/installer/psi/PackOnItemClickListener;

    const-class v3, Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {v2, v3}, Lcom/sprint/w/installer/psi/PackOnItemClickListener;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 408
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 409
    return-void

    .line 398
    .end local v0           #lv:Landroid/widget/ListView;
    .end local v1           #objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Listable;>;"
    :cond_52
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mSearchDesc:Landroid/widget/TextView;

    const v3, 0x7f060016

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sprint/w/installer/delivery/SearchActivity;->mQuery:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method
