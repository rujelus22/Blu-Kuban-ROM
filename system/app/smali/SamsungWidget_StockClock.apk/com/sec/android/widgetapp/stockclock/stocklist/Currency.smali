.class public Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;
.super Landroid/app/Activity;
.source "Currency.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;
    }
.end annotation


# static fields
.field private static keyBuf:Ljava/lang/String;

.field public static mRefreshDialog:Landroid/app/ProgressDialog;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;

.field public static qurrencySearchFlag:Z


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private activityresult:Z

.field private detailquotesdelayedbg:Landroid/widget/Button;

.field private gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

.field private httpHandler:Landroid/os/Handler;

.field private leftArrowImg:Landroid/widget/ImageView;

.field private mCountryName:[Ljava/lang/String;

.field private mCurrencyDefault:Ljava/lang/String;

.field private mCurrencyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrencyListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mDisplayCount:I

.field private mErrorDialog:Landroid/app/Dialog;

.field private mExchangeFlipper:Landroid/widget/ViewFlipper;

.field private mFlipperDisplayedIndex:I

.field private mGraphDataIndex:I

.field private mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field private mIndicesFlipper:Landroid/widget/ViewFlipper;

.field mIsVisible:Z

.field private mLoadCountryName:[Ljava/lang/String;

.field private mNetworkDialog:Landroid/app/Dialog;

.field private mNetworkRetryCount:I

.field private mNoUrl:Landroid/app/Dialog;

.field private mPeriodArray:[Ljava/lang/String;

.field mQueryResultArray:[Ljava/lang/Object;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRequestCanceled:Z

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

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

.field private selFirstSymbol:Ljava/lang/String;

.field private selSecondSymbol:Ljava/lang/String;

.field private setGraphSymbol:Ljava/lang/String;

.field private stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->keyBuf:Ljava/lang/String;

    .line 81
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mappingKey:Ljava/lang/String;

    .line 90
    sput v4, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogState:I

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 137
    sput-boolean v4, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->qurrencySearchFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    .line 88
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    .line 89
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogEdit:Landroid/widget/EditText;

    .line 102
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    .line 103
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    .line 104
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;

    .line 108
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v4

    const-string v1, "5d"

    aput-object v1, v0, v5

    const-string v1, "1m"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "3m"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "6m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1y"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    .line 109
    const-string v0, "1d"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;

    .line 111
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNetworkDialog:Landroid/app/Dialog;

    .line 112
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mErrorDialog:Landroid/app/Dialog;

    .line 113
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNoUrl:Landroid/app/Dialog;

    .line 114
    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I

    .line 116
    new-array v0, v6, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    .line 120
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    .line 122
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIsVisible:Z

    .line 124
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyList:Ljava/util/ArrayList;

    .line 125
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    .line 126
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;

    .line 132
    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "USD"

    aput-object v1, v0, v4

    const-string v1, "EUR"

    aput-object v1, v0, v5

    const-string v1, "JPY"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "GBP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const-string v1, "AUD"

    aput-object v1, v0, v6

    const/4 v1, 0x7

    const-string v2, "KRW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCountryName:[Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCountryName:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    .line 136
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mFlipperDisplayedIndex:I

    .line 275
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onGalleryItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 325
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onGalleryTouchListener:Landroid/view/View$OnTouchListener;

    .line 450
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$3;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    .line 781
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$6;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1513
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->activityresult:Z

    .line 1701
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->httpHandler:Landroid/os/Handler;

    .line 1947
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$15;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$15;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onClickToListListener:Landroid/view/View$OnClickListener;

    .line 1958
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$16;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$16;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onScrollTocuchListener:Landroid/view/View$OnTouchListener;

    .line 1975
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->executeRefresh()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 76
    sget v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogState:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    sput p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogState:I

    return p0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setSLog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ViewFlipper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mFlipperDisplayedIndex:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->performGetGraphData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->httpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Lcom/sec/android/widgetapp/stockclock/data/StockItem;Landroid/view/View;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->makeFlipper(Lcom/sec/android/widgetapp/stockclock/data/StockItem;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mGraphDataIndex:I

    return p1
.end method

.method static synthetic access$3302(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->leftArrowImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->rightArrowImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mViewPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mViewPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    return-object v0
.end method

.method private closeProgressDialog()V
    .registers 2

    .prologue
    .line 1681
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 1685
    :try_start_4
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 1692
    :cond_9
    :goto_9
    return-void

    .line 1687
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private executeRefresh()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1372
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;

    .line 1375
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    .line 1376
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNetworkRetryCount:I

    .line 1377
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->performGetQuote()V

    .line 1379
    :cond_10
    return-void
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 644
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private initGallery()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 190
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .line 191
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAnimationDuration(I)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSpacing(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setFadingEdgeLength(I)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onGalleryItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onGalleryTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGallerySelect(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private isDefaultCountry(Ljava/lang/String;)Z
    .registers 5
    .parameter "symbol"

    .prologue
    .line 2409
    const/4 v1, 0x0

    .line 2410
    .local v1, returnValue:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCountryName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 2412
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCountryName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2414
    const/4 v1, 0x1

    .line 2410
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2417
    :cond_15
    return v1
.end method

.method private loadCurrencyList()V
    .registers 11

    .prologue
    const/16 v9, -0x5a

    .line 205
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-eqz v8, :cond_2e

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_2e

    .line 207
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 212
    :goto_13
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v8, :cond_2d

    .line 214
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockCurrencyList()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_36

    .line 216
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getLastError()I

    move-result v8

    if-ne v8, v9, :cond_2d

    .line 218
    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->finish()V

    .line 273
    :cond_2d
    return-void

    .line 209
    :cond_2e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    goto :goto_13

    .line 225
    :cond_36
    const/4 v3, 0x0

    .line 226
    .local v3, stockCurrencykList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockCurrencyList()Ljava/util/ArrayList;

    move-result-object v3

    .line 229
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyDefault:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->isDefaultCountry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 231
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    .line 237
    .local v4, symbol:[Ljava/lang/String;
    :goto_4e
    const/4 v5, 0x0

    .line 238
    .local v5, symbolIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_50
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_b7

    .line 240
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyDefault:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 238
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 235
    .end local v1           #i:I
    .end local v4           #symbol:[Ljava/lang/String;
    .end local v5           #symbolIndex:I
    :cond_64
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    .restart local v4       #symbol:[Ljava/lang/String;
    goto :goto_4e

    .line 246
    .restart local v1       #i:I
    .restart local v5       #symbolIndex:I
    :cond_6c
    add-int/lit8 v6, v5, 0x1

    .end local v5           #symbolIndex:I
    .local v6, symbolIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 247
    add-int/lit8 v5, v6, 0x1

    .end local v6           #symbolIndex:I
    .restart local v5       #symbolIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    goto :goto_61

    .line 251
    :cond_b7
    if-eqz v3, :cond_2d

    .line 255
    const/4 v1, 0x0

    :goto_ba
    array-length v8, v4

    div-int/lit8 v8, v8, 0x2

    if-ge v1, v8, :cond_2d

    .line 257
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 258
    .local v0, first:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 259
    .local v2, second:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    mul-int/lit8 v8, v1, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v0, v8}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 260
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v2, v8}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 261
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v8, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockCurrencyMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 262
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v8, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockCurrencyMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 263
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fd

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_fd

    .line 265
    const/4 v8, 0x2

    new-array v7, v8, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 266
    .local v7, two:[Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 267
    const/4 v8, 0x1

    aput-object v2, v7, v8

    .line 268
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v7           #two:[Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    :cond_fd
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba
.end method

.method private makeFlipper(Lcom/sec/android/widgetapp/stockclock/data/StockItem;Landroid/view/View;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const v11, 0x7f0b00ec

    const v10, 0x7f0b00ea

    const v9, 0x7f090050

    const/4 v8, 0x4

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setArrowVisibility()V

    .line 961
    if-eqz p1, :cond_245

    .line 963
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateDate(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    .line 971
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 973
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 974
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v3

    .line 976
    if-eqz v3, :cond_36a

    .line 980
    :try_start_4c
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 981
    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_246

    .line 983
    const-string v0, "-"

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 984
    const-string v0, "-"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 985
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 986
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 987
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020092

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020097

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 989
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_eb} :catch_2d3

    .line 1028
    :goto_eb
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37e

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37e

    .line 1030
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v1, 0x7f0b00e9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v3, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTextSize(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1038
    :goto_139
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38c

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_38c

    .line 1040
    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    :goto_161
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39a

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_39a

    .line 1049
    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    :goto_189
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a8

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a8

    .line 1058
    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    :goto_1b1
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b6

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3b6

    .line 1067
    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    :goto_1d9
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c4

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3c4

    .line 1076
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    :goto_201
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d2

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3d2

    .line 1085
    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    :goto_229
    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_245

    .line 1093
    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$7;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$7;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    :cond_245
    return-void

    .line 992
    :cond_246
    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2eb

    .line 994
    const v0, 0x7f0b00eb

    :try_start_24f
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x99

    const/16 v5, 0xff

    const/16 v6, 0x20

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 995
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x99

    const/16 v5, 0xff

    const/16 v6, 0x20

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 996
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f0200a7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 997
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f0200a1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 998
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_2d1} :catch_2d3

    goto/16 :goto_eb

    .line 1014
    :catch_2d3
    move-exception v0

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1017
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1018
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_eb

    .line 1001
    :cond_2eb
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_34e

    .line 1003
    const v0, 0x7f0b00ea

    :try_start_2f4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1004
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090052

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_eb

    .line 1010
    :cond_34e
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_368} :catch_2d3

    goto/16 :goto_eb

    .line 1024
    :cond_36a
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1025
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_eb

    .line 1035
    :cond_37e
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_139

    .line 1044
    :cond_38c
    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_161

    .line 1053
    :cond_39a
    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_189

    .line 1062
    :cond_3a8
    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1b1

    .line 1071
    :cond_3b6
    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1d9

    .line 1080
    :cond_3c4
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_201

    .line 1089
    :cond_3d2
    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_229
.end method

.method private performGetGraphData(Ljava/lang/String;)V
    .registers 6
    .parameter "period"

    .prologue
    .line 1502
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findNextGraphPeriodIndex(Ljava/lang/String;)I

    move-result v0

    .line 1503
    .local v0, nextIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1511
    :cond_7
    :goto_7
    return-void

    .line 1507
    :cond_8
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_7

    .line 1509
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    goto :goto_7
.end method

.method private performGetQuote()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1483
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    .line 1484
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V

    .line 1487
    :cond_a
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-eqz v3, :cond_71

    .line 1488
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 1489
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->showProgressDialog()V

    .line 1490
    const/4 v1, 0x1

    .line 1491
    .local v1, second:I
    iget v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I

    if-eqz v3, :cond_20

    .line 1492
    const/4 v1, 0x0

    .line 1494
    :cond_20
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1495
    .local v2, symbol:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    iget v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDisplayCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1496
    .local v0, defSymbol:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v3, v2, v0, p0, v7}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    .line 1498
    .end local v0           #defSymbol:Ljava/lang/String;
    .end local v1           #second:I
    .end local v2           #symbol:[Ljava/lang/String;
    :cond_71
    return-void
.end method

.method private refreshAllList()V
    .registers 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->refreshAllList()V

    .line 1585
    return-void
.end method

.method private regEventUpdateButton()V
    .registers 3

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$8;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$9;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1358
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$10;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1368
    return-void
.end method

.method private releaseGallery()V
    .registers 6

    .prologue
    const v4, 0x7f0b00e7

    const/4 v3, 0x0

    .line 347
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    .line 348
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 349
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->notifyDataSetChanged()V

    .line 350
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 351
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 354
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 355
    .local v1, vg:Landroid/view/ViewGroup;
    if-eqz v1, :cond_47

    .line 357
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 359
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 361
    :cond_44
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 352
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 365
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_4a
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V

    .line 366
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    .line 367
    return-void
.end method

.method private setFlipperHandle()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1328
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mFlipperDisplayedIndex:I

    if-eq v0, v2, :cond_18

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mFlipperDisplayedIndex:I

    if-le v0, v1, :cond_18

    .line 1329
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mFlipperDisplayedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1330
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mFlipperDisplayedIndex:I

    .line 1332
    :cond_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1333
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1334
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 1335
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1337
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 1339
    :cond_50
    return-void
.end method

.method private setGallerySelect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "firstSymbol"
    .parameter "secondSymbol"

    .prologue
    .line 1589
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    .line 1591
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V

    .line 1594
    :cond_7
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-eqz v2, :cond_45

    .line 1596
    const/4 v1, 0x0

    .line 1597
    .local v1, selection:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 1599
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1601
    move v1, v0

    .line 1605
    :cond_40
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(I)V

    .line 1607
    .end local v0           #i:I
    .end local v1           #selection:I
    :cond_45
    return-void

    .line 1597
    .restart local v0       #i:I
    .restart local v1       #selection:I
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 632
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->keyBuf:Ljava/lang/String;

    .line 640
    :goto_18
    return-void

    .line 638
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 4
    .parameter

    .prologue
    .line 649
    const-string v0, "prefs_slog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    const-string v1, "slog_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 654
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 655
    return-void
.end method

.method private showProgressDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1611
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setChangeTabStatus(Z)V

    .line 1612
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1614
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1617
    :cond_20
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1618
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1677
    return-void
.end method

.method private updateBasicStockInfo()Z
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateBasicStockInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1113
    const/4 v0, 0x0

    .line 1116
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
    const v10, 0x7f090050

    const/4 v0, 0x0

    const v9, 0x7f0b00ec

    const v8, 0x7f0b00ea

    const/4 v7, 0x4

    .line 1145
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1147
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockMainInfoObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object p1

    .line 1148
    if-nez p1, :cond_1e

    .line 1323
    :goto_1d
    return v0

    .line 1151
    :cond_1e
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v2

    .line 1152
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v1

    .line 1153
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_333

    .line 1155
    if-eqz v1, :cond_4d5

    .line 1159
    :try_start_30
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 1160
    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_336

    .line 1162
    const-string v0, "-"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1163
    const-string v0, "-"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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

    .line 1166
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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

    .line 1168
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020092

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1170
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020097

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1172
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

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
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_11d} :catch_4b4

    move-object v0, v1

    move-object v1, v2

    :goto_11f
    move-object v2, v1

    move-object v1, v0

    .line 1236
    :goto_121
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_171

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_171

    .line 1241
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->executeRefresh()V

    .line 1244
    :cond_171
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b00ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f5

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4f5

    .line 1252
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b00e9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTextSize(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1261
    :goto_218
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_509

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_509

    .line 1263
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getHigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    :goto_246
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51d

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_51d

    .line 1273
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getLow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    :goto_274
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_531

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_531

    .line 1283
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrevclose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    :goto_2a2
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_545

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_545

    .line 1293
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getOpen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    :goto_2d0
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_559

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_559

    .line 1303
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearhigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :goto_2fe
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56d

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_56d

    .line 1313
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getYearlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    :goto_32c
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateDate(Ljava/lang/String;)V

    .line 1323
    :cond_333
    const/4 v0, 0x1

    goto/16 :goto_1d

    .line 1182
    :cond_336
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_40d

    .line 1184
    :try_start_33c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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

    .line 1186
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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

    .line 1188
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0200a7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0200a1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1192
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

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

    .line 1202
    :cond_40d
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_48a

    .line 1204
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

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

    .line 1216
    :cond_48a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4b0
    .catch Ljava/lang/Exception; {:try_start_33c .. :try_end_4b0} :catch_4b4

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_11f

    .line 1222
    :catch_4b4
    move-exception v0

    .line 1224
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_121

    .line 1233
    :cond_4d5
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_121

    .line 1258
    :cond_4f5
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_218

    .line 1268
    :cond_509
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_246

    .line 1278
    :cond_51d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_274

    .line 1288
    :cond_531
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2a2

    .line 1298
    :cond_545
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2d0

    .line 1308
    :cond_559
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2fe

    .line 1318
    :cond_56d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_32c
.end method

.method private updateBasicStockInfo(Ljava/lang/String;)Z
    .registers 7
    .parameter "symbol"

    .prologue
    .line 1121
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockMainInfoObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object v2

    .line 1122
    .local v2, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getAllStockList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1123
    .local v0, StockDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockListItem;>;"
    if-eqz v2, :cond_59

    .line 1125
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4c

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 1127
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

    .line 1129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->getExchange()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 1125
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1134
    :cond_4c
    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1136
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateBasicStockInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Z

    move-result v3

    .line 1140
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
    .line 1705
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1706
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1707
    if-eqz p1, :cond_5b

    .line 1709
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1710
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

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

    .line 1713
    :cond_5b
    return-void
.end method

.method private updateStockGraph(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->notifyDataSetChanged()V

    .line 953
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 857
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 859
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 860
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 862
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 864
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 866
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 868
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 872
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .registers 13
    .parameter "updateDate"

    .prologue
    const-wide/16 v1, 0x0

    .line 1457
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    .line 1458
    .local v10, gd:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    const-wide/16 v5, 0x0

    const-string v9, ""

    move-wide v3, v1

    move-wide v7, v1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;-><init>(DDJDLjava/lang/String;)V

    .line 1460
    .local v0, graph:Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    invoke-virtual {v10, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->addGraphData(Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;)V

    .line 1461
    invoke-virtual {v10, p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1462
    return-object v10
.end method

.method public cleanResource()V
    .registers 4

    .prologue
    const v2, 0x7f0b00ef

    const/4 v1, 0x0

    .line 876
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 877
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 879
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 882
    :cond_14
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_1f

    .line 883
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 884
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    .line 886
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_2a

    .line 887
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    .line 890
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_35

    .line 891
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 892
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 895
    :cond_35
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    .line 896
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 897
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    .line 898
    sput-object v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 899
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNetworkDialog:Landroid/app/Dialog;

    .line 900
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mErrorDialog:Landroid/app/Dialog;

    .line 901
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNoUrl:Landroid/app/Dialog;

    .line 902
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    .line 903
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_50

    .line 904
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 905
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyList:Ljava/util/ArrayList;

    .line 907
    :cond_50
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    .line 909
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    if-eqz v0, :cond_7a

    .line 910
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    if-eqz v0, :cond_73

    .line 911
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->removeAllViews()V

    .line 913
    :cond_73
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 914
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .line 917
    :cond_7a
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    .line 918
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_87

    .line 919
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 920
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    .line 923
    :cond_87
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    .line 924
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->leftArrowImg:Landroid/widget/ImageView;

    .line 925
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->rightArrowImg:Landroid/widget/ImageView;

    .line 926
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 933
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    if-eqz v0, :cond_9a

    .line 934
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 935
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    .line 937
    :cond_9a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a5

    .line 938
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 939
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;

    .line 942
    :cond_a5
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->toast:Landroid/widget/Toast;

    .line 945
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogEdit:Landroid/widget/EditText;

    .line 947
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    .line 948
    return-void
.end method

.method clearQueryResultArray()V
    .registers 4

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 1385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1387
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1385
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1390
    .end local v0           #i:I
    :cond_12
    return-void
.end method

.method findNextGraphPeriodIndex(Ljava/lang/String;)I
    .registers 4
    .parameter "period"

    .prologue
    .line 1468
    if-nez p1, :cond_4

    .line 1469
    const/4 v1, 0x0

    .line 1478
    :goto_3
    return v1

    .line 1470
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 1472
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1474
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 1470
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1478
    :cond_1c
    const/4 v1, -0x1

    goto :goto_3
.end method

.method public makeIndicesFlipper()V
    .registers 19

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v14, :cond_115

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 480
    :goto_14
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 481
    .local v13, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v14}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v8

    .line 483
    .local v8, indicesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_29d

    .line 485
    const v14, 0x7f03002f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 486
    .local v7, indicesLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 487
    .local v1, IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    const v14, 0x7f0b00df

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 488
    .local v9, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    const v14, 0x7f0b00e0

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 490
    .local v12, price:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitCurrencyFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const v14, 0x7f0b00e2

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 492
    .local v2, change:Landroid/widget/TextView;
    const v14, 0x7f0b00e1

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 493
    .local v4, change_icon:Landroid/widget/ImageView;
    const v14, 0x7f0b00e4

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 494
    .local v10, percent:Landroid/widget/TextView;
    const v14, 0x7f0b00e3

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 495
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

    .line 499
    :try_start_9f
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 500
    .local v3, changeValue:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_126

    .line 502
    const v14, 0x7f0200a7

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    const v14, 0x7f0200a1

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 506
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

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

    .line 548
    .end local v3           #changeValue:Ljava/lang/Double;
    :goto_10a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14, v7}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 483
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_27

    .line 478
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

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewFlipper;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    goto/16 :goto_14

    .line 509
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

    .line 511
    const v14, 0x7f020092

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    const v14, 0x7f020097

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 515
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    const-string v15, "-"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    const-string v16, "-"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

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

    .line 528
    .end local v3           #changeValue:Ljava/lang/Double;
    :catch_19b
    move-exception v5

    .line 530
    .local v5, e:Ljava/lang/Exception;
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

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

    .line 520
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #changeValue:Ljava/lang/Double;
    :cond_1f1
    const/4 v14, 0x4

    :try_start_1f2
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 524
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

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

    .line 541
    .end local v3           #changeValue:Ljava/lang/Double;
    :cond_248
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

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

    .line 551
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

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v14, :cond_2bb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2bb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->isAutoStart()Z

    move-result v14

    if-nez v14, :cond_2bb

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setFlipperHandle()V

    .line 555
    :cond_2bb
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1568
    sget-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    if-eqz v0, :cond_1d

    .line 1569
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1570
    const-string v1, ""

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    const-string v1, "selSymbol"

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setResult(ILandroid/content/Intent;)V

    .line 1573
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->finish()V

    .line 1576
    :cond_1d
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1577
    const/16 v0, 0x63

    if-ne p1, v0, :cond_27

    .line 1578
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->qurrencySearchFlag:Z

    .line 1580
    :cond_27
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const v5, 0x7f0b00d2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 397
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 398
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 400
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 401
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 402
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 403
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    .line 405
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    .line 408
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 410
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v1, v2, v3

    .line 411
    .local v1, gallerySel:I
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshAllList()V

    .line 412
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setContentView(I)V

    .line 414
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->releaseGallery()V

    .line 416
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->initGallery()V

    .line 418
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(I)V

    .line 420
    const v2, 0x7f0b00d8

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    .line 421
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 422
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 423
    const v2, 0x7f0b00da

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    .line 424
    const v2, 0x7f0b00d7

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 425
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->regEventUpdateButton()V

    .line 426
    sget-object v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_c0

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 428
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 430
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 432
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    if-nez v2, :cond_da

    .line 433
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_bb

    .line 435
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b00e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 437
    :cond_bb
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 443
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_c0
    :goto_c0
    const v2, 0x7f0b00d3

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 444
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->makeIndicesFlipper()V

    .line 447
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    return-void

    .line 439
    .restart local v0       #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_da
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V

    goto :goto_c0
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
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 150
    const-string v1, "Tag"

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setContentView(I)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currencyDefault"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyDefault:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "loadCountryNames"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mLoadCountryName:[Ljava/lang/String;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_40
    if-ge v0, v4, :cond_4e

    .line 160
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 163
    :cond_4e
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 164
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 165
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;

    .line 167
    const/4 v0, 0x0

    :goto_75
    if-ge v0, v4, :cond_83

    .line 169
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTabList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 171
    :cond_83
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selFirstSymbol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selSecondSymbol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Symbol"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->initGallery()V

    .line 176
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGallerySelect(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 181
    const v1, 0x7f0b00da

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mUpdateBtn:Landroid/widget/ImageView;

    .line 182
    const v1, 0x7f0b00d7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 183
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->regEventUpdateButton()V

    .line 185
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 186
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 660
    packed-switch p1, :pswitch_data_10e

    .line 777
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 662
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 663
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 664
    const v0, 0x7f0b0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    .line 666
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 667
    const v0, 0x7f0b0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    .line 668
    const v0, 0x7f0b0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogEdit:Landroid/widget/EditText;

    .line 669
    sget v0, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogState:I

    .line 671
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 672
    sget v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 695
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$5;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$5;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$4;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 676
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 682
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0075

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 688
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0077

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 660
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 672
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
    .line 812
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 813
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 817
    :try_start_7
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_34

    .line 822
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNetworkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 826
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_32

    .line 831
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    .line 835
    :try_start_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_30

    .line 840
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNoUrl:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    .line 844
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNoUrl:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_2e

    .line 850
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->RemoveAllThread()V

    .line 852
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->cleanResource()V

    .line 853
    return-void

    .line 846
    :catch_2e
    move-exception v0

    goto :goto_27

    .line 837
    :catch_30
    move-exception v0

    goto :goto_1e

    .line 828
    :catch_32
    move-exception v0

    goto :goto_15

    .line 819
    :catch_34
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
    const v3, 0x7f09003b

    const v2, 0x7f09003a

    const/4 v1, 0x1

    .line 1719
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    if-eqz v0, :cond_c

    .line 1945
    :cond_b
    :goto_b
    return-void

    .line 1722
    :cond_c
    const/16 v0, 0x68

    if-ne p1, v0, :cond_62

    .line 1724
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    if-nez v0, :cond_b

    .line 1729
    if-nez p2, :cond_23

    .line 1731
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$12;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/Object;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1769
    :cond_23
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V

    .line 1770
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1772
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1785
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 1789
    :cond_43
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mNetworkRetryCount:I

    if-lez v0, :cond_56

    .line 1801
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 1815
    :cond_56
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 1820
    :cond_62
    const/16 v0, 0x67

    if-ne p1, v0, :cond_73

    .line 1822
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1897
    :cond_73
    const/16 v0, 0x69

    if-ne p1, v0, :cond_b

    .line 1899
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRequestCanceled:Z

    if-nez v0, :cond_b

    .line 1904
    if-nez p2, :cond_88

    .line 1906
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$14;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 1927
    :cond_88
    const/4 v0, 0x4

    if-ne p2, v0, :cond_9e

    .line 1929
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V

    .line 1930
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1934
    :cond_9e
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V

    .line 1935
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b8

    .line 1937
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1941
    :cond_b8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 617
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 621
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 623
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->showDialog(I)V

    .line 624
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 627
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 372
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 374
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, type:Ljava/lang/String;
    const-string v1, "searchAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 377
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 379
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    .line 381
    :cond_29
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshAllList()V

    .line 382
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->releaseGallery()V

    .line 383
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->initGallery()V

    .line 384
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selSecondSymbol:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGallerySelect(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateBasicStockInfo()Z

    .line 386
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->updateStockGraph(Landroid/view/View;)V

    .line 387
    const-string v1, "loadfinish"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_51

    .line 389
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->executeRefresh()V

    .line 393
    .end local v0           #type:Ljava/lang/String;
    :cond_51
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1543
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 1564
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 1546
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1547
    const-string v2, "gototap"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1548
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setResult(ILandroid/content/Intent;)V

    .line 1549
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->finish()V

    goto :goto_9

    .line 1552
    :pswitch_1b
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1554
    sput-boolean v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->qurrencySearchFlag:Z

    .line 1555
    const/16 v2, 0x63

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 1559
    :pswitch_2e
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1561
    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 1543
    nop

    :pswitch_data_40
    .packed-switch 0x7f0b014c
        :pswitch_a
        :pswitch_1b
        :pswitch_2e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 559
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->activityresult:Z

    .line 562
    const-string v0, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setCurrentSymbol(Landroid/content/Context;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 570
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    if-lez v0, :cond_4f

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.MANUAL_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    :goto_23
    const-string v1, "DETAIL_CURRENT_SHOWN_STOCK"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->selFirstSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "WIDGET_ID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_45

    .line 579
    const-string v1, "WIDGET_ID"

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "WIDGET_ID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    :cond_45
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->sendBroadcast(Landroid/content/Intent;)V

    .line 584
    :cond_48
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->closeProgressDialog()V

    .line 585
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 586
    return-void

    .line 573
    :cond_4f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 1524
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1526
    if-eqz p1, :cond_19

    .line 1528
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1529
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1532
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1534
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1536
    const/4 v0, 0x1

    .line 1538
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 594
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 595
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->activityresult:Z

    if-nez v1, :cond_38

    .line 597
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 599
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshFlag:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 602
    :cond_24
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->forceSetLayout()V

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->makeIndicesFlipper()V

    .line 605
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->refreshAllList()V

    .line 606
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->releaseGallery()V

    .line 607
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->initGallery()V

    .line 609
    .end local v0           #i:I
    :cond_38
    return-void
.end method

.method public refreshIndice()V
    .registers 5

    .prologue
    .line 464
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v1

    .line 465
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 466
    .local v2, symbols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 467
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 468
    :cond_22
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v3, v2, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 469
    return-void
.end method

.method saveQueryResultArray2Database(Ljava/lang/String;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v6, -0x5a

    .line 1423
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    .line 1425
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    move-result-object v0

    .line 1426
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    const-string v3, "0d"

    invoke-virtual {v1, p1, v3, v0, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v0

    .line 1427
    if-eq v0, v6, :cond_4d

    move v1, v2

    move v3, v0

    .line 1429
    :goto_17
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_33

    .line 1431
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 1432
    if-eqz v0, :cond_47

    .line 1434
    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1435
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, p1, v5, v0, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateCurrencyGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v3

    .line 1437
    if-eqz v3, :cond_47

    .line 1443
    :cond_33
    :goto_33
    if-ne v3, v6, :cond_4b

    .line 1445
    sget-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v0, :cond_40

    .line 1446
    const-string v0, ""

    const-string v1, "DB Full Error"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_40
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setResult(I)V

    .line 1448
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->finish()V

    .line 1452
    :goto_46
    return v2

    .line 1429
    :cond_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 1452
    :cond_4b
    const/4 v2, 0x1

    goto :goto_46

    :cond_4d
    move v3, v0

    goto :goto_33
.end method

.method public setArrowVisibility()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2392
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 2393
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->loadCurrencyList()V

    .line 2396
    :cond_a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 2397
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2a

    .line 2398
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->leftArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2399
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->rightArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2405
    :cond_29
    :goto_29
    return-void

    .line 2401
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->leftArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2402
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->rightArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_29
.end method

.method storeGraphData2QueryResultArray(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .parameter "period"
    .parameter "data"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1394
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1396
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 1418
    :cond_13
    :goto_13
    return-void

    .line 1398
    :cond_14
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1400
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v2

    goto :goto_13

    .line 1402
    :cond_23
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1404
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v3

    goto :goto_13

    .line 1406
    :cond_32
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1408
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v4

    goto :goto_13

    .line 1410
    :cond_41
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1412
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_13

    .line 1414
    :cond_50
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mPeriodArray:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1416
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v1, 0x5

    aput-object p2, v0, v1

    goto :goto_13
.end method
