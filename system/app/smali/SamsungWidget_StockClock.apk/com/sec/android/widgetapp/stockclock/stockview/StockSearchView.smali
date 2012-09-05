.class public Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;
.super Landroid/app/Activity;
.source "StockSearchView.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# instance fields
.field private final GRAPH_REDRAW_ID:I

.field private detailquotesdelayedbg:Landroid/widget/Button;

.field private httpHandler:Landroid/os/Handler;

.field private mAddBtn:Landroid/widget/ImageView;

.field private mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

.field private mBarGraphLayout:Landroid/widget/RelativeLayout;

.field private mChangeIcon:Landroid/widget/ImageView;

.field private mChangeTxt:Landroid/widget/TextView;

.field private mCurrentPeriod:Ljava/lang/String;

.field private mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mEps:Landroid/widget/TextView;

.field private mExchange:Ljava/lang/String;

.field private mExchangeTxt:Landroid/widget/TextView;

.field private mFlipperDisplayedIndex:I

.field private mGraphDataIndex:I

.field private mGraphDataLength:I

.field private mGraphDataLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/graph/GraphData;",
            ">;"
        }
    .end annotation
.end field

.field protected mGraphHandler:Landroid/os/Handler;

.field private mHighTxt:Landroid/widget/TextView;

.field private mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field private mIndicesFlipper:Landroid/widget/ViewFlipper;

.field private mIntent:Landroid/content/Intent;

.field private mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

.field private mLineGraphLayout:Landroid/widget/RelativeLayout;

.field private mLowTxt:Landroid/widget/TextView;

.field private mMarketCap:Landroid/widget/TextView;

.field private mMenu:Landroid/view/Menu;

.field private mName:Ljava/lang/String;

.field private mNameTxt:Landroid/widget/TextView;

.field private mNetworkRetryCount:I

.field private mNoChart:Landroid/widget/RelativeLayout;

.field private mOpenTxt:Landroid/widget/TextView;

.field private mPer:Landroid/widget/TextView;

.field private mPercentIcon:Landroid/widget/ImageView;

.field private mPercentTxt:Landroid/widget/TextView;

.field private mPeriodArray:[Ljava/lang/String;

.field private mPrevCloseTxt:Landroid/widget/TextView;

.field private mPriceTxt:Landroid/widget/TextView;

.field private mQueryResultArray:[Ljava/lang/Object;

.field private mRefreshDialog:Landroid/app/Dialog;

.field private mRequestCanceled:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSymbol:Ljava/lang/String;

.field private mTabs:Landroid/widget/TabHost;

.field private mUpdateBtn:Landroid/widget/ImageView;

.field private mUpdateText:Landroid/widget/TextView;

.field private mVolumeTxt:Landroid/widget/TextView;

.field private mYearHighTxt:Landroid/widget/TextView;

.field private mYearLowTxt:Landroid/widget/TextView;

.field private m_bLoadingFinish:Z

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mQueryResultArray:[Ljava/lang/Object;

    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v3

    const-string v1, "5d"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "1m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3m"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "6m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1y"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    .line 94
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I

    .line 95
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I

    .line 96
    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->GRAPH_REDRAW_ID:I

    .line 102
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    .line 115
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mFlipperDisplayedIndex:I

    .line 1072
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->httpHandler:Landroid/os/Handler;

    .line 1359
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$14;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->selectTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->executeRefresh()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->updateBasicStockInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mCurrentPeriod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->performGetGraphData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ViewFlipper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mFlipperDisplayedIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->startMarquee()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method private cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_c

    .line 375
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 376
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 378
    :cond_c
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 379
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;

    .line 380
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;

    .line 381
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    .line 382
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    .line 383
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    .line 384
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    .line 385
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    .line 386
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    .line 387
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    .line 388
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    .line 389
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    .line 390
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    .line 391
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    .line 392
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    .line 393
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    .line 394
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    .line 395
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    .line 396
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraphLayout:Landroid/widget/RelativeLayout;

    .line 397
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraphLayout:Landroid/widget/RelativeLayout;

    .line 399
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3f

    .line 400
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 401
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mScrollView:Landroid/widget/ScrollView;

    .line 405
    :cond_3f
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 406
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateText:Landroid/widget/TextView;

    .line 407
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    .line 408
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mQueryResultArray:[Ljava/lang/Object;

    .line 409
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    .line 410
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    .line 411
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 412
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    .line 415
    :cond_54
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    if-eqz v0, :cond_5f

    .line 416
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->close()V

    .line 417
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    .line 419
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    if-eqz v0, :cond_6a

    .line 420
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->close()V

    .line 421
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    .line 423
    :cond_6a
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;

    .line 424
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    .line 425
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMenu:Landroid/view/Menu;

    .line 426
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_7b

    .line 427
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 428
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 430
    :cond_7b
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mAddBtn:Landroid/widget/ImageView;

    .line 431
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->toast:Landroid/widget/Toast;

    .line 433
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->detailquotesdelayedbg:Landroid/widget/Button;

    if-eqz v0, :cond_8f

    .line 434
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 438
    :cond_8f
    return-void
.end method

.method private closeProgressDialog()V
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 824
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 831
    :cond_9
    :goto_9
    return-void

    .line 826
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private drawGraph(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1280
    const v0, 0x7f0b00f0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1281
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1282
    const v1, 0x7f0b00f2

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1283
    const v2, 0x7f0b00f3

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1284
    const v3, 0x7f0b00f4

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1285
    const v4, 0x7f0b0114

    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1286
    const v5, 0x7f0b0115

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1287
    const v6, 0x7f0b0116

    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1288
    const v7, 0x7f0b010f

    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1289
    const v8, 0x7f0b0113

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1290
    const v9, 0x7f0b0110

    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1292
    if-eqz p1, :cond_64

    iget-boolean v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z

    if-nez v10, :cond_7c

    .line 1294
    :cond_64
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setVisibility(I)V

    .line 1297
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1357
    :goto_7b
    return-void

    .line 1301
    :cond_7c
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v10

    iput v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I

    .line 1303
    iget v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLength:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_9b

    .line 1305
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1306
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    goto :goto_7b

    .line 1312
    :cond_9b
    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1313
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1314
    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    const v11, 0x7f02004c

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setBackgroundResource(I)V

    .line 1317
    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setVisibility(I)V

    .line 1318
    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setVisibility(I)V

    .line 1319
    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1321
    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v10, p1}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V

    .line 1322
    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {v10, p1, p3}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)V

    .line 1324
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1325
    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1327
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataIndex:I

    .line 1328
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1329
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1331
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1334
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v1, v7, v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1337
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v0, v2, v1, v7}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1340
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1344
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17a

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 1346
    :cond_17a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getDateStringGraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getDateStringGraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getDateStringGraph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7b

    .line 1353
    :cond_1a6
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7b
.end method

.method private executeRefresh()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 605
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 607
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    .line 608
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNetworkRetryCount:I

    .line 609
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->performGetQuote()V

    .line 611
    :cond_d
    return-void
.end method

.method private getData()V
    .registers 3

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIntent:Landroid/content/Intent;

    .line 530
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIntent:Landroid/content/Intent;

    const-string v1, "symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIntent:Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mName:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIntent:Landroid/content/Intent;

    const-string v1, "exchange"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchange:Ljava/lang/String;

    .line 533
    return-void
.end method

.method private gotoList()V
    .registers 3

    .prologue
    .line 1408
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1409
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1410
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->startActivity(Landroid/content/Intent;)V

    .line 1411
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->finish()V

    .line 1412
    return-void
.end method

.method private gotoSearch()V
    .registers 3

    .prologue
    .line 1416
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1417
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1418
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->startActivity(Landroid/content/Intent;)V

    .line 1419
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->finish()V

    .line 1420
    return-void
.end method

.method private gotoSetting()V
    .registers 3

    .prologue
    .line 1424
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1425
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1426
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->startActivity(Landroid/content/Intent;)V

    .line 1427
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    .line 149
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    .line 151
    const v1, 0x7f0b00e7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f0b010a

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;

    .line 153
    const v1, 0x7f0b00e9

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    .line 154
    const v1, 0x7f0b00eb

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    .line 155
    const v1, 0x7f0b00ed

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f0b00fb

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f0b00fc

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f0b0118

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0b00fd

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0b00fe

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    .line 161
    const v1, 0x7f0b0119

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f0b011a

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    .line 163
    const v1, 0x7f0b011b

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f0b00ff

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    .line 165
    const v1, 0x7f0b0100

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f0b00ea

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    .line 167
    const v1, 0x7f0b00ec

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    .line 169
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mScrollView:Landroid/widget/ScrollView;

    .line 171
    const v1, 0x7f0b010b

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mAddBtn:Landroid/widget/ImageView;

    .line 173
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 175
    const v1, 0x7f0b00f5

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraphLayout:Landroid/widget/RelativeLayout;

    .line 176
    const v1, 0x7f0b0111

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraphLayout:Landroid/widget/RelativeLayout;

    .line 177
    const v1, 0x7f0b00f7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNoChart:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 192
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraphLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLineGraph:Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraphLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mBarGraph:Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 198
    const v1, 0x7f0b00ef

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    .line 200
    const v1, 0x7f0b014b

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateText:Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateText:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 203
    const v1, 0x7f0b00da

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 204
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->regEventUpdateButton()V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makeIndicesFlipper()V

    .line 213
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mAddBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v1, 0x7f0b014a

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 223
    .local v0, block_a:Landroid/widget/ImageView;
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v1, 0x7f0b00d7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 234
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$3;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$4;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 252
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->setData()V

    .line 253
    return-void
.end method

.method private makePeriodTab(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 615
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 618
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 620
    const v1, 0x7f030026

    .line 637
    :goto_1b
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 639
    const v1, 0x7f0b0109

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 641
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 642
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 647
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v3, 0x7f0b00f0

    invoke-virtual {v0, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 649
    return-object v1

    .line 622
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 623
    const v1, 0x7f030027

    goto :goto_1b

    .line 625
    :cond_5d
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 626
    const v1, 0x7f030028

    goto :goto_1b

    .line 628
    :cond_6c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 629
    const v1, 0x7f030029

    goto :goto_1b

    .line 631
    :cond_7b
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 632
    const v1, 0x7f03002a

    goto :goto_1b

    .line 634
    :cond_8a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 635
    const v1, 0x7f03002b

    goto :goto_1b

    :cond_99
    move v1, v2

    goto :goto_1b
.end method

.method private makeTab()V
    .registers 11

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const v7, 0x7f0200b9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 549
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makePeriodTab(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, nCurrentTabIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_ad
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_c2

    .line 561
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mCurrentPeriod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 563
    move v1, v0

    .line 559
    :cond_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 566
    :cond_c2
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 567
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mCurrentPeriod:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->selectTab(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mTabs:Landroid/widget/TabHost;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$5;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$5;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 576
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_ec

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 578
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    .line 579
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->showProgressDialog()V

    .line 580
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 582
    :cond_ec
    return-void
.end method

.method private performGetGraphData(Ljava/lang/String;)V
    .registers 6
    .parameter "period"

    .prologue
    .line 697
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 699
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findNextGraphPeriodIndex(Ljava/lang/String;)I

    move-result v0

    .line 700
    .local v0, nextIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 709
    .end local v0           #nextIndex:I
    :cond_b
    :goto_b
    return-void

    .line 704
    .restart local v0       #nextIndex:I
    :cond_c
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_b

    .line 706
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    goto :goto_b
.end method

.method private performGetQuote()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 689
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    .line 690
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 691
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->showProgressDialog()V

    .line 692
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    .line 693
    return-void
.end method

.method private regEventUpdateButton()V
    .registers 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$6;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    return-void
.end method

.method private selectTab(Ljava/lang/String;)V
    .registers 9
    .parameter "period"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 654
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mCurrentPeriod:Ljava/lang/String;

    .line 656
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 658
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 684
    .local v0, graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :goto_19
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->drawGraph(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-void

    .line 660
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 662
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    goto :goto_19

    .line 664
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :cond_32
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 666
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    goto :goto_19

    .line 668
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :cond_45
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 670
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    goto :goto_19

    .line 672
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :cond_58
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 674
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    goto :goto_19

    .line 676
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :cond_6b
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 678
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    goto :goto_19

    .line 682
    .end local v0           #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    :cond_80
    const/4 v0, 0x0

    .restart local v0       #graphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    goto :goto_19
.end method

.method private setData()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f090050

    .line 507
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 513
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 514
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 519
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 522
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makeTab()V

    .line 524
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 525
    return-void
.end method

.method private setFlipperHandle()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 491
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mFlipperDisplayedIndex:I

    if-eq v0, v2, :cond_18

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mFlipperDisplayedIndex:I

    if-le v0, v1, :cond_18

    .line 492
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mFlipperDisplayedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 493
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mFlipperDisplayedIndex:I

    .line 495
    :cond_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 496
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_50

    .line 500
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 502
    :cond_50
    return-void
.end method

.method private showProgressDialog()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 728
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNameTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 729
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchangeTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 730
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    if-nez v0, :cond_34

    .line 732
    const/4 v1, 0x0

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    .line 746
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$8;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 774
    :cond_34
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->stopMarquee()V

    .line 775
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 776
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$9;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 784
    return-void
.end method

.method private startMarquee()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 805
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 806
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 807
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 808
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 809
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 816
    return-void
.end method

.method private stopMarquee()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 789
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 790
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 791
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 792
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 793
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 795
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 796
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 797
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 800
    return-void
.end method

.method private updateBasicStockInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)V
    .registers 12
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x4

    const v7, 0x7f090050

    const/4 v6, 0x0

    .line 899
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36f

    .line 902
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_2b1

    .line 905
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    const v2, 0x7f020092

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    const v2, 0x7f020097

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 909
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 910
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    :goto_8c
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37b

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_37b

    .line 946
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTextSize(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 954
    :goto_c1
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38a

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38a

    .line 956
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 964
    :goto_ef
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_399

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_399

    .line 966
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 974
    :goto_11d
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a8

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3a8

    .line 976
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeVolumeFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeVolumeFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 984
    :goto_14b
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b7

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b7

    .line 986
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 994
    :goto_179
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c6

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3c6

    .line 996
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1004
    :goto_1a7
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d5

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3d5

    .line 1006
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1014
    :goto_1d5
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e4

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e4

    .line 1016
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1024
    :goto_203
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f3

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3f3

    .line 1026
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1034
    :goto_231
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_402

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_402

    .line 1036
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1044
    :goto_25f
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_411

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_411

    .line 1046
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v6, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1054
    :goto_28d
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2a9

    .line 1055
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$10;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$10;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1069
    :cond_2a9
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->updateDate(Ljava/lang/String;)V

    .line 1070
    return-void

    .line 914
    :cond_2b1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-lez v2, :cond_31c

    .line 916
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200a7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200a1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 920
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    const/16 v2, 0x99

    const/16 v3, 0x20

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    const/16 v2, 0x99

    const/16 v3, 0x20

    invoke-static {v2, v5, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8c

    .line 925
    :cond_31c
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v2, v8

    if-nez v0, :cond_363

    .line 927
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentTxt:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8c

    .line 934
    :cond_363
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8c

    .line 940
    :cond_36f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mChangeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPercentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8c

    .line 951
    :cond_37b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPriceTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c1

    .line 961
    :cond_38a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHighTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ef

    .line 971
    :cond_399
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mLowTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11d

    .line 981
    :cond_3a8
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mVolumeTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14b

    .line 991
    :cond_3b7
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPrevCloseTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_179

    .line 1001
    :cond_3c6
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mOpenTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a7

    .line 1011
    :cond_3d5
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMarketCap:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d5

    .line 1021
    :cond_3e4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mEps:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_203

    .line 1031
    :cond_3f3
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPer:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_231

    .line 1041
    :cond_402
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearHighTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25f

    .line 1051
    :cond_411
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mYearLowTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28d
.end method

.method private updateBasicStockInfo()Z
    .registers 4

    .prologue
    .line 883
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    if-eqz v1, :cond_31

    .line 885
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 887
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 889
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->updateBasicStockInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)V

    .line 890
    const/4 v1, 0x1

    .line 894
    .end local v0           #i:I
    :goto_2d
    return v1

    .line 885
    .restart local v0       #i:I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 894
    .end local v0           #i:I
    :cond_31
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method private updateDate(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 588
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 589
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 442
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 444
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 445
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 447
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 449
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 451
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 453
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 457
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .registers 13
    .parameter "updateDate"

    .prologue
    const-wide/16 v1, 0x0

    .line 1547
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    .line 1548
    .local v10, gd:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    const-wide/16 v5, 0x0

    const-string v9, ""

    move-wide v3, v1

    move-wide v7, v1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;-><init>(DDJDLjava/lang/String;)V

    .line 1550
    .local v0, graph:Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    invoke-virtual {v10, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->addGraphData(Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;)V

    .line 1551
    invoke-virtual {v10, p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1552
    return-object v10
.end method

.method clearQueryResultArray()V
    .registers 4

    .prologue
    .line 835
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mQueryResultArray:[Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 837
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mQueryResultArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 839
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 842
    .end local v0           #i:I
    :cond_12
    return-void
.end method

.method findNextGraphPeriodIndex(Ljava/lang/String;)I
    .registers 4
    .parameter "period"

    .prologue
    .line 713
    if-nez p1, :cond_4

    .line 714
    const/4 v1, 0x0

    .line 722
    :goto_3
    return v1

    .line 715
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 717
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 719
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 715
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 722
    :cond_1c
    const/4 v1, -0x1

    goto :goto_3
.end method

.method public makeIndicesFlipper()V
    .registers 19

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v14, :cond_10f

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 264
    :goto_14
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 265
    .local v13, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v14}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v8

    .line 266
    .local v8, indicesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_28f

    .line 268
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 269
    .local v1, IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    const v14, 0x7f03002f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 270
    .local v7, indicesLayout:Landroid/widget/LinearLayout;
    const v14, 0x7f0b00df

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 271
    .local v9, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const v14, 0x7f0b00e0

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 273
    .local v12, price:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const v14, 0x7f0b00e2

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 275
    .local v2, change:Landroid/widget/TextView;
    const v14, 0x7f0b00e1

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 276
    .local v4, change_icon:Landroid/widget/ImageView;
    const v14, 0x7f0b00e4

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 277
    .local v10, percent:Landroid/widget/TextView;
    const v14, 0x7f0b00e3

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 278
    .local v11, percent_icon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_23a

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "N"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_23a

    .line 282
    :try_start_9d
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 283
    .local v3, changeValue:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_120

    .line 285
    const v14, 0x7f0200a7

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    const v14, 0x7f0200a1

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 289
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_104} :catch_191

    .line 334
    .end local v3           #changeValue:Ljava/lang/Double;
    :goto_104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14, v7}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_27

    .line 262
    .end local v1           #IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    .end local v2           #change:Landroid/widget/TextView;
    .end local v4           #change_icon:Landroid/widget/ImageView;
    .end local v6           #i:I
    .end local v7           #indicesLayout:Landroid/widget/LinearLayout;
    .end local v8           #indicesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    .end local v9           #name:Landroid/widget/TextView;
    .end local v10           #percent:Landroid/widget/TextView;
    .end local v11           #percent_icon:Landroid/widget/ImageView;
    .end local v12           #price:Landroid/widget/TextView;
    .end local v13           #vi:Landroid/view/LayoutInflater;
    :cond_10f
    const v14, 0x7f0b00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewFlipper;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    goto/16 :goto_14

    .line 292
    .restart local v1       #IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    .restart local v2       #change:Landroid/widget/TextView;
    .restart local v3       #changeValue:Ljava/lang/Double;
    .restart local v4       #change_icon:Landroid/widget/ImageView;
    .restart local v6       #i:I
    .restart local v7       #indicesLayout:Landroid/widget/LinearLayout;
    .restart local v8       #indicesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    .restart local v9       #name:Landroid/widget/TextView;
    .restart local v10       #percent:Landroid/widget/TextView;
    .restart local v11       #percent_icon:Landroid/widget/ImageView;
    .restart local v12       #price:Landroid/widget/TextView;
    .restart local v13       #vi:Landroid/view/LayoutInflater;
    :cond_120
    :try_start_120
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1e7

    .line 295
    const v14, 0x7f020092

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    const v14, 0x7f020097

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 299
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    const-string v15, "-"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    const-string v16, "-"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_18f} :catch_191

    goto/16 :goto_104

    .line 312
    .end local v3           #changeValue:Ljava/lang/Double;
    :catch_191
    move-exception v5

    .line 314
    .local v5, e:Ljava/lang/Exception;
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090050

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_104

    .line 304
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #changeValue:Ljava/lang/Double;
    :cond_1e7
    const/4 v14, 0x4

    :try_start_1e8
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 308
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_238} :catch_191

    goto/16 :goto_104

    .line 325
    .end local v3           #changeValue:Ljava/lang/Double;
    :cond_23a
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090050

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_104

    .line 336
    .end local v1           #IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    .end local v2           #change:Landroid/widget/TextView;
    .end local v4           #change_icon:Landroid/widget/ImageView;
    .end local v7           #indicesLayout:Landroid/widget/LinearLayout;
    .end local v9           #name:Landroid/widget/TextView;
    .end local v10           #percent:Landroid/widget/TextView;
    .end local v11           #percent_icon:Landroid/widget/ImageView;
    .end local v12           #price:Landroid/widget/TextView;
    :cond_28f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_29d

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->setFlipperHandle()V

    .line 340
    :cond_29d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 537
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 538
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->setContentView(I)V

    .line 540
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->init()V

    .line 541
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z

    if-eqz v0, :cond_13

    .line 543
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->updateBasicStockInfo()Z

    .line 545
    :cond_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundel"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getData()V

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 126
    const-string v1, "Tag"

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->setContentView(I)V

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2e

    .line 133
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 136
    :cond_2e
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 137
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 139
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mCurrentPeriod:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->init()V

    .line 142
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->performGetQuote()V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 358
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 362
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_13

    .line 368
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->RemoveAllThread()V

    .line 369
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->cleanResource()V

    .line 370
    return-void

    .line 364
    :catch_13
    move-exception v0

    goto :goto_c
.end method

.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f09003d

    const v2, 0x7f09003a

    const/4 v1, 0x1

    .line 1089
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    if-eqz v0, :cond_c

    .line 1276
    :cond_b
    :goto_b
    return-void

    .line 1094
    :cond_c
    const/16 v0, 0x67

    if-ne p1, v0, :cond_1d

    .line 1096
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$11;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1149
    :cond_1d
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6f

    .line 1151
    if-nez p2, :cond_30

    .line 1153
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$12;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/Object;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1176
    :cond_30
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V

    .line 1177
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1178
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    .line 1179
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1192
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 1197
    :cond_50
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mNetworkRetryCount:I

    if-lez v0, :cond_63

    .line 1209
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 1223
    :cond_63
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 1228
    :cond_6f
    const/16 v0, 0x69

    if-ne p1, v0, :cond_b

    .line 1230
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z

    if-nez v0, :cond_b

    .line 1235
    if-nez p2, :cond_84

    .line 1237
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$13;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 1258
    :cond_84
    const/4 v0, 0x4

    if-ne p2, v0, :cond_97

    .line 1260
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V

    .line 1261
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1265
    :cond_97
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V

    .line 1266
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 1268
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1272
    :cond_b4
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1432
    const-string v1, "Tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2d

    .line 1436
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIntent:Landroid/content/Intent;

    const-string v2, "through"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1437
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->setResult(ILandroid/content/Intent;)V

    .line 1438
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->finish()V

    .line 1442
    :goto_2c
    return v0

    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1605
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 1620
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 1608
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->saveData()V

    goto :goto_c

    .line 1611
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->gotoList()V

    goto :goto_c

    .line 1614
    :pswitch_15
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->gotoSearch()V

    goto :goto_c

    .line 1617
    :pswitch_19
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->gotoSetting()V

    goto :goto_c

    .line 1605
    nop

    :pswitch_data_1e
    .packed-switch 0x7f0b0160
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->closeProgressDialog()V

    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 346
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1447
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1449
    if-eqz p1, :cond_2f

    .line 1451
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-eqz v1, :cond_f

    .line 1452
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1454
    :cond_f
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMenu:Landroid/view/Menu;

    .line 1457
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1459
    const v2, 0x7f0a000b

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1461
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_2e

    .line 1464
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1467
    :cond_2e
    const/4 v0, 0x1

    .line 1469
    :cond_2f
    return v0
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makeIndicesFlipper()V

    .line 352
    return-void
.end method

.method public refreshIndice()V
    .registers 5

    .prologue
    .line 1078
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1079
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1080
    .local v2, symbols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 1081
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1082
    :cond_22
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v3, v2, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 1083
    return-void
.end method

.method public saveData()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x14

    .line 1557
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-nez v0, :cond_13

    .line 1558
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 1561
    :cond_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    if-lt v0, v2, :cond_36

    .line 1569
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1601
    :cond_35
    :goto_35
    return-void

    .line 1571
    :cond_36
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->saveDataAtDB()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1573
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    if-lt v0, v2, :cond_5e

    .line 1581
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1583
    :cond_5e
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1584
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35
.end method

.method public saveDataAtDB()Z
    .registers 10

    .prologue
    const/16 v8, 0x14

    const/16 v7, -0x5a

    const/4 v3, 0x1

    const v6, 0x7f090051

    const/4 v2, 0x0

    .line 1474
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->isAleadyExistStock(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1476
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1542
    :cond_2d
    :goto_2d
    return v2

    .line 1479
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchange:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 1483
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_79

    move v1, v2

    .line 1486
    :goto_49
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c9

    .line 1488
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1490
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mStockList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v4, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 1486
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 1499
    :cond_79
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1500
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1501
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1502
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mExchange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 1507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1508
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    .line 1510
    :cond_c9
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;

    .line 1511
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 1512
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->deleteGraphData(Ljava/lang/String;)I

    move-result v0

    .line 1513
    if-eq v0, v7, :cond_10b

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z

    if-eqz v0, :cond_10b

    .line 1515
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    move-result-object v0

    .line 1516
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    const-string v6, "0d"

    invoke-virtual {v1, v4, v6, v0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v0

    .line 1517
    if-eq v0, v7, :cond_10b

    move v1, v2

    .line 1519
    :goto_ea
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10b

    .line 1521
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 1522
    if-eqz v0, :cond_132

    .line 1524
    invoke-virtual {v0, v5}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1525
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v4, v7, v0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v0

    .line 1527
    if-eqz v0, :cond_132

    .line 1537
    :cond_10b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v3

    .line 1542
    goto/16 :goto_2d

    .line 1519
    :cond_132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ea
.end method

.method storeGraphData2QueryResultArray(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V
    .registers 9
    .parameter "period"
    .parameter "data"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 855
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 857
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 879
    :cond_14
    :goto_14
    return-void

    .line 859
    :cond_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 861
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 863
    :cond_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 865
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 867
    :cond_35
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 869
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 871
    :cond_45
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 873
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 875
    :cond_55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mPeriodArray:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 877
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mGraphDataLists:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method storeStockData2QueryResultArray(Ljava/lang/Object;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mQueryResultArray:[Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 848
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 850
    :cond_9
    return-void
.end method
