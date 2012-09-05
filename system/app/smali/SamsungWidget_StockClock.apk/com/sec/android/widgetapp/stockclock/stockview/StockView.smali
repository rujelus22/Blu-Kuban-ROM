.class public Lcom/sec/android/widgetapp/stockclock/stockview/StockView;
.super Landroid/app/Activity;
.source "StockView.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;
    }
.end annotation


# static fields
.field private static keyBuf:Ljava/lang/String;

.field public static mRefreshDialog:Landroid/app/ProgressDialog;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private activityresult:Z

.field private detailquotesdelayedbg:Landroid/widget/Button;

.field private forceClosing:Z

.field private gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

.field private httpHandler:Landroid/os/Handler;

.field private leftArrowImg:Landroid/widget/ImageView;

.field private mCurrentTab:Ljava/lang/String;

.field private mCurrentTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mErrorDialog:Landroid/app/Dialog;

.field private mExchangeFlipper:Landroid/widget/ViewFlipper;

.field private mFlipperDisplayedIndex:I

.field private mGraphDataIndex:I

.field private mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field private mIndicesFlipper:Landroid/widget/ViewFlipper;

.field mIsVisible:Z

.field private mNetworkDialog:Landroid/app/Dialog;

.field private mNoUrl:Landroid/app/Dialog;

.field private mPeriodArray:[Ljava/lang/String;

.field mQueryResultArray:[Ljava/lang/Object;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRequestCanceled:Z

.field private mSelName:Ljava/lang/String;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mStockListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStocklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBtn:Landroid/widget/ImageView;

.field private mUpdateText:Landroid/widget/TextView;

.field private mViewPosition:I

.field onBlockAClickListener:Landroid/view/View$OnClickListener;

.field onClickToListListener:Landroid/view/View$OnClickListener;

.field onGalleryItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field onGalleryTouchListener:Landroid/view/View$OnTouchListener;

.field onScrollTocuchListener:Landroid/view/View$OnTouchListener;

.field private refreshFlag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private rightArrowImg:Landroid/widget/ImageView;

.field private selSymbol:Ljava/lang/String;

.field private stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 96
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->keyBuf:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mappingKey:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogState:I

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    .line 103
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    .line 104
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogEdit:Landroid/widget/EditText;

    .line 115
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    .line 116
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 117
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v4

    const-string v1, "5d"

    aput-object v1, v0, v5

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

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    .line 120
    const-string v0, "1d"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    .line 122
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNetworkDialog:Landroid/app/Dialog;

    .line 123
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mErrorDialog:Landroid/app/Dialog;

    .line 124
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNoUrl:Landroid/app/Dialog;

    .line 125
    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I

    .line 126
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    .line 129
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    .line 130
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIsVisible:Z

    .line 131
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;

    .line 132
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    .line 133
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mFlipperDisplayedIndex:I

    .line 137
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->forceClosing:Z

    .line 207
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onGalleryItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 254
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onGalleryTouchListener:Landroid/view/View$OnTouchListener;

    .line 388
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$3;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    .line 755
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$6;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1633
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->activityresult:Z

    .line 2006
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->httpHandler:Landroid/os/Handler;

    .line 2195
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$15;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$15;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onClickToListListener:Landroid/view/View$OnClickListener;

    .line 2206
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$16;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$16;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onScrollTocuchListener:Landroid/view/View$OnTouchListener;

    .line 2223
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setSLog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Landroid/widget/ViewFlipper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mFlipperDisplayedIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->performGetGraphData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;Landroid/view/View;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->makeFlipper(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mGraphDataIndex:I

    return p1
.end method

.method static synthetic access$2702(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->leftArrowImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->rightArrowImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mViewPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mViewPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 92
    sget v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogState:I

    return v0
.end method

.method static synthetic access$902(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    sput p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogState:I

    return p0
.end method

.method private closeProgressDialog()V
    .registers 2

    .prologue
    .line 1986
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 1990
    :try_start_4
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 1997
    :cond_9
    :goto_9
    return-void

    .line 1992
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private executeRefresh()V
    .registers 3

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1472
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1482
    :cond_18
    :goto_18
    return-void

    .line 1476
    :cond_19
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    .line 1479
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->performGetQuote()V

    goto :goto_18
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 618
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private initGallery()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 194
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .line 195
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAnimationDuration(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSpacing(I)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setFadingEdgeLength(I)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onGalleryItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onGalleryTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setGallerySelect(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private itemMaxDialog()V
    .registers 5

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_2a

    .line 1871
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->maximumCheck()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1873
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1877
    :cond_2a
    return-void
.end method

.method private makeFlipper(Ljava/lang/String;Landroid/view/View;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setArrowVisibility()V

    .line 920
    const-string v1, ""

    .line 921
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockList()Ljava/util/ArrayList;

    move-result-object v3

    .line 922
    const/4 v0, 0x0

    move v2, v0

    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3e

    .line 924
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64c

    .line 926
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSelName:Ljava/lang/String;

    .line 927
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v0

    .line 922
    :goto_39
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_d

    .line 933
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockMainInfoObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object v2

    .line 936
    if-eqz v2, :cond_448

    .line 938
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateDate(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v3

    .line 946
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSelName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 949
    const v0, 0x7f0b010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 951
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v4

    .line 953
    if-eqz v4, :cond_575

    .line 957
    :try_start_8d
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 958
    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_449

    .line 960
    const-string v0, "-"

    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 961
    const-string v0, "-"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 962
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 963
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 964
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f020092

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 965
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f020097

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 966
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_12c} :catch_4d6

    .line 1005
    :goto_12c
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_591

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_591

    .line 1007
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTextSize(Landroid/content/Context;I)I

    move-result v1

    .line 1010
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1027
    :goto_17a
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5a2

    .line 1029
    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1038
    :goto_1bf
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b3

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5b3

    .line 1040
    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1049
    :goto_204
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c4

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5c4

    .line 1051
    const v0, 0x7f0b0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeVolumeFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1060
    :goto_249
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d5

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5d5

    .line 1062
    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1071
    :goto_28e
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e6

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5e6

    .line 1073
    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1082
    :goto_2d3
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f7

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5f7

    .line 1084
    const v0, 0x7f0b0119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b0119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1093
    :goto_318
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_608

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_608

    .line 1095
    const v0, 0x7f0b011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1104
    :goto_35d
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_619

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_619

    .line 1106
    const v0, 0x7f0b011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1115
    :goto_3a2
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62a

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_62a

    .line 1117
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1126
    :goto_3e7
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63b

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_63b

    .line 1128
    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v0, v2, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1137
    :goto_42c
    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_448

    .line 1138
    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$7;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1151
    :cond_448
    return-void

    .line 969
    :cond_449
    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_4f6

    .line 971
    const v0, 0x7f0b00eb

    :try_start_452
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0x99

    const/16 v6, 0xff

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 972
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0x99

    const/16 v6, 0xff

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 973
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f0200a7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 974
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f0200a1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 975
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4d4
    .catch Ljava/lang/Exception; {:try_start_452 .. :try_end_4d4} :catch_4d6

    goto/16 :goto_12c

    .line 991
    :catch_4d6
    move-exception v0

    .line 993
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 994
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_12c

    .line 978
    :cond_4f6
    const-wide/16 v0, 0x0

    cmpl-double v0, v5, v0

    if-nez v0, :cond_559

    .line 980
    const v0, 0x7f0b00ea

    :try_start_4ff
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090052

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12c

    .line 987
    :cond_559
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_573
    .catch Ljava/lang/Exception; {:try_start_4ff .. :try_end_573} :catch_4d6

    goto/16 :goto_12c

    .line 1001
    :cond_575
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1002
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_12c

    .line 1024
    :cond_591
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_17a

    .line 1035
    :cond_5a2
    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1bf

    .line 1046
    :cond_5b3
    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_204

    .line 1057
    :cond_5c4
    const v0, 0x7f0b0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_249

    .line 1068
    :cond_5d5
    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_28e

    .line 1079
    :cond_5e6
    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2d3

    .line 1090
    :cond_5f7
    const v0, 0x7f0b0119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_318

    .line 1101
    :cond_608
    const v0, 0x7f0b011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_35d

    .line 1112
    :cond_619
    const v0, 0x7f0b011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3a2

    .line 1123
    :cond_62a
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3e7

    .line 1134
    :cond_63b
    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_42c

    :cond_64c
    move-object v0, v1

    goto/16 :goto_39
.end method

.method private performGetGraphData(Ljava/lang/String;)V
    .registers 6
    .parameter "period"

    .prologue
    .line 1622
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findNextGraphPeriodIndex(Ljava/lang/String;)I

    move-result v0

    .line 1623
    .local v0, nextIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1631
    :cond_7
    :goto_7
    return-void

    .line 1627
    :cond_8
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_7

    .line 1629
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    goto :goto_7
.end method

.method private performGetQuote()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1612
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1613
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 1615
    :cond_d
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 1616
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->showProgressDialog()V

    .line 1617
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v1, v2, p0, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    .line 1618
    return-void
.end method

.method private refreshAllList()V
    .registers 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->refreshAllList()V

    .line 1882
    return-void
.end method

.method private regEventUpdateButton()V
    .registers 3

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$8;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$9;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$10;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1466
    return-void
.end method

.method private releaseGallery()V
    .registers 6

    .prologue
    const v4, 0x7f0b00e7

    const/4 v3, 0x0

    .line 281
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 282
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 283
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->notifyDataSetChanged()V

    .line 284
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 288
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 289
    .local v1, vg:Landroid/view/ViewGroup;
    if-eqz v1, :cond_47

    .line 291
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 293
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :cond_44
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 286
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 299
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 300
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    .line 301
    return-void
.end method

.method private setFlipperHandle()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1425
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mFlipperDisplayedIndex:I

    if-eq v0, v2, :cond_18

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mFlipperDisplayedIndex:I

    if-le v0, v1, :cond_18

    .line 1426
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mFlipperDisplayedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1427
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mFlipperDisplayedIndex:I

    .line 1429
    :cond_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1430
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1431
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 1432
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1434
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 1436
    :cond_50
    return-void
.end method

.method private setGallerySelect(Ljava/lang/String;)V
    .registers 5
    .parameter "symbol"

    .prologue
    .line 1886
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    .line 1887
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 1890
    :cond_c
    const/4 v1, 0x0

    .line 1891
    .local v1, selection:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 1893
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1895
    move v1, v0

    .line 1899
    :cond_29
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(I)V

    .line 1900
    return-void

    .line 1891
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 606
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->keyBuf:Ljava/lang/String;

    .line 614
    :goto_18
    return-void

    .line 612
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 623
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 624
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 625
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 629
    return-void
.end method

.method private showDeleteDialog()V
    .registers 5

    .prologue
    .line 2636
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2637
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2638
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2639
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2640
    const v0, 0x7f090014

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2641
    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2643
    const v0, 0x7f090029

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$17;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2681
    const v0, 0x7f09002a

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$18;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$18;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2689
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2690
    return-void
.end method

.method private showProgressDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1904
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setChangeTabStatus(Z)V

    .line 1905
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1907
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1910
    :cond_20
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1911
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1982
    return-void
.end method

.method private updateBasicStockInfo()Z
    .registers 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1158
    const/4 v0, 0x0

    .line 1161
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private updateBasicStockInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v0, 0x0

    const v10, 0x7f0b00ec

    const v9, 0x7f0b00ea

    const/4 v8, 0x4

    const v7, 0x7f090050

    .line 1190
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1192
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockMainInfoObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object p1

    .line 1193
    if-nez p1, :cond_1e

    .line 1420
    :goto_1d
    return v0

    .line 1196
    :cond_1e
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v2

    .line 1197
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v1

    .line 1198
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3eb

    .line 1200
    if-eqz v1, :cond_58d

    .line 1204
    :try_start_30
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 1205
    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3ee

    .line 1207
    const-string v0, "-"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1208
    const-string v0, "-"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1209
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0x3e

    const/16 v5, 0x22

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1211
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0x3e

    const/16 v5, 0x22

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1213
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020092

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1215
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020097

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_11d} :catch_56c

    move-object v0, v1

    move-object v1, v2

    :goto_11f
    move-object v2, v1

    move-object v1, v0

    .line 1281
    :goto_121
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1282
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_171

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_171

    .line 1286
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V

    .line 1289
    :cond_171
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b00ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5ad

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5ad

    .line 1297
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b00e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTextSize(Landroid/content/Context;I)I

    move-result v1

    .line 1301
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b00e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1318
    :goto_218
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c1

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5c1

    .line 1320
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    :goto_246
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d5

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5d5

    .line 1330
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    :goto_274
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e9

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5e9

    .line 1340
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeVolumeFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    :goto_2a2
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5fd

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5fd

    .line 1350
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1358
    :goto_2d0
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_611

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_611

    .line 1360
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    :goto_2fe
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_625

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_625

    .line 1370
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getMarketcap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    :goto_32c
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_639

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_639

    .line 1380
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getEpscurryear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    :goto_35a
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64d

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_64d

    .line 1390
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPeratio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    :goto_388
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_661

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_661

    .line 1400
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    :goto_3b6
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_675

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_675

    .line 1410
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    :goto_3e4
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateDate(Ljava/lang/String;)V

    .line 1420
    :cond_3eb
    const/4 v0, 0x1

    goto/16 :goto_1d

    .line 1227
    :cond_3ee
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4c5

    .line 1229
    :try_start_3f4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0xb7

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1231
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0xb7

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1233
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0200a7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1235
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0200a1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_11f

    .line 1247
    :cond_4c5
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_542

    .line 1249
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1253
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_11f

    .line 1261
    :cond_542
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1263
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_568
    .catch Ljava/lang/Exception; {:try_start_3f4 .. :try_end_568} :catch_56c

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_11f

    .line 1267
    :catch_56c
    move-exception v0

    .line 1269
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1271
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_121

    .line 1278
    :cond_58d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_121

    .line 1315
    :cond_5ad
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_218

    .line 1325
    :cond_5c1
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_246

    .line 1335
    :cond_5d5
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_274

    .line 1345
    :cond_5e9
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2a2

    .line 1355
    :cond_5fd
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2d0

    .line 1365
    :cond_611
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2fe

    .line 1375
    :cond_625
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_32c

    .line 1385
    :cond_639
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_35a

    .line 1395
    :cond_64d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_388

    .line 1405
    :cond_661
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3b6

    .line 1415
    :cond_675
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3e4
.end method

.method private updateBasicStockInfo(Ljava/lang/String;)Z
    .registers 7
    .parameter "symbol"

    .prologue
    .line 1166
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockMainInfoObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object v2

    .line 1167
    .local v2, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1168
    .local v0, StockDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockListItem;>;"
    if-eqz v2, :cond_59

    .line 1170
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4c

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 1172
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getExchange()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 1170
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1179
    :cond_4c
    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1181
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Z

    move-result v3

    .line 1185
    .end local v1           #i:I
    :goto_58
    return v3

    :cond_59
    const/4 v3, 0x0

    goto :goto_58
.end method

.method private updateDate(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 2011
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 2012
    if-eqz p1, :cond_5b

    .line 2014
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2015
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    .line 2018
    :cond_5b
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 833
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 835
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 836
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 838
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 840
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 842
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 844
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 848
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .registers 13
    .parameter "updateDate"

    .prologue
    const-wide/16 v1, 0x0

    .line 1586
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    .line 1587
    .local v10, gd:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    const-wide/16 v5, 0x0

    const-string v9, ""

    move-wide v3, v1

    move-wide v7, v1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;-><init>(DDJDLjava/lang/String;)V

    .line 1589
    .local v0, graph:Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    invoke-virtual {v10, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->addGraphData(Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;)V

    .line 1590
    invoke-virtual {v10, p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1591
    return-object v10
.end method

.method public cleanResource()V
    .registers 4

    .prologue
    const v2, 0x7f0b00ef

    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    if-eqz v0, :cond_f

    .line 853
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 857
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_1a

    .line 858
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 859
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    .line 861
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    .line 862
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 864
    :cond_20
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_2b

    .line 865
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 866
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 869
    :cond_2b
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    .line 870
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 871
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    .line 872
    sput-object v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 873
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNetworkDialog:Landroid/app/Dialog;

    .line 874
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mErrorDialog:Landroid/app/Dialog;

    .line 875
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNoUrl:Landroid/app/Dialog;

    .line 876
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    .line 878
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 879
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStocklist:Ljava/util/ArrayList;

    .line 881
    :cond_46
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    .line 883
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    if-eqz v0, :cond_78

    .line 885
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    if-eqz v0, :cond_71

    .line 886
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->removeAllViews()V

    .line 888
    :cond_71
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 889
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .line 892
    :cond_78
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    .line 893
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_85

    .line 894
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 895
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 898
    :cond_85
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 899
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->leftArrowImg:Landroid/widget/ImageView;

    .line 900
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->rightArrowImg:Landroid/widget/ImageView;

    .line 901
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 902
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    if-eqz v0, :cond_98

    .line 903
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 904
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    .line 906
    :cond_98
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a3

    .line 907
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 908
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;

    .line 912
    :cond_a3
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogEdit:Landroid/widget/EditText;

    .line 914
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    .line 915
    return-void
.end method

.method clearQueryResultArray()V
    .registers 4

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 1488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1490
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1493
    .end local v0           #i:I
    :cond_12
    return-void
.end method

.method findNextGraphPeriodIndex(Ljava/lang/String;)I
    .registers 4
    .parameter "period"

    .prologue
    .line 1597
    if-nez p1, :cond_4

    .line 1598
    const/4 v1, 0x0

    .line 1607
    :goto_3
    return v1

    .line 1599
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 1601
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1603
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 1599
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1607
    :cond_1c
    const/4 v1, -0x1

    goto :goto_3
.end method

.method public makeIndicesFlipper()V
    .registers 19

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v14, :cond_115

    .line 413
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 418
    :goto_14
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 419
    .local v13, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v14}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v8

    .line 421
    .local v8, indicesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_29d

    .line 423
    const v14, 0x7f03002f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 424
    .local v7, indicesLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 425
    .local v1, IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    const v14, 0x7f0b00df

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 426
    .local v9, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const v14, 0x7f0b00e0

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 428
    .local v12, price:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    const v14, 0x7f0b00e2

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 430
    .local v2, change:Landroid/widget/TextView;
    const v14, 0x7f0b00e1

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 431
    .local v4, change_icon:Landroid/widget/ImageView;
    const v14, 0x7f0b00e4

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 432
    .local v10, percent:Landroid/widget/TextView;
    const v14, 0x7f0b00e3

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 433
    .local v11, percent_icon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_248

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "N"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_248

    .line 437
    :try_start_9f
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 438
    .local v3, changeValue:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_126

    .line 440
    const v14, 0x7f0200a7

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    const v14, 0x7f0200a1

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 444
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_10a} :catch_19b

    .line 486
    .end local v3           #changeValue:Ljava/lang/Double;
    :goto_10a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14, v7}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 421
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_27

    .line 416
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
    :cond_115
    const v14, 0x7f0b00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewFlipper;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    goto/16 :goto_14

    .line 447
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
    :cond_126
    :try_start_126
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1f1

    .line 449
    const v14, 0x7f020092

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    const v14, 0x7f020097

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 453
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    const-string v15, "-"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    const-string v16, "-"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_199} :catch_19b

    goto/16 :goto_10a

    .line 466
    .end local v3           #changeValue:Ljava/lang/Double;
    :catch_19b
    move-exception v5

    .line 468
    .local v5, e:Ljava/lang/Exception;
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_10a

    .line 458
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #changeValue:Ljava/lang/Double;
    :cond_1f1
    const/4 v14, 0x4

    :try_start_1f2
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 462
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_246} :catch_19b

    goto/16 :goto_10a

    .line 479
    .end local v3           #changeValue:Ljava/lang/Double;
    :cond_248
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_10a

    .line 488
    .end local v1           #IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    .end local v2           #change:Landroid/widget/TextView;
    .end local v4           #change_icon:Landroid/widget/ImageView;
    .end local v7           #indicesLayout:Landroid/widget/LinearLayout;
    .end local v9           #name:Landroid/widget/TextView;
    .end local v10           #percent:Landroid/widget/TextView;
    .end local v11           #percent_icon:Landroid/widget/ImageView;
    .end local v12           #price:Landroid/widget/TextView;
    :cond_29d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v14, :cond_2bb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2bb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->isAutoStart()Z

    move-result v14

    if-nez v14, :cond_2bb

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setFlipperHandle()V

    .line 492
    :cond_2bb
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x28

    const/4 v5, -0x1

    const-wide/32 v8, 0x1b7740

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1707
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1709
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onClickToListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1712
    :cond_37
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->activityresult:Z

    .line 1713
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1715
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5a

    .line 1716
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1718
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    if-nez v0, :cond_6d

    .line 1720
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setResult(ILandroid/content/Intent;)V

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->finish()V

    .line 1865
    :cond_6c
    :goto_6c
    return-void

    .line 1725
    :cond_6d
    const/16 v0, -0x5a

    if-ne p2, v0, :cond_75

    .line 1727
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setResult(I)V

    goto :goto_6c

    .line 1731
    :cond_75
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_f9

    .line 1733
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    .line 1734
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_bb

    .line 1737
    :cond_a2
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1738
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V

    .line 1740
    :cond_bb
    if-eqz p3, :cond_df

    .line 1742
    const-string v0, "symbol"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 1744
    const-string v0, "symbol"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1746
    :cond_cd
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V

    .line 1747
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 1748
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    .line 1749
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setGallerySelect(Ljava/lang/String;)V

    .line 1750
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo()Z

    goto :goto_6c

    .line 1755
    :cond_df
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 1758
    :cond_f9
    if-ne p1, v10, :cond_1dc

    .line 1760
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    .line 1761
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->makeIndicesFlipper()V

    .line 1762
    if-eqz p3, :cond_11e

    .line 1764
    const-string v0, "selSymbol"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_116

    .line 1766
    const-string v0, "selSymbol"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1768
    :cond_116
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 1769
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    goto/16 :goto_6c

    .line 1772
    :cond_11e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->isAleadyExistStock(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 1774
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 1775
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_165

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_17e

    .line 1778
    :cond_165
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1779
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V

    .line 1782
    :cond_17e
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 1783
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    goto/16 :goto_6c

    .line 1789
    :cond_186
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1791
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_1d4

    .line 1794
    :cond_1bb
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1795
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V

    .line 1798
    :cond_1d4
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 1799
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    goto/16 :goto_6c

    .line 1805
    :cond_1dc
    if-ne p2, v5, :cond_282

    if-eqz p3, :cond_282

    .line 1807
    const-string v0, "type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1808
    if-eqz v0, :cond_6c

    .line 1812
    const-string v1, "stock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_255

    .line 1814
    const/16 v0, 0xa

    if-ne p1, v0, :cond_236

    .line 1816
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->activityresult:Z

    .line 1817
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1818
    const-string v1, "symbol"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1819
    const-string v2, "exchange"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1820
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1821
    const/high16 v4, 0x2400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1822
    const-string v4, "type"

    const-string v5, "stock"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    const-string v0, "symbol"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    const-string v0, "exchange"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1826
    const-string v0, "need_load"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1827
    invoke-virtual {p0, v3, v10}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1856
    :cond_236
    :goto_236
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mViewPosition:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v1

    if-lt v0, v1, :cond_6c

    .line 1858
    iput v7, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mViewPosition:I

    .line 1859
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V

    .line 1860
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 1861
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    .line 1862
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setGallerySelect(Ljava/lang/String;)V

    .line 1863
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo()Z

    goto/16 :goto_6c

    .line 1831
    :cond_255
    const-string v1, "searchAdd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 1833
    const-string v0, "selSymbol"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26d

    .line 1835
    const-string v0, "selSymbol"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1837
    :cond_26d
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->itemMaxDialog()V

    .line 1838
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V

    .line 1839
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 1840
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    .line 1841
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setGallerySelect(Ljava/lang/String;)V

    .line 1842
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo()Z

    goto :goto_236

    .line 1847
    :cond_282
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    .line 1848
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMainInfoTableUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_2c4

    .line 1851
    :cond_2ab
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1852
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V

    .line 1854
    :cond_2c4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTab:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    goto/16 :goto_236
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const v5, 0x7f0b00d2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 335
    const/4 v1, 0x0

    .line 337
    .local v1, gallerySel:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 338
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 339
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 340
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 341
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    .line 343
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 346
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 348
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_49

    .line 349
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v1, v2, v3

    .line 351
    :cond_49
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V

    .line 352
    const v2, 0x7f03002d

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setContentView(I)V

    .line 354
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 356
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    .line 358
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(I)V

    .line 360
    const v2, 0x7f0b00d8

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    .line 361
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 362
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 363
    const v2, 0x7f0b00da

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 364
    const v2, 0x7f0b00d7

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 365
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->regEventUpdateButton()V

    .line 366
    sget-object v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_c7

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 368
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 369
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 370
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    if-nez v2, :cond_e1

    .line 371
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 373
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b00e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 375
    :cond_c2
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 381
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_c7
    :goto_c7
    const v2, 0x7f0b00d3

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->makeIndicesFlipper()V

    .line 385
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    return-void

    .line 377
    .restart local v0       #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_e1
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V

    goto :goto_c7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundel"

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    if-eqz v1, :cond_c

    .line 145
    sput-boolean v3, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    .line 149
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 150
    const-string v1, "Tag"

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 154
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4a

    .line 156
    :cond_39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->forceClosing:Z

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sec.android.intent.action.HOME_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->finish()V

    .line 190
    :goto_49
    return-void

    .line 162
    :cond_4a
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setContentView(I)V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_58
    if-ge v0, v4, :cond_66

    .line 166
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 169
    :cond_66
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 170
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$ViewAdapter;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;

    .line 172
    const/4 v0, 0x0

    :goto_82
    if-ge v0, v4, :cond_90

    .line 174
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mCurrentTabList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 176
    :cond_90
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "symbol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Symbol"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    .line 180
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setGallerySelect(Ljava/lang/String;)V

    .line 182
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 185
    const v1, 0x7f0b00da

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 186
    const v1, 0x7f0b00d7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 187
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->regEventUpdateButton()V

    .line 189
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    goto/16 :goto_49
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 634
    packed-switch p1, :pswitch_data_10e

    .line 751
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 636
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 637
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 638
    const v0, 0x7f0b0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    .line 640
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 641
    const v0, 0x7f0b0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    .line 642
    const v0, 0x7f0b0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogEdit:Landroid/widget/EditText;

    .line 643
    sget v0, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogState:I

    .line 645
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 646
    sget v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 669
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$5;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$5;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$4;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 650
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 656
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0075

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 662
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0077

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 634
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 646
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 786
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 787
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 791
    :try_start_7
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_38

    .line 796
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNetworkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 800
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_36

    .line 805
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    .line 809
    :try_start_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_34

    .line 814
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNoUrl:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    .line 818
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mNoUrl:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_32

    .line 824
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->RemoveAllThread()V

    .line 826
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->forceClosing:Z

    if-nez v0, :cond_31

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->cleanResource()V

    .line 829
    :cond_31
    return-void

    .line 820
    :catch_32
    move-exception v0

    goto :goto_27

    .line 811
    :catch_34
    move-exception v0

    goto :goto_1e

    .line 802
    :catch_36
    move-exception v0

    goto :goto_15

    .line 793
    :catch_38
    move-exception v0

    goto :goto_c
.end method

.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f09003d

    const v4, 0x7f09003b

    const v3, 0x7f09003a

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 2024
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    if-eqz v0, :cond_10

    .line 2193
    :cond_f
    :goto_f
    return-void

    .line 2029
    :cond_10
    const/16 v0, 0x67

    if-ne p1, v0, :cond_21

    .line 2031
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$12;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    .line 2099
    :cond_21
    const/16 v0, 0x64

    if-ne p1, v0, :cond_78

    .line 2101
    if-nez p2, :cond_34

    .line 2103
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$13;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/Object;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    .line 2124
    :cond_34
    if-ne p2, v2, :cond_4c

    .line 2126
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V

    .line 2127
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2128
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    .line 2129
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 2133
    :cond_4c
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V

    .line 2134
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2135
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    .line 2136
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 2138
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 2142
    :cond_6c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    .line 2146
    :cond_78
    const/16 v0, 0x69

    if-ne p1, v0, :cond_f

    .line 2148
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z

    if-nez v0, :cond_f

    .line 2153
    if-nez p2, :cond_8d

    .line 2155
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$14;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 2175
    :cond_8d
    if-ne p2, v2, :cond_9f

    .line 2177
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V

    .line 2178
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2182
    :cond_9f
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V

    .line 2183
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 2185
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2189
    :cond_b9
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 562
    const-string v1, "Tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 567
    const/4 v1, 0x4

    if-eq p1, v1, :cond_26

    const/4 v1, 0x3

    if-ne p1, v1, :cond_61

    .line 569
    :cond_26
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    .line 570
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 573
    :cond_32
    sput-boolean v2, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    .line 576
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_41

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->finish()V

    move v1, v2

    .line 601
    :goto_40
    return v1

    .line 583
    :cond_41
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, symbol:Ljava/lang/String;
    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    .line 589
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->finish()V

    move v1, v2

    .line 590
    goto :goto_40

    .line 593
    .end local v0           #symbol:Ljava/lang/String;
    :cond_61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getKeyBuffer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 595
    const/16 v1, 0x3e7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->showDialog(I)V

    .line 596
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 601
    :cond_78
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_40
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "symbol"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 307
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setIntent(Landroid/content/Intent;)V

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 309
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 311
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, type:Ljava/lang/String;
    const-string v1, "searchAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 314
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 316
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 318
    :cond_38
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V

    .line 319
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 320
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    .line 321
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setGallerySelect(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->updateBasicStockInfo()Z

    .line 323
    const-string v1, "loadfinish"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_55

    .line 325
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V

    .line 329
    .end local v0           #type:Ljava/lang/String;
    :cond_55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x1e

    const/4 v1, 0x1

    .line 1671
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_cc

    .line 1702
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 1674
    :pswitch_e
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1675
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1676
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1677
    invoke-virtual {p0, v2, v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1678
    goto :goto_d

    .line 1680
    :pswitch_3c
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->showDeleteDialog()V

    move v0, v1

    .line 1681
    goto :goto_d

    .line 1683
    :pswitch_41
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1684
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1685
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1686
    const/16 v0, 0x28

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1687
    goto :goto_d

    .line 1689
    :pswitch_71
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1690
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1691
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1692
    invoke-virtual {p0, v2, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1693
    goto/16 :goto_d

    .line 1695
    :pswitch_a0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1696
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    .line 1697
    invoke-virtual {p0, v2, v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1698
    goto/16 :goto_d

    .line 1671
    :pswitch_data_cc
    .packed-switch 0x7f0b014f
        :pswitch_3c
        :pswitch_41
        :pswitch_71
        :pswitch_a0
        :pswitch_e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 496
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->activityresult:Z

    .line 499
    const-string v1, ""

    invoke-direct {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 501
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setCurrentSymbol(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->forceClosing:Z

    if-nez v1, :cond_5b

    .line 507
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v1

    if-lez v1, :cond_62

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.MANUAL_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, refresh_idle:Landroid/content/Intent;
    :goto_27
    const-string v1, "DETAIL_CURRENT_SHOWN_STOCK"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "WIDGET_ID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_58

    .line 516
    const-string v1, "WIDGET_ID"

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "WIDGET_ID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "WIDGET_ID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->selSymbol:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/WidgetIdManager;->setWidgetIndex(Landroid/content/Context;ILjava/lang/String;)V

    .line 521
    :cond_58
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    .end local v0           #refresh_idle:Landroid/content/Intent;
    :cond_5b
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->closeProgressDialog()V

    .line 525
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 526
    return-void

    .line 510
    :cond_62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #refresh_idle:Landroid/content/Intent;
    goto :goto_27
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 1644
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1646
    if-eqz p1, :cond_2b

    .line 1648
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1650
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1653
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1655
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_24

    .line 1657
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1664
    :goto_22
    const/4 v0, 0x1

    .line 1666
    :goto_23
    return v0

    .line 1661
    :cond_24
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_22

    .line 1666
    :cond_2b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const v3, 0x7f0b010b

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 535
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->activityresult:Z

    if-nez v1, :cond_65

    .line 537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 539
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshFlag:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 542
    :cond_27
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    if-eqz v1, :cond_30

    .line 543
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->forceSetLayout()V

    .line 544
    :cond_30
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->makeIndicesFlipper()V

    .line 545
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->refreshAllList()V

    .line 546
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->releaseGallery()V

    .line 547
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->initGallery()V

    .line 548
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 550
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->onClickToListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    .end local v0           #i:I
    :cond_65
    return-void
.end method

.method public refreshIndice()V
    .registers 5

    .prologue
    .line 402
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v1

    .line 403
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 404
    .local v2, symbols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 405
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 406
    :cond_22
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v3, v2, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 407
    return-void
.end method

.method saveQueryResultArray2Database(Ljava/lang/String;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v8, -0x5a

    const/4 v4, 0x0

    .line 1538
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 1539
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/util/ArrayList;

    .line 1540
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1e

    :cond_1c
    move v2, v4

    .line 1581
    :cond_1d
    :goto_1d
    return v2

    .line 1545
    :cond_1e
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v1, v5}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1546
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->saveStockMainInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Ljava/util/ArrayList;)I

    move-result v3

    .line 1547
    if-eq v3, v8, :cond_65

    .line 1549
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->deleteGraphData(Ljava/lang/String;)I

    move-result v3

    .line 1550
    if-eq v3, v8, :cond_65

    .line 1552
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    move-result-object v0

    .line 1553
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    const-string v3, "0d"

    invoke-virtual {v1, p1, v3, v0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v0

    .line 1555
    if-eq v0, v8, :cond_7b

    move v1, v2

    move v3, v0

    .line 1557
    :goto_47
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_65

    .line 1559
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 1560
    if-eqz v0, :cond_77

    .line 1562
    invoke-virtual {v0, v5}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1563
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v3, p1, v6, v0, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v3

    .line 1565
    if-eqz v3, :cond_77

    .line 1573
    :cond_65
    :goto_65
    if-ne v3, v8, :cond_1d

    .line 1575
    sget-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v0, :cond_72

    .line 1576
    const-string v0, ""

    const-string v1, "DB Full Error"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_72
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->setResult(I)V

    move v2, v4

    .line 1578
    goto :goto_1d

    .line 1557
    :cond_77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_47

    :cond_7b
    move v3, v0

    goto :goto_65
.end method

.method public setArrowVisibility()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2692
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 2693
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    .line 2696
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 2697
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2f

    .line 2698
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->leftArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2699
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->rightArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2705
    :cond_2e
    :goto_2e
    return-void

    .line 2701
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->leftArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2702
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->rightArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e
.end method

.method storeGraphData2QueryResultArray(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .parameter "period"
    .parameter "data"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1505
    if-eqz p2, :cond_1c

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 1507
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1509
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 1532
    :cond_1c
    :goto_1c
    return-void

    .line 1511
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1513
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v3

    goto :goto_1c

    .line 1515
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1517
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v4

    goto :goto_1c

    .line 1519
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1521
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_1c

    .line 1523
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1525
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v6

    goto :goto_1c

    .line 1527
    :cond_59
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1529
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v1, 0x6

    aput-object p2, v0, v1

    goto :goto_1c
.end method

.method storeStockData2QueryResultArray(Ljava/lang/Object;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 1499
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1501
    :cond_9
    return-void
.end method
