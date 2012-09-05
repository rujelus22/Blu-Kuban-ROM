.class public Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;
.super Landroid/app/Activity;
.source "StockList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private bCheck:Z

.field private currentTapNum:I

.field private detailquotesdelayedbg:Landroid/widget/Button;

.field httpHandler:Landroid/os/Handler;

.field public indicesNames:[Ljava/lang/String;

.field indicesSearchListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public final indicesSymbols:[Ljava/lang/String;

.field public isIndicesExceeded:Z

.field public isRefreshingIndices:Z

.field private listNum:I

.field private mAddCurrencyText:Landroid/widget/TextView;

.field private mAddMajorIndicsText:Landroid/widget/TextView;

.field private mAddMarketText:Landroid/widget/TextView;

.field private mAdd_layout:Landroid/widget/RelativeLayout;

.field private mAdd_layout1:Landroid/widget/RelativeLayout;

.field private mBtnCreate:Landroid/widget/ImageView;

.field private mBtnCreate2:Landroid/widget/ImageView;

.field private mCountryName:[Ljava/lang/String;

.field private mCurrencyDefault:Ljava/lang/String;

.field private mCurrencyRefreshFlag:Z

.field private mCurrentTab:I

.field private mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mErrorDialog:Landroid/app/Dialog;

.field private mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field private mIndicesDialog:Landroid/app/Dialog;

.field private mIndicesNum:Landroid/widget/TextView;

.field private mIndicesRefreshFalg:Z

.field private mIntent:Landroid/content/Intent;

.field private mItemMaxDialog:Landroid/app/Dialog;

.field private mLoadCountryName:[Ljava/lang/String;

.field private mMarketNum:Landroid/widget/TextView;

.field private mMenu:Landroid/view/Menu;

.field private mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

.field private mMyCurrencyRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

.field private mMyMajorRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

.field private mMyStockList:Landroid/widget/ListView;

.field private mMyStockRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mName:[Ljava/lang/String;

.field private mNetworkDialog:Landroid/app/Dialog;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRefreshDialog:Landroid/app/Dialog;

.field private mRequestCanceled:Z

.field private mRotate:Z

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

.field private mTopLogo:Landroid/widget/ImageView;

.field private mUpdateBtn:Landroid/widget/ImageView;

.field private mUpdateTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->keyBuf:Ljava/lang/String;

    .line 93
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mappingKey:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    .line 100
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    .line 101
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogEdit:Landroid/widget/EditText;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    .line 118
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->isRefreshingIndices:Z

    .line 119
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->isIndicesExceeded:Z

    .line 122
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^DJI,^IXIC,^GSPC,^FTSE,^GDAXI,^FCHI,^N225,^HSI,^STI"

    aput-object v1, v0, v3

    const-string v1, "^MERV,^BVSP,^GSPTSE,^MXX,^GSPC"

    aput-object v1, v0, v5

    const-string v1, "^AORD,^SSEC,^HSI,^BSESN,^JKSE,^KLSE,^N225,^NZ50,^STI,^KS11,^KQ11,^TWII"

    aput-object v1, v0, v6

    const-string v1, "^ATX,^BFX,^FCHI,^GDAXI,^AEX,^OSEAX,^MIBTEL,^IXX,^SMSI,^OMXSPI,^SSMI,^FTSE"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "CMA.CA,^TA100"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^KS11,^KQ11,^DJI,^IXIC"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesSymbols:[Ljava/lang/String;

    .line 126
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    .line 127
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mItemMaxDialog:Landroid/app/Dialog;

    .line 128
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mNetworkDialog:Landroid/app/Dialog;

    .line 129
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesDialog:Landroid/app/Dialog;

    .line 130
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mErrorDialog:Landroid/app/Dialog;

    .line 131
    iput-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 134
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 135
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRotate:Z

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesRefreshFalg:Z

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyRefreshFlag:Z

    .line 138
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->currentTapNum:I

    .line 143
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "USD"

    aput-object v1, v0, v3

    const-string v1, "EUR"

    aput-object v1, v0, v5

    const-string v1, "JPY"

    aput-object v1, v0, v6

    const-string v1, "GBP"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AUD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KRW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCountryName:[Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCountryName:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    .line 148
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->bCheck:Z

    .line 663
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$6;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1469
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesSearchListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2010
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->httpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 88
    sget v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    return p1
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    sput p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->bCheck:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->bCheck:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->refreshAllList()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadCurrencyList()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;)Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setSLog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->stopRefreshAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    return-object v0
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 526
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private hasCurrencyDB()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1134
    const/4 v4, 0x1

    .line 1136
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->isDefaultCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1138
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    :goto_13
    move v1, v2

    move v3, v2

    .line 1145
    :goto_15
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_7c

    .line 1147
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1145
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1142
    :cond_29
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_13

    .line 1153
    :cond_31
    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 1154
    add-int/lit8 v3, v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_26

    :cond_7c
    move v1, v2

    move v3, v4

    .line 1157
    :goto_7e
    array-length v4, v0

    if-ge v1, v4, :cond_8f

    .line 1159
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasCurrencyMainInfo(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8c

    move v3, v2

    .line 1157
    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 1165
    :cond_8f
    return v3
.end method

.method private hideRefreshDialog()V
    .registers 2

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 1945
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 1952
    :cond_9
    :goto_9
    return-void

    .line 1947
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private isDefaultCountry(Ljava/lang/String;)Z
    .registers 5
    .parameter "symbol"

    .prologue
    .line 1999
    const/4 v1, 0x0

    .line 2000
    .local v1, returnValue:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCountryName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 2002
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCountryName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2004
    const/4 v1, 0x1

    .line 2000
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2007
    :cond_15
    return v1
.end method

.method private loadCurrencyList()V
    .registers 9

    .prologue
    const/16 v1, -0x5a

    const/4 v2, 0x0

    .line 1171
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 1173
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1176
    :cond_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_14c

    .line 1178
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockCurrencyList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1180
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getLastError()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 1182
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 1183
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    .line 1253
    :cond_2a
    :goto_2a
    return-void

    .line 1190
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockCurrencyList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1193
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->isDefaultCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1195
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    :goto_42
    move v1, v2

    move v3, v2

    .line 1202
    :goto_44
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_ab

    .line 1204
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1202
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1199
    :cond_58
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_42

    .line 1210
    :cond_60
    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 1211
    add-int/lit8 v3, v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_55

    .line 1215
    :cond_ab
    if-eqz v4, :cond_2a

    .line 1218
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1219
    new-instance v4, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    move v1, v2

    .line 1221
    :goto_b8
    array-length v5, v0

    div-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_14c

    .line 1223
    mul-int/lit8 v5, v1, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1224
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1225
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v5, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockCurrencyMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 1226
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v5, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockCurrencyMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 1227
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_148

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_148

    .line 1229
    new-instance v5, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;

    invoke-direct {v5}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;-><init>()V

    .line 1230
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setFirstCounName(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setFirstPrice(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdown()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setFirstUpdown(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setSecondCounName(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setSecondPrice(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdown()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setSecondUpdown(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setFirstSymbol(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setSecondSymbol(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setFirstChange(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setSecondChange(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setFirstChangePercent(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getChangePercent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setSecondChangePercent(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->setUpdateTime(Ljava/lang/String;)V

    .line 1243
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_148
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b8

    .line 1248
    :cond_14c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_163

    .line 1250
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getUpdateTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    .line 1252
    :cond_163
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2a
.end method

.method private loadIndicesList()V
    .registers 4

    .prologue
    const/16 v1, -0x5a

    .line 1332
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 1333
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1335
    :cond_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    .line 1337
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    if-nez v0, :cond_2e

    .line 1339
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getLastError()I

    move-result v0

    if-ne v0, v1, :cond_2d

    .line 1341
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 1342
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    .line 1363
    :cond_2d
    :goto_2d
    return-void

    .line 1348
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1352
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    .line 1353
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    if-eqz v0, :cond_4d

    .line 1355
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1359
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 1361
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private loadStockList()V
    .registers 11

    .prologue
    const/16 v8, -0x5a

    .line 1257
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_f

    .line 1259
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1262
    :cond_f
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockList()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_26

    .line 1264
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getLastError()I

    move-result v7

    if-ne v7, v8, :cond_25

    .line 1266
    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 1267
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    .line 1328
    :cond_25
    :goto_25
    return-void

    .line 1274
    :cond_26
    const/4 v5, 0x0

    .line 1275
    .local v5, stockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1276
    if-eqz v5, :cond_25

    .line 1279
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_b3

    .line 1281
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 1283
    .local v4, listItem:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v7, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockMainInfoObject(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object v3

    .line 1284
    .local v3, infoItem:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockDetailObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, detailExchange:Ljava/lang/String;
    if-eqz v3, :cond_78

    .line 1288
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_5b

    .line 1293
    :cond_5b
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 1295
    if-nez v0, :cond_6e

    .line 1279
    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1298
    :cond_6e
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateListExchange(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1303
    :cond_78
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v6

    .line 1304
    .local v6, timestamp:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->buildEmptyStockItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    move-result-object v1

    .line 1305
    .local v1, emptyItem:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    invoke-virtual {v1, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1306
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    if-nez v2, :cond_99

    .line 1309
    invoke-direct {p0, v6}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    .line 1311
    :cond_99
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 1313
    if-eqz v0, :cond_6b

    .line 1316
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateListExchange(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1322
    .end local v0           #detailExchange:Ljava/lang/String;
    .end local v1           #emptyItem:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .end local v3           #infoItem:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .end local v4           #listItem:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .end local v6           #timestamp:Ljava/lang/String;
    :cond_b3
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_cb

    .line 1323
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    .line 1326
    :cond_cb
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_25
.end method

.method private makePeriodTab(Ljava/lang/String;II)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    .registers 6
    .parameter "name"
    .parameter "imageId"
    .parameter "layoutid"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v0

    .line 245
    .local v0, spec:Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;
    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 246
    invoke-virtual {v0, p3}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(I)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 247
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 248
    return-object v0
.end method

.method private makeTab()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f0200b9

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setup()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    aget-object v0, v0, v2

    const v1, 0x7f0b012d

    invoke-direct {p0, v0, v4, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->makePeriodTab(Ljava/lang/String;II)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 208
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    aget-object v0, v0, v5

    const v1, 0x7f0b0132

    invoke-direct {p0, v0, v4, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->makePeriodTab(Ljava/lang/String;II)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 209
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    aget-object v0, v0, v6

    const v1, 0x7f0b0137

    invoke-direct {p0, v0, v4, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->makePeriodTab(Ljava/lang/String;II)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    .line 210
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 232
    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xfa000

    if-eq v0, v1, :cond_4c

    invoke-static {p0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    const v1, 0xe1000

    if-ne v0, v1, :cond_73

    .line 233
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 238
    :cond_73
    return-void
.end method

.method private performGetData()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1968
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1969
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v3

    packed-switch v3, :pswitch_data_5a

    .line 1995
    :goto_10
    return-void

    .line 1972
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->showRefreshDialog()V

    .line 1973
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllStockSymbol()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    goto :goto_10

    .line 1978
    :pswitch_20
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->showRefreshDialog()V

    .line 1980
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1981
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1982
    .local v2, symbols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 1983
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1982
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1984
    :cond_45
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v3, v2, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 1985
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->isRefreshingIndices:Z

    goto :goto_10

    .line 1990
    .end local v0           #i:I
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    .end local v2           #symbols:[Ljava/lang/String;
    :pswitch_4d
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->showRefreshDialog()V

    .line 1991
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p0, v6}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V

    goto :goto_10

    .line 1969
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_20
        :pswitch_4d
    .end packed-switch
.end method

.method private refreshAllList()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1956
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1959
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 1960
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1961
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->performGetData()V

    .line 1963
    :cond_10
    return-void
.end method

.method private regEventFinanceLogo()V
    .registers 3

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$15;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$15;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1862
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTopLogo:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$16;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$16;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1870
    return-void
.end method

.method private regEventMyStockList()V
    .registers 3

    .prologue
    .line 1379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->bCheck:Z

    .line 1380
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$10;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1440
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$11;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$11;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1467
    return-void
.end method

.method private regEventUpdateButton()V
    .registers 3

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$17;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$17;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1884
    return-void
.end method

.method private selectMyStockTab()V
    .registers 1

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    .line 1130
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 514
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->keyBuf:Ljava/lang/String;

    .line 522
    :goto_18
    return-void

    .line 520
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 531
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 532
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 537
    return-void
.end method

.method private setStateNum()V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMarketNum:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 463
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMarketNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_26
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesNum:Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_4c

    .line 466
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_4c
    return-void
.end method

.method private showRefreshDialog()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1905
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2c

    .line 1907
    const/4 v1, 0x0

    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$18;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$18;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    .line 1920
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$19;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$19;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1934
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startRefreshAnimation()V

    .line 1935
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1937
    :cond_2c
    return-void
.end method

.method private startRefreshAnimation()V
    .registers 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 1890
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1893
    :cond_f
    return-void
.end method

.method private stopRefreshAnimation()V
    .registers 2

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 1899
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1901
    :cond_f
    return-void
.end method

.method private updateDate(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    .line 1367
    if-eqz p1, :cond_5b

    .line 1369
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1370
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1371
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1372
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

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

    .line 1375
    :cond_5b
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 912
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 914
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 915
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 917
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 919
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 921
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 923
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 927
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 931
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    .line 932
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMarketText:Landroid/widget/TextView;

    .line 933
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMajorIndicsText:Landroid/widget/TextView;

    .line 934
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    .line 935
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    .line 936
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    .line 937
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    .line 939
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    if-eqz v0, :cond_1a

    .line 940
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 941
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 944
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 945
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    .line 949
    :cond_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    .line 950
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 951
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    .line 953
    :cond_30
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    .line 954
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 955
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    .line 957
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    .line 958
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 959
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    .line 961
    :cond_46
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    if-eqz v0, :cond_51

    .line 962
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;->close()V

    .line 963
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    .line 965
    :cond_51
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    if-eqz v0, :cond_57

    .line 966
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    .line 969
    :cond_57
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_62

    .line 970
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 971
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 974
    :cond_62
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIntent:Landroid/content/Intent;

    .line 975
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMenu:Landroid/view/Menu;

    .line 976
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    .line 977
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mItemMaxDialog:Landroid/app/Dialog;

    .line 978
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mNetworkDialog:Landroid/app/Dialog;

    .line 979
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mErrorDialog:Landroid/app/Dialog;

    .line 980
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 982
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesDialog:Landroid/app/Dialog;

    .line 984
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->detailquotesdelayedbg:Landroid/widget/Button;

    if-eqz v0, :cond_82

    .line 985
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 987
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 992
    :cond_82
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8d

    .line 993
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 994
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    .line 997
    :cond_8d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_98

    .line 998
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 999
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    .line 1003
    :cond_98
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    .line 1004
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogEdit:Landroid/widget/EditText;

    .line 1006
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMarketNum:Landroid/widget/TextView;

    .line 1007
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesNum:Landroid/widget/TextView;

    .line 1008
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTopLogo:Landroid/widget/ImageView;

    .line 1010
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    if-eqz v0, :cond_ad

    .line 1011
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;->clear()V

    .line 1012
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    .line 1015
    :cond_ad
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 1017
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    .line 1018
    return-void
.end method

.method public init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    .line 376
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setContentView(I)V

    .line 377
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwTabHost;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    .line 382
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 383
    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMarketText:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMajorIndicsText:Landroid/widget/TextView;

    .line 385
    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    .line 386
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f0b0130

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMarketNum:Landroid/widget/TextView;

    .line 388
    const v0, 0x7f0b0136

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesNum:Landroid/widget/TextView;

    .line 389
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 390
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 391
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 393
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 395
    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTopLogo:Landroid/widget/ImageView;

    .line 396
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    .line 397
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    .line 398
    const v0, 0x7f0b012f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    .line 399
    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIntent:Landroid/content/Intent;

    .line 401
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setStateNum()V

    .line 402
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    .line 403
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMarketText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMajorIndicsText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 405
    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 406
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->selectMyStockTab()V

    .line 408
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V

    .line 409
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventFinanceLogo()V

    .line 410
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventUpdateButton()V

    .line 411
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRotate:Z

    if-nez v0, :cond_11e

    .line 416
    :cond_11e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    if-eqz v0, :cond_136

    .line 445
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$3;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$3;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 458
    :cond_136
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x5a

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v6, 0x7f090050

    .line 1672
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1674
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 1676
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$14;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$14;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1690
    :cond_19
    sget-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    if-eqz v0, :cond_35

    .line 1692
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1693
    const-string v1, ""

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string v1, "selSymbol"

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(ILandroid/content/Intent;)V

    .line 1696
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    .line 1699
    :cond_35
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    if-nez v0, :cond_46

    .line 1701
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(ILandroid/content/Intent;)V

    .line 1702
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    .line 1849
    :cond_45
    :goto_45
    return-void

    .line 1706
    :cond_46
    const/16 v0, 0x19

    if-ne p1, v0, :cond_4e

    .line 1708
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    goto :goto_45

    .line 1711
    :cond_4e
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_55

    .line 1713
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    .line 1715
    :cond_55
    const/16 v0, 0x14

    if-ne p1, v0, :cond_5d

    .line 1717
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadIndicesList()V

    goto :goto_45

    .line 1720
    :cond_5d
    const/16 v0, 0x28

    if-ne p1, v0, :cond_7d

    .line 1722
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1725
    :try_start_66
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->loadArrayByFile(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_74} :catch_16b

    .line 1733
    :goto_74
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hasCurrencyDB()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 1735
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadCurrencyList()V

    .line 1742
    :cond_7d
    :goto_7d
    if-eqz p3, :cond_23a

    if-ne p2, v3, :cond_23a

    .line 1744
    const-string v0, "gototap"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_9b

    .line 1746
    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    .line 1747
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 1748
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->selectTab(Ljava/lang/String;)V

    .line 1750
    :cond_9b
    const-string v0, "type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1751
    if-eqz v0, :cond_45

    .line 1755
    const-string v1, "stock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 1757
    const/16 v0, 0x32

    if-ne p1, v0, :cond_182

    .line 1759
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1760
    const-string v1, "symbol"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1761
    const-string v2, "exchange"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1763
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 1764
    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setVolume(Ljava/lang/String;)V

    .line 1774
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 1778
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    .line 1779
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1781
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->sendBroadcast(Landroid/content/Intent;)V

    .line 1784
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    .line 1786
    if-nez v0, :cond_161

    .line 1788
    iput-boolean v8, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 1789
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->refreshAllList()V

    .line 1791
    :cond_161
    if-ne v0, v7, :cond_45

    .line 1793
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 1794
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_45

    .line 1727
    :catch_16b
    move-exception v0

    .line 1729
    const-string v1, ""

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 1731
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_74

    .line 1739
    :cond_17d
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->performGetData()V

    goto/16 :goto_7d

    .line 1797
    :cond_182
    const/16 v0, 0xb

    if-ne p1, v0, :cond_19d

    .line 1799
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    if-nez v0, :cond_193

    .line 1801
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_45

    .line 1805
    :cond_193
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    .line 1806
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto/16 :goto_45

    .line 1808
    :cond_19d
    const/16 v0, 0x12

    if-ne p1, v0, :cond_45

    .line 1810
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    goto/16 :goto_45

    .line 1813
    :cond_1a6
    const-string v1, "currency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_212

    .line 1815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    .line 1816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    .line 1817
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030025

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    .line 1818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 1819
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 1820
    const-string v0, "selSymbol"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    .line 1821
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1822
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->saveSelectCountry(Landroid/content/Context;Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1825
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 1826
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hasCurrencyDB()Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 1828
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadCurrencyList()V

    .line 1834
    :goto_209
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V

    goto/16 :goto_45

    .line 1832
    :cond_20e
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->performGetData()V

    goto :goto_209

    .line 1836
    :cond_212
    const-string v1, "searchAdd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1838
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIntent:Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "searchAdd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1839
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIntent:Landroid/content/Intent;

    const-string v1, "symbol"

    const-string v2, "symbol"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1840
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(ILandroid/content/Intent;)V

    .line 1841
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_45

    .line 1844
    :cond_23a
    if-ne p2, v7, :cond_45

    .line 1846
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 1847
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_45
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x32

    const/16 v2, 0x1e

    .line 2201
    .line 2202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_4e

    .line 2242
    :goto_b
    return-void

    .line 2205
    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2206
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2207
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b

    .line 2210
    :sswitch_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 2211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2212
    const v1, 0x7f09001d

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$23;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesDialog:Landroid/app/Dialog;

    goto :goto_b

    .line 2237
    :sswitch_3f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/stockclock/menu/MenuCurrencyAdd;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2238
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2239
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b

    .line 2202
    nop

    :sswitch_data_4e
    .sparse-switch
        0x7f0b008d -> :sswitch_c
        0x7f0b0133 -> :sswitch_1a
        0x7f0b013a -> :sswitch_3f
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    const v8, 0x7f020012

    const v7, 0xfa000

    const v6, 0xe1000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1023
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1025
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRotate:Z

    .line 1026
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->listNum:I

    .line 1028
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    .line 1030
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setContentView(I)V

    .line 1031
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwTabHost;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 1032
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    .line 1033
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 1034
    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMarketText:Landroid/widget/TextView;

    .line 1035
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMajorIndicsText:Landroid/widget/TextView;

    .line 1036
    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    .line 1037
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    .line 1038
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1040
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1041
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1042
    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTopLogo:Landroid/widget/ImageView;

    .line 1043
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mUpdateBtn:Landroid/widget/ImageView;

    .line 1044
    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 1045
    const v0, 0x7f0b012f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    .line 1046
    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    .line 1047
    const v0, 0x7f0b0130

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMarketNum:Landroid/widget/TextView;

    .line 1048
    const v0, 0x7f0b0136

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesNum:Landroid/widget/TextView;

    .line 1049
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    .line 1050
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    .line 1051
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMarketText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1052
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMajorIndicsText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1053
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setStateNum()V

    .line 1054
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->selectMyStockTab()V

    .line 1056
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V

    .line 1057
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventFinanceLogo()V

    .line 1058
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventUpdateButton()V

    .line 1059
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->makeTab()V

    .line 1061
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    if-eqz v0, :cond_118

    .line 1063
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$9;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1077
    :cond_118
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 1078
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->selectTab(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->listNum:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1081
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 1083
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 1084
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startRefreshAnimation()V

    .line 1085
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1088
    :cond_145
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_183

    .line 1090
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_17a

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v7, :cond_16b

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_171

    .line 1094
    :cond_16b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1125
    :cond_170
    :goto_170
    return-void

    .line 1098
    :cond_171
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_170

    .line 1103
    :cond_17a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_170

    .line 1106
    :cond_183
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v4, :cond_170

    .line 1108
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1b8

    .line 1110
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v7, :cond_1a9

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_1af

    .line 1112
    :cond_1a9
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_170

    .line 1116
    :cond_1af
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_170

    .line 1121
    :cond_1b8
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_170
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "bundle"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, -0x5a

    const/4 v4, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    if-eqz v1, :cond_f

    .line 155
    sput-boolean v4, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    .line 159
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 160
    const-string v1, "Tag"

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_1d
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getSelectedCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2b} :catch_b9

    .line 173
    :goto_2b
    new-array v1, v8, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 175
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 176
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 179
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 181
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 182
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 183
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->init()V

    .line 189
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->makeTab()V

    .line 193
    :try_start_a3
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->loadArrayByFile(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b1} :catch_cb

    .line 201
    :goto_b1
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->selectTab(Ljava/lang/String;)V

    .line 202
    return-void

    .line 166
    :catch_b9
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/IOException;
    const-string v1, ""

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_2b

    .line 195
    .end local v0           #e:Ljava/io/IOException;
    :catch_cb
    move-exception v0

    .line 197
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, ""

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto :goto_b1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 542
    packed-switch p1, :pswitch_data_10e

    .line 659
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 544
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 545
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 546
    const v0, 0x7f0b0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    .line 548
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 549
    const v0, 0x7f0b0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    .line 550
    const v0, 0x7f0b0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogEdit:Landroid/widget/EditText;

    .line 551
    sget v0, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogState:I

    .line 553
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 554
    sget v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 577
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$5;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$5;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$4;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 558
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 564
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0075

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 570
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0077

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 542
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 554
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
    .line 869
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 870
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 874
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_34

    .line 879
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mItemMaxDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 883
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mItemMaxDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_32

    .line 888
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mNetworkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    .line 892
    :try_start_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_30

    .line 897
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    .line 901
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_2e

    .line 906
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->RemoveAllThread()V

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->cleanResource()V

    .line 908
    return-void

    .line 903
    :catch_2e
    move-exception v0

    goto :goto_27

    .line 894
    :catch_30
    move-exception v0

    goto :goto_1e

    .line 885
    :catch_32
    move-exception v0

    goto :goto_15

    .line 876
    :catch_34
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

    .line 2014
    const/16 v0, 0x64

    if-ne p1, v0, :cond_70

    .line 2017
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    if-eqz v0, :cond_14

    .line 2197
    :cond_13
    :goto_13
    return-void

    .line 2020
    :cond_14
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1d

    .line 2022
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 2024
    :cond_1d
    if-nez p2, :cond_2a

    .line 2026
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$20;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    .line 2056
    :cond_2a
    if-ne p2, v1, :cond_58

    .line 2058
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V

    .line 2059
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2060
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 2061
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2063
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 2067
    :cond_4c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 2070
    :cond_58
    if-ne p2, v2, :cond_13

    .line 2072
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V

    .line 2073
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2074
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 2075
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 2078
    :cond_70
    const/16 v0, 0x68

    if-ne p1, v0, :cond_d9

    .line 2080
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    if-nez v0, :cond_13

    .line 2085
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_81

    .line 2087
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 2089
    :cond_81
    if-nez p2, :cond_90

    .line 2091
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$21;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13

    .line 2105
    :cond_90
    if-ne p2, v1, :cond_c0

    .line 2107
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V

    .line 2108
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2109
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 2110
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 2112
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2116
    :cond_b3
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2119
    :cond_c0
    if-ne p2, v2, :cond_13

    .line 2121
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V

    .line 2122
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2123
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 2124
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2127
    :cond_d9
    const/16 v0, 0x69

    if-ne p1, v0, :cond_13

    .line 2129
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    if-nez v0, :cond_13

    .line 2134
    if-nez p2, :cond_ef

    .line 2136
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$22;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    .line 2175
    :cond_ef
    if-ne p2, v1, :cond_11f

    .line 2177
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V

    .line 2178
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2179
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 2180
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 2182
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2186
    :cond_112
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2189
    :cond_11f
    if-ne p2, v2, :cond_13

    .line 2191
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hideRefreshDialog()V

    .line 2192
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 2193
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 2194
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 497
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

    .line 500
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 502
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 504
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->showDialog(I)V

    .line 505
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 509
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x1e

    const/16 v5, 0x19

    const/16 v4, 0x14

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1592
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_da

    move v0, v1

    .line 1667
    :goto_10
    return v0

    .line 1595
    :pswitch_11
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1596
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1597
    const/16 v2, 0x32

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 1600
    :pswitch_25
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1601
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 1604
    :pswitch_34
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrders;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1605
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 1608
    :pswitch_43
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1609
    invoke-virtual {p0, v1, v6}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 1612
    :pswitch_52
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1613
    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 1616
    :pswitch_63
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 1617
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1618
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->indicesNames:[Ljava/lang/String;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$13;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$13;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesDialog:Landroid/app/Dialog;

    goto :goto_10

    .line 1644
    :pswitch_87
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1645
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 1649
    :pswitch_97
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderIndices;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1650
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 1654
    :pswitch_a7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuChangeOrderCurrency;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1655
    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 1659
    :pswitch_b9
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1660
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1663
    :pswitch_c9
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1664
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1592
    nop

    :pswitch_data_da
    .packed-switch 0x7f0b0155
        :pswitch_a7
        :pswitch_c9
        :pswitch_63
        :pswitch_87
        :pswitch_97
        :pswitch_b9
        :pswitch_25
        :pswitch_34
        :pswitch_43
        :pswitch_52
        :pswitch_11
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 473
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 475
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 476
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    if-eqz v0, :cond_2f

    .line 478
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->listNum:I

    .line 479
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->currentTapNum:I

    .line 480
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2f

    .line 482
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 484
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 489
    :cond_2f
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 1511
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1513
    if-eqz p1, :cond_b9

    .line 1515
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-eqz v2, :cond_11

    .line 1516
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1518
    :cond_11
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMenu:Landroid/view/Menu;

    .line 1521
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 1523
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v3

    .line 1524
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v4

    if-nez v4, :cond_59

    .line 1526
    const/16 v4, 0x14

    if-lt v3, v4, :cond_30

    .line 1528
    const v1, 0x7f0a0009

    invoke-virtual {v2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1587
    :cond_2f
    :goto_2f
    return v0

    .line 1532
    :cond_30
    const v4, 0x7f0a000a

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1533
    if-ge v3, v5, :cond_49

    .line 1535
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1542
    :goto_3f
    if-nez v3, :cond_51

    .line 1544
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2f

    .line 1539
    :cond_49
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3f

    .line 1548
    :cond_51
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2f

    .line 1552
    :cond_59
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v3

    if-ne v3, v0, :cond_a9

    .line 1554
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v3

    .line 1555
    const/16 v4, 0xa

    if-lt v3, v4, :cond_82

    .line 1557
    const v4, 0x7f0a0008

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1564
    :goto_71
    if-nez v3, :cond_89

    .line 1566
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1567
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2f

    .line 1561
    :cond_82
    const v4, 0x7f0a0007

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_71

    .line 1569
    :cond_89
    if-ge v3, v5, :cond_9a

    .line 1571
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1572
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2f

    .line 1576
    :cond_9a
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1577
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2f

    .line 1580
    :cond_a9
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    if-ne v1, v5, :cond_2f

    .line 1582
    const v1, 0x7f0a0006

    invoke-virtual {v2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2f

    :cond_b9
    move v0, v1

    .line 1587
    goto/16 :goto_2f
.end method

.method protected onResume()V
    .registers 12

    .prologue
    const v10, 0xfa000

    const v9, 0xe1000

    const v8, 0x7f090050

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 698
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 699
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_index"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 701
    iput v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->currentTapNum:I

    .line 705
    :cond_23
    :try_start_23
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->getInstence()Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/data/CurrencyManager;->loadArrayByFile(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mLoadCountryName:[Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_189

    .line 713
    :goto_31
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    .line 715
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$7;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 729
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->currentTapNum:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 730
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->currentTapNum:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->selectTab(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->listNum:I

    invoke-virtual {v0, v1, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 732
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_64

    .line 734
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRefreshDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$8;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 749
    :cond_64
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    if-nez v0, :cond_1ca

    .line 751
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_19d

    .line 753
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 754
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 800
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "need_load"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 802
    const-string v0, "stock"

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 804
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "symbol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exchange"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    new-instance v3, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;-><init>()V

    .line 809
    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setName(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setSymbol(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setPrice(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChange(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setChangePercent(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdown(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setHigh(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setLow(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setVolume(Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setUpdateDate(Ljava/lang/String;)V

    .line 823
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    .line 824
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 826
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->sendBroadcast(Landroid/content/Intent;)V

    .line 829
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    .line 831
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_231

    .line 833
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 834
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 850
    :goto_16b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "need_load"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 852
    if-nez v0, :cond_17b

    .line 854
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 855
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->refreshAllList()V

    .line 857
    :cond_17b
    const/16 v1, -0x5a

    if-ne v0, v1, :cond_185

    .line 859
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 860
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    .line 864
    :cond_185
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setStateNum()V

    .line 865
    return-void

    .line 707
    :catch_189
    move-exception v0

    .line 709
    const-string v1, ""

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/16 v0, -0x5a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->setResult(I)V

    .line 711
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    goto/16 :goto_31

    .line 758
    :cond_19d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 759
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v10, :cond_1b6

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_1c0

    .line 761
    :cond_1b6
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7f

    .line 765
    :cond_1c0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7f

    .line 769
    :cond_1ca
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    if-ne v0, v7, :cond_7f

    .line 771
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_206

    .line 773
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 774
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    :goto_1e5
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7f

    .line 791
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    .line 793
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 794
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->refreshAllList()V

    goto/16 :goto_7f

    .line 778
    :cond_206
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 779
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v10, :cond_21f

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_228

    .line 781
    :cond_21f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1e5

    .line 785
    :cond_228
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1e5

    .line 839
    :cond_231
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v10, :cond_24a

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v9, :cond_254

    .line 842
    :cond_24a
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16b

    .line 846
    :cond_254
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16b
.end method

.method protected selectTab(Ljava/lang/String;)V
    .registers 11
    .parameter "peroid"

    .prologue
    const v8, 0xfa000

    const v7, 0xe1000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 254
    if-nez p1, :cond_f

    .line 255
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    aget-object p1, v0, v4

    .line 257
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 259
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesRefreshFalg:Z

    .line 260
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyRefreshFlag:Z

    .line 261
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    .line 262
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    .line 263
    iput-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 264
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 265
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMarketText:Landroid/widget/TextView;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8b

    .line 271
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    :goto_6d
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadStockList()V

    .line 287
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V

    .line 289
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8a

    .line 290
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    .line 371
    :cond_8a
    :goto_8a
    return-void

    .line 276
    :cond_8b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v8, :cond_a4

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_ad

    .line 279
    :cond_a4
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6d

    .line 283
    :cond_ad
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6d

    .line 293
    :cond_b6
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mName:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 295
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyRefreshFlag:Z

    .line 296
    iput v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    .line 297
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    .line 298
    iput-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 299
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 300
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    const v1, 0x7f030021

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    .line 301
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    if-eqz v0, :cond_f0

    .line 302
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockMajorindicesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    :cond_f0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddMajorIndicsText:Landroid/widget/TextView;

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_159

    .line 308
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    :goto_114
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V

    .line 325
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8a

    .line 327
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13a

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesRefreshFalg:Z

    if-nez v0, :cond_13a

    .line 329
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesRefreshFalg:Z

    .line 330
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->refreshAllList()V

    .line 332
    :cond_13a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 334
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyMajorRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 313
    :cond_159
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAdd_layout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v8, :cond_172

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_17b

    .line 316
    :cond_172
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_114

    .line 320
    :cond_17b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mBtnCreate2:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_114

    .line 341
    :cond_184
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mIndicesRefreshFalg:Z

    .line 342
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mTabs:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrentTab:I

    .line 343
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030025

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    .line 344
    iput-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 345
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    .line 346
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyStockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyAdapter:Lcom/sec/android/widgetapp/stockclock/stocklist/StockCurrenciesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mAddCurrencyText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->hasCurrencyDB()Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 351
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 352
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->loadCurrencyList()V

    .line 364
    :cond_1c9
    :goto_1c9
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->regEventMyStockList()V

    .line 366
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8a

    .line 368
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mMyCurrencyRows:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyTwoItem;->getUpdateTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->updateDate(Ljava/lang/String;)V

    goto/16 :goto_8a

    .line 356
    :cond_1e5
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyRefreshFlag:Z

    if-nez v0, :cond_1c9

    .line 358
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z

    .line 359
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 360
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mCurrencyRefreshFlag:Z

    .line 361
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->performGetData()V

    goto :goto_1c9
.end method
