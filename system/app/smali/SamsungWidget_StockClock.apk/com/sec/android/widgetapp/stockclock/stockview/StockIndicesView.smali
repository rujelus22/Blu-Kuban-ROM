.class public Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;
.super Landroid/app/Activity;
.source "StockIndicesView.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;
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

.field private gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

.field private httpHandler:Landroid/os/Handler;

.field public indicesNames:[Ljava/lang/String;

.field public final indicesSymbols:[Ljava/lang/String;

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

.field private mIndicesDialog:Landroid/app/Dialog;

.field private mIndicesFlipper:Landroid/widget/ViewFlipper;

.field mIsVisible:Z

.field private mNetworkDialog:Landroid/app/Dialog;

.field private mNetworkRetryCount:I

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
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStocklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;",
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

.field private stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->keyBuf:Ljava/lang/String;

    .line 82
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

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mappingKey:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogState:I

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

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

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    .line 89
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    .line 90
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogEdit:Landroid/widget/EditText;

    .line 102
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    .line 103
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 104
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    .line 106
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v4

    const-string v1, "5d"

    aput-object v1, v0, v5

    const-string v1, "1m"

    aput-object v1, v0, v6

    const-string v1, "3m"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "6m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1y"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    .line 107
    const-string v0, "1d"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTab:Ljava/lang/String;

    .line 109
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNetworkDialog:Landroid/app/Dialog;

    .line 110
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mErrorDialog:Landroid/app/Dialog;

    .line 111
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNoUrl:Landroid/app/Dialog;

    .line 112
    iput v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    .line 116
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    .line 118
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIsVisible:Z

    .line 119
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;

    .line 120
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    .line 121
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;

    .line 125
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesDialog:Landroid/app/Dialog;

    .line 127
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^DJI,^IXIC,^GSPC,^FTSE,^GDAXI,^FCHI,^N225,^HSI,^STI"

    aput-object v1, v0, v4

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

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesSymbols:[Ljava/lang/String;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mFlipperDisplayedIndex:I

    .line 201
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onGalleryItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 245
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onGalleryTouchListener:Landroid/view/View$OnTouchListener;

    .line 382
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$3;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    .line 738
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$6;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1550
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->activityresult:Z

    .line 1845
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->httpHandler:Landroid/os/Handler;

    .line 2025
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$15;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$15;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onClickToListListener:Landroid/view/View$OnClickListener;

    .line 2034
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$16;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$16;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onScrollTocuchListener:Landroid/view/View$OnTouchListener;

    .line 2051
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setSLog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/ViewFlipper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mFlipperDisplayedIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateStockGraph(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->performGetGraphData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;Landroid/view/View;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->makeFlipper(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I

    return v0
.end method

.method static synthetic access$2902(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mGraphDataIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->leftArrowImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->rightArrowImg:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mViewPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mViewPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->executeRefresh()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 77
    sget v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogState:I

    return v0
.end method

.method static synthetic access$902(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    sput p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogState:I

    return p0
.end method

.method private closeProgressDialog()V
    .registers 2

    .prologue
    .line 1825
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 1829
    :try_start_4
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 1836
    :cond_9
    :goto_9
    return-void

    .line 1831
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private executeRefresh()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1383
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1385
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    .line 1386
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNetworkRetryCount:I

    .line 1387
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->performGetQuote()V

    .line 1389
    :cond_d
    return-void
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 601
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private initGallery()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 188
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .line 189
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAnimationDuration(I)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSpacing(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setFadingEdgeLength(I)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onGalleryItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onGalleryTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setGallerySelect(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private makeFlipper(Ljava/lang/String;Landroid/view/View;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setArrowVisibility()V

    .line 920
    const-string v1, ""

    .line 921
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

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

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_558

    .line 926
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSelName:Ljava/lang/String;

    .line 927
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getExchange()Ljava/lang/String;

    move-result-object v0

    .line 922
    :goto_39
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_d

    .line 935
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockIndicesObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 937
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockIndicesObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    move-result-object v2

    .line 939
    if-nez v2, :cond_4f

    .line 1106
    :cond_4e
    :goto_4e
    return-void

    .line 942
    :cond_4f
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateDate(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v3

    .line 945
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSelName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 948
    const v0, 0x7f0b010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 950
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b4

    .line 953
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v4

    .line 956
    :try_start_9a
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 957
    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_388

    .line 959
    const-string v0, "-"

    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 960
    const-string v0, "-"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 961
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

    .line 962
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

    .line 963
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f020092

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 964
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f020097

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 965
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_139} :catch_415

    .line 1004
    :goto_139
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d0

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4d0

    .line 1006
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v1, 0x7f0b00e9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v4, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTextSize(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1014
    :goto_187
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e1

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4e1

    .line 1016
    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1025
    :goto_1cc
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4f2

    .line 1027
    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1036
    :goto_211
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_503

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_503

    .line 1038
    const v0, 0x7f0b0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeVolumeFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1047
    :goto_256
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_514

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_514

    .line 1049
    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1058
    :goto_29b
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_525

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_525

    .line 1060
    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1069
    :goto_2e0
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_536

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_536

    .line 1071
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1080
    :goto_325
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_547

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_547

    .line 1082
    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v0, v2, v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setHVGATextSize(Ljava/lang/String;Landroid/widget/TextView;ZLandroid/content/Context;)V

    .line 1091
    :goto_36a
    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_4e

    .line 1092
    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$7;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$7;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4e

    .line 968
    :cond_388
    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_435

    .line 970
    const v0, 0x7f0b00eb

    :try_start_391
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v5, 0x99

    const/16 v6, 0xff

    const/16 v7, 0x20

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 971
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

    .line 972
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f0200a7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 973
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f0200a1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 974
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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
    :try_end_413
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_413} :catch_415

    goto/16 :goto_139

    .line 990
    :catch_415
    move-exception v0

    .line 992
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 993
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 994
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_139

    .line 977
    :cond_435
    const-wide/16 v0, 0x0

    cmpl-double v0, v5, v0

    if-nez v0, :cond_498

    .line 979
    const v0, 0x7f0b00ea

    :try_start_43e
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 980
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    const v0, 0x7f0b00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090052

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    const v0, 0x7f0b00ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_139

    .line 986
    :cond_498
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 987
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4b2
    .catch Ljava/lang/Exception; {:try_start_43e .. :try_end_4b2} :catch_415

    goto/16 :goto_139

    .line 1000
    :cond_4b4
    const v0, 0x7f0b00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1001
    const v0, 0x7f0b00ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_139

    .line 1011
    :cond_4d0
    const v0, 0x7f0b00e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_187

    .line 1022
    :cond_4e1
    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1cc

    .line 1033
    :cond_4f2
    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_211

    .line 1044
    :cond_503
    const v0, 0x7f0b0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_256

    .line 1055
    :cond_514
    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_29b

    .line 1066
    :cond_525
    const v0, 0x7f0b00fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2e0

    .line 1077
    :cond_536
    const v0, 0x7f0b00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_325

    .line 1088
    :cond_547
    const v0, 0x7f0b0100

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_36a

    :cond_558
    move-object v0, v1

    goto/16 :goto_39
.end method

.method private performGetGraphData(Ljava/lang/String;)V
    .registers 6
    .parameter "period"

    .prologue
    .line 1539
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findNextGraphPeriodIndex(Ljava/lang/String;)I

    move-result v0

    .line 1540
    .local v0, nextIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1548
    :cond_7
    :goto_7
    return-void

    .line 1544
    :cond_8
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_7

    .line 1546
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    goto :goto_7
.end method

.method private performGetQuote()V
    .registers 7

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1524
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 1527
    :cond_c
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 1528
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->showProgressDialog()V

    .line 1531
    :try_start_18
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    :try_end_3c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_18 .. :try_end_3c} :catch_3d

    .line 1535
    :goto_3c
    return-void

    .line 1532
    :catch_3d
    move-exception v0

    goto :goto_3c
.end method

.method private refreshAllList()V
    .registers 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->refreshAllList()V

    .line 1733
    return-void
.end method

.method private regEventUpdateButton()V
    .registers 3

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$8;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$8;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1360
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$9;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1368
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$10;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1379
    return-void
.end method

.method private releaseGallery()V
    .registers 6

    .prologue
    const v4, 0x7f0b00e7

    const/4 v3, 0x0

    .line 272
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 273
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 279
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 280
    .local v1, vg:Landroid/view/ViewGroup;
    if-eqz v1, :cond_47

    .line 282
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 284
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    :cond_44
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 277
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 290
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 291
    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    .line 292
    return-void
.end method

.method private setFlipperHandle()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1338
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mFlipperDisplayedIndex:I

    if-eq v0, v2, :cond_18

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mFlipperDisplayedIndex:I

    if-le v0, v1, :cond_18

    .line 1339
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mFlipperDisplayedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1340
    iput v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mFlipperDisplayedIndex:I

    .line 1342
    :cond_18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1344
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 1345
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1347
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 1349
    :cond_50
    return-void
.end method

.method private setGallerySelect(Ljava/lang/String;)V
    .registers 5
    .parameter "symbol"

    .prologue
    .line 1737
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    .line 1738
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 1741
    :cond_c
    const/4 v1, 0x0

    .line 1742
    .local v1, selection:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 1744
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1746
    move v1, v0

    .line 1750
    :cond_29
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(I)V

    .line 1751
    return-void

    .line 1742
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 589
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->keyBuf:Ljava/lang/String;

    .line 597
    :goto_18
    return-void

    .line 595
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 4
    .parameter

    .prologue
    .line 606
    const-string v0, "prefs_slog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 608
    const-string v1, "slog_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    sput p1, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    .line 612
    return-void
.end method

.method private showDeleteDialog()V
    .registers 5

    .prologue
    .line 2473
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2474
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2475
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2476
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2477
    const v0, 0x7f090014

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2478
    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2480
    const v0, 0x7f090029

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2515
    const v0, 0x7f09002a

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$18;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$18;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2523
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2524
    return-void
.end method

.method private showProgressDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1755
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setChangeTabStatus(Z)V

    .line 1756
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1758
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1761
    :cond_20
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1762
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1821
    return-void
.end method

.method private updateBasicStockInfo()Z
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo(Ljava/lang/String;)Z

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

.method private updateBasicStockInfo(Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v0, 0x0

    const v10, 0x7f0b00ec

    const v9, 0x7f0b00ea

    const v8, 0x7f090050

    const/4 v7, 0x4

    .line 1145
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1147
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockIndicesObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    move-result-object p1

    .line 1148
    if-nez p1, :cond_1e

    .line 1333
    :goto_1d
    return v0

    .line 1151
    :cond_1e
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v2

    .line 1152
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v1

    .line 1153
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_361

    .line 1155
    if-eqz v1, :cond_503

    .line 1159
    :try_start_30
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 1160
    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_364

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
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020092

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1170
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020097

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1172
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_11d} :catch_4e2

    move-object v0, v1

    move-object v1, v2

    :goto_11f
    move-object v2, v1

    move-object v1, v0

    .line 1236
    :goto_121
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasGraphData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_171

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

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
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->executeRefresh()V

    .line 1244
    :cond_171
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b00ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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

    .line 1250
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_523

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_523

    .line 1252
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_537

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_537

    .line 1263
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getHigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    :goto_246
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54b

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_54b

    .line 1273
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getLow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    :goto_274
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55f

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_55f

    .line 1283
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getVolume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeVolumeFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    :goto_2a2
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_573

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_573

    .line 1293
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrevclose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    :goto_2d0
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_587

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_587

    .line 1303
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getOpen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :goto_2fe
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59b

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_59b

    .line 1313
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearhigh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    :goto_32c
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5af

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5af

    .line 1323
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getYearlow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    :goto_35a
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getUpdateDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateDate(Ljava/lang/String;)V

    .line 1333
    :cond_361
    const/4 v0, 0x1

    goto/16 :goto_1d

    .line 1182
    :cond_364
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_43b

    .line 1184
    :try_start_36a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

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
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0200a7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0200a1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1192
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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

    .line 1202
    :cond_43b
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_4b8

    .line 1204
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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
    :cond_4b8
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ea

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b00ec

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4de
    .catch Ljava/lang/Exception; {:try_start_36a .. :try_end_4de} :catch_4e2

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_11f

    .line 1222
    :catch_4e2
    move-exception v0

    .line 1224
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_121

    .line 1233
    :cond_503
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_121

    .line 1258
    :cond_523
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_218

    .line 1268
    :cond_537
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_246

    .line 1278
    :cond_54b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_274

    .line 1288
    :cond_55f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2a2

    .line 1298
    :cond_573
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2d0

    .line 1308
    :cond_587
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2fe

    .line 1318
    :cond_59b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_32c

    .line 1328
    :cond_5af
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_35a
.end method

.method private updateBasicStockInfo(Ljava/lang/String;)Z
    .registers 7
    .parameter "symbol"

    .prologue
    .line 1121
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectStockIndicesObject(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    move-result-object v2

    .line 1122
    .local v2, item:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1123
    .local v0, StockDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    if-eqz v2, :cond_59

    .line 1125
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4c

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 1127
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setName(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getExchange()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setExchange(Ljava/lang/String;)V

    .line 1125
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1134
    :cond_4c
    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1136
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo(Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)Z

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
    .line 1849
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1850
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1851
    if-eqz p1, :cond_5b

    .line 1853
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1854
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    .line 1857
    :cond_5b
    return-void
.end method

.method private updateStockGraph(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;->notifyDataSetChanged()V

    .line 914
    return-void
.end method


# virtual methods
.method public RemoveAllThread()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 814
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v1, :cond_57

    .line 816
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 817
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_57

    .line 819
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 821
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-ne v1, v3, :cond_49

    .line 823
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 825
    :cond_49
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 829
    .end local v0           #i:I
    :cond_57
    return-void
.end method

.method buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    .registers 13
    .parameter "updateDate"

    .prologue
    const-wide/16 v1, 0x0

    .line 1497
    new-instance v10, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-direct {v10}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;-><init>()V

    .line 1498
    .local v10, gd:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    const-wide/16 v5, 0x0

    const-string v9, ""

    move-wide v3, v1

    move-wide v7, v1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;-><init>(DDJDLjava/lang/String;)V

    .line 1500
    .local v0, graph:Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    invoke-virtual {v10, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->addGraphData(Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;)V

    .line 1501
    invoke-virtual {v10, p1}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1502
    return-object v10
.end method

.method public cleanResource()V
    .registers 4

    .prologue
    const v2, 0x7f0b00ef

    const/4 v1, 0x0

    .line 833
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 834
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 836
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 839
    :cond_14
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_1f

    .line 840
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 841
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mExchangeFlipper:Landroid/widget/ViewFlipper;

    .line 843
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 844
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 846
    :cond_25
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    if-eqz v0, :cond_30

    .line 847
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->close()V

    .line 848
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 851
    :cond_30
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    .line 852
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 853
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    .line 854
    sput-object v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 855
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNetworkDialog:Landroid/app/Dialog;

    .line 856
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mErrorDialog:Landroid/app/Dialog;

    .line 857
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNoUrl:Landroid/app/Dialog;

    .line 858
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    .line 859
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;

    if-eqz v0, :cond_4b

    .line 860
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 861
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;

    .line 863
    :cond_4b
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    .line 865
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    if-eqz v0, :cond_75

    .line 866
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    if-eqz v0, :cond_6e

    .line 867
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->removeAllViews()V

    .line 869
    :cond_6e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 870
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    .line 873
    :cond_75
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    .line 874
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_82

    .line 875
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 878
    :cond_82
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    .line 879
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->leftArrowImg:Landroid/widget/ImageView;

    .line 880
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->rightArrowImg:Landroid/widget/ImageView;

    .line 881
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 888
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStocklist:Ljava/util/ArrayList;

    .line 889
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    if-eqz v0, :cond_97

    .line 890
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    .line 894
    :cond_97
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a2

    .line 895
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 896
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;

    .line 899
    :cond_a2
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->toast:Landroid/widget/Toast;

    .line 902
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogEdit:Landroid/widget/EditText;

    .line 903
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesDialog:Landroid/app/Dialog;

    .line 905
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    .line 907
    return-void
.end method

.method clearQueryResultArray()V
    .registers 4

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    if-eqz v1, :cond_12

    .line 1395
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1397
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1400
    .end local v0           #i:I
    :cond_12
    return-void
.end method

.method findNextGraphPeriodIndex(Ljava/lang/String;)I
    .registers 4
    .parameter "period"

    .prologue
    .line 1508
    if-nez p1, :cond_4

    .line 1509
    const/4 v1, 0x0

    .line 1518
    :goto_3
    return v1

    .line 1510
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 1512
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1514
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    .line 1510
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1518
    :cond_1c
    const/4 v1, -0x1

    goto :goto_3
.end method

.method public makeIndicesFlipper()V
    .registers 19

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v14, :cond_115

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 412
    :goto_14
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 413
    .local v13, vi:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v14}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v8

    .line 415
    .local v8, indicesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_29d

    .line 417
    const v14, 0x7f03002f

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 418
    .local v7, indicesLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    .line 419
    .local v1, IndicesItem:Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;
    const v14, 0x7f0b00df

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 420
    .local v9, name:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const v14, 0x7f0b00e0

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 422
    .local v12, price:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getPrice()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const v14, 0x7f0b00e2

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 424
    .local v2, change:Landroid/widget/TextView;
    const v14, 0x7f0b00e1

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 425
    .local v4, change_icon:Landroid/widget/ImageView;
    const v14, 0x7f0b00e4

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 426
    .local v10, percent:Landroid/widget/TextView;
    const v14, 0x7f0b00e3

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 427
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

    .line 431
    :try_start_9f
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 432
    .local v3, changeValue:Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_126

    .line 434
    const v14, 0x7f0200a7

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    const v14, 0x7f0200a1

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 438
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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

    .line 480
    .end local v3           #changeValue:Ljava/lang/Double;
    :goto_10a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14, v7}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 415
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_27

    .line 410
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

    invoke-virtual {v0, v14}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewFlipper;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    goto/16 :goto_14

    .line 441
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

    .line 443
    const v14, 0x7f020092

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    const v14, 0x7f020097

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200ad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 447
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    const-string v15, "-"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    const-string v16, "-"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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

    .line 460
    .end local v3           #changeValue:Ljava/lang/Double;
    :catch_19b
    move-exception v5

    .line 462
    .local v5, e:Ljava/lang/Exception;
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    .line 452
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #changeValue:Ljava/lang/Double;
    :cond_1f1
    const/4 v14, 0x4

    :try_start_1f2
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 456
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChange()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/widgetapp/stockclock/common/Util;->changeDigitFormat(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getChangePercent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

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

    .line 473
    .end local v3           #changeValue:Ljava/lang/Double;
    :cond_248
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    const/4 v14, 0x4

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090050

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

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

    .line 483
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

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    if-eqz v14, :cond_2bb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2bb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v14}, Landroid/widget/ViewFlipper;->isAutoStart()Z

    move-result v14

    if-nez v14, :cond_2bb

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setFlipperHandle()V

    .line 487
    :cond_2bb
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 1662
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1664
    sget-boolean v2, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    if-eqz v2, :cond_20

    .line 1666
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1667
    .local v0, idleIntent:Landroid/content/Intent;
    const-string v2, ""

    sget-object v3, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string v2, "selSymbol"

    sget-object v3, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    invoke-virtual {p0, v5, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setResult(ILandroid/content/Intent;)V

    .line 1670
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->finish()V

    .line 1673
    .end local v0           #idleIntent:Landroid/content/Intent;
    :cond_20
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    .line 1674
    .local v1, selSymbol:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1676
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v2

    if-nez v2, :cond_45

    .line 1678
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setResult(ILandroid/content/Intent;)V

    .line 1679
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->finish()V

    .line 1728
    :goto_44
    return-void

    .line 1683
    :cond_45
    const/16 v2, -0x5a

    if-ne p2, v2, :cond_50

    .line 1685
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setResult(I)V

    .line 1686
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->finish()V

    goto :goto_44

    .line 1690
    :cond_50
    const/16 v2, 0x1e

    if-ne p1, v2, :cond_74

    .line 1692
    if-eqz p3, :cond_74

    .line 1694
    const-string v2, "symbol"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 1696
    const-string v2, "symbol"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1698
    :cond_64
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V

    .line 1699
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V

    .line 1700
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    .line 1701
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setGallerySelect(Ljava/lang/String;)V

    .line 1702
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo()Z

    goto :goto_44

    .line 1706
    :cond_74
    const/16 v2, 0x28

    if-ne p1, v2, :cond_98

    .line 1708
    if-eqz p3, :cond_98

    .line 1710
    const-string v2, "selSymbol"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 1712
    const-string v2, "selSymbol"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1714
    :cond_88
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V

    .line 1715
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V

    .line 1716
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    .line 1717
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setGallerySelect(Ljava/lang/String;)V

    .line 1718
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo()Z

    goto :goto_44

    .line 1723
    :cond_98
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V

    .line 1724
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V

    .line 1725
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    .line 1726
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setGallerySelect(Ljava/lang/String;)V

    .line 1727
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo()Z

    goto :goto_44
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    const v5, 0x7f0b00d2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 332
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 333
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 334
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 335
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 336
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    .line 338
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 341
    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 343
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v1, v2, v3

    .line 344
    .local v1, gallerySel:I
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V

    .line 345
    const v2, 0x7f03002d

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setContentView(I)V

    .line 347
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V

    .line 349
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    .line 351
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->setSelection(I)V

    .line 353
    const v2, 0x7f0b00d8

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    .line 354
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 355
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 356
    const v2, 0x7f0b00da

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 357
    const v2, 0x7f0b00d7

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 358
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->regEventUpdateButton()V

    .line 359
    sget-object v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_be

    sget-object v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 361
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 362
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 364
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    if-nez v2, :cond_d8

    .line 365
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b9

    .line 367
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b00e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 369
    :cond_b9
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 375
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_be
    :goto_be
    const v2, 0x7f0b00d3

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->makeIndicesFlipper()V

    .line 379
    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    return-void

    .line 371
    .restart local v0       #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_d8
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->closeProgressDialog()V

    goto :goto_be
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "bundel"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    if-eqz v1, :cond_c

    .line 137
    sput-boolean v5, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    .line 141
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 142
    const-string v1, "Tag"

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>   <<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setContentView(I)V

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    if-ge v0, v6, :cond_36

    .line 148
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 152
    :cond_36
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesNames:[Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 154
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesNames:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 155
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesNames:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesNames:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 161
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 162
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;-><init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    .line 163
    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->stockView:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$ViewAdapter;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    :goto_a1
    if-ge v0, v6, :cond_af

    .line 167
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mCurrentTabList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 169
    :cond_af
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "symbol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Symbol"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    .line 173
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setGallerySelect(Ljava/lang/String;)V

    .line 175
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    .line 176
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 178
    const v1, 0x7f0b00da

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mUpdateBtn:Landroid/widget/ImageView;

    .line 179
    const v1, 0x7f0b00d7

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->detailquotesdelayedbg:Landroid/widget/Button;

    .line 180
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->onBlockAClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->regEventUpdateButton()V

    .line 183
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesFlipper:Landroid/widget/ViewFlipper;

    .line 184
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 617
    packed-switch p1, :pswitch_data_10e

    .line 734
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 619
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 620
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 621
    const v0, 0x7f0b0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    .line 623
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 624
    const v0, 0x7f0b0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    .line 625
    const v0, 0x7f0b0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogEdit:Landroid/widget/EditText;

    .line 626
    sget v0, Lcom/sec/android/widgetapp/stockclock/common/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogState:I

    .line 628
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 629
    sget v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 652
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$5;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$5;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$4;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 633
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 639
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0075

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 645
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0b0077

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 617
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 629
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
    .line 769
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 770
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 774
    :try_start_7
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_34

    .line 779
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNetworkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 783
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_32

    .line 788
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    .line 792
    :try_start_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_30

    .line 797
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNoUrl:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    .line 801
    :try_start_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNoUrl:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_2e

    .line 807
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->RemoveAllThread()V

    .line 809
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->cleanResource()V

    .line 810
    return-void

    .line 803
    :catch_2e
    move-exception v0

    goto :goto_27

    .line 794
    :catch_30
    move-exception v0

    goto :goto_1e

    .line 785
    :catch_32
    move-exception v0

    goto :goto_15

    .line 776
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
    const/4 v1, 0x1

    .line 1863
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    if-eqz v0, :cond_6

    .line 2023
    :cond_5
    :goto_5
    return-void

    .line 1868
    :cond_6
    const/16 v0, 0x67

    if-ne p1, v0, :cond_17

    .line 1870
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$13;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 1943
    :cond_17
    const/16 v0, 0x69

    if-ne p1, v0, :cond_5

    .line 1945
    if-nez p2, :cond_2a

    .line 1947
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->httpHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$14;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Ljava/lang/Object;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 1970
    :cond_2a
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->closeProgressDialog()V

    .line 1971
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1972
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    .line 1973
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1986
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 1990
    :cond_4d
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mNetworkRetryCount:I

    if-lez v0, :cond_60

    .line 2003
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 2018
    :cond_60
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/stockclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 548
    const-string v3, "Tag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 553
    const/4 v3, 0x4

    if-ne p1, v3, :cond_61

    .line 555
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v3, :cond_2f

    .line 556
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 559
    :cond_2f
    const-string v2, ""

    .line 562
    .local v2, symbol:Ljava/lang/String;
    :try_start_31
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_31 .. :try_end_49} :catch_5c

    move-result-object v2

    .line 569
    :goto_4a
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 570
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "selSymbol"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setResult(ILandroid/content/Intent;)V

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->finish()V

    move v3, v4

    .line 584
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #symbol:Ljava/lang/String;
    :goto_5b
    return v3

    .line 563
    .restart local v2       #symbol:Ljava/lang/String;
    :catch_5c
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_4a

    .line 576
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #symbol:Ljava/lang/String;
    :cond_61
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getKeyBuffer()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mappingKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 578
    const/16 v3, 0x3e7

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->showDialog(I)V

    .line 579
    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 584
    :cond_78
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_5b
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 297
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 299
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, type:Ljava/lang/String;
    const-string v1, "searchAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 302
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 304
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    .line 306
    :cond_29
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V

    .line 307
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V

    .line 308
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    .line 309
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setGallerySelect(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateBasicStockInfo()Z

    .line 311
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->updateStockGraph(Landroid/view/View;)V

    .line 312
    const-string v1, "loadfinish"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 314
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->executeRefresh()V

    .line 318
    .end local v0           #type:Ljava/lang/String;
    :cond_4f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x1e

    const/4 v1, 0x1

    .line 1588
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    .line 1657
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1591
    :pswitch_c
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z

    .line 1592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1593
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->indicesNames:[Ljava/lang/String;

    new-instance v3, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$11;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mIndicesDialog:Landroid/app/Dialog;

    move v0, v1

    .line 1626
    goto :goto_b

    .line 1628
    :pswitch_31
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->showDeleteDialog()V

    move v0, v1

    .line 1629
    goto :goto_b

    .line 1631
    :pswitch_36
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->finish()V

    move v0, v1

    .line 1632
    goto :goto_b

    .line 1634
    :pswitch_3b
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1635
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1638
    :try_start_49
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_49 .. :try_end_64} :catch_99

    .line 1642
    :goto_64
    invoke-virtual {p0, v2, v5}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1643
    goto :goto_b

    .line 1645
    :pswitch_69
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1648
    :try_start_74
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_74 .. :try_end_8f} :catch_97

    .line 1652
    :goto_8f
    const/16 v0, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 1653
    goto/16 :goto_b

    .line 1649
    :catch_97
    move-exception v0

    goto :goto_8f

    .line 1639
    :catch_99
    move-exception v0

    goto :goto_64

    .line 1588
    nop

    :pswitch_data_9c
    .packed-switch 0x7f0b014f
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_69
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 491
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->activityresult:Z

    .line 494
    const-string v1, ""

    invoke-direct {p0, v1, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 496
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setCurrentSymbol(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 502
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyListSize()I

    move-result v1

    if-lez v1, :cond_4f

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.MANUAL_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, refresh_idle:Landroid/content/Intent;
    :goto_23
    const-string v1, "DETAIL_CURRENT_SHOWN_STOCK"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->selSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "WIDGET_ID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_45

    .line 511
    const-string v1, "WIDGET_ID"

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "WIDGET_ID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    :cond_45
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    .end local v0           #refresh_idle:Landroid/content/Intent;
    :cond_48
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->closeProgressDialog()V

    .line 517
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 518
    return-void

    .line 505
    :cond_4f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #refresh_idle:Landroid/content/Intent;
    goto :goto_23
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 1561
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1563
    if-eqz p1, :cond_2b

    .line 1565
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1567
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1570
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1572
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->getMyIndicesSize()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_24

    .line 1574
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1581
    :goto_22
    const/4 v0, 0x1

    .line 1583
    :goto_23
    return v0

    .line 1578
    :cond_24
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_22

    .line 1583
    :cond_2b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->setContext(Landroid/content/Context;)V

    .line 526
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 527
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->activityresult:Z

    if-nez v1, :cond_35

    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 531
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshFlag:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 534
    :cond_24
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->forceSetLayout()V

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->makeIndicesFlipper()V

    .line 536
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->refreshAllList()V

    .line 537
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->releaseGallery()V

    .line 538
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->initGallery()V

    .line 540
    .end local v0           #i:I
    :cond_35
    return-void
.end method

.method public refreshIndice()V
    .registers 5

    .prologue
    .line 396
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v1

    .line 397
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 398
    .local v2, symbols:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 399
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 400
    :cond_22
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v3, v2, p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 401
    return-void
.end method

.method saveQueryResultArray2Database(Ljava/lang/String;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v8, -0x5a

    const/4 v3, 0x0

    .line 1444
    .line 1445
    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v6

    .line 1446
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/util/ArrayList;

    .line 1447
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 1492
    :cond_1c
    :goto_1c
    return v3

    .line 1452
    :cond_1d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-virtual {v1, v6}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->setUpdateDate(Ljava/lang/String;)V

    move v2, v3

    move v1, v3

    .line 1453
    :goto_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3f

    .line 1455
    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;

    invoke-static {v4, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->saveStocIndicesInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)I

    move-result v4

    .line 1453
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v4

    goto :goto_28

    .line 1457
    :cond_3f
    if-eq v1, v8, :cond_93

    .line 1459
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->deleteGraphData(Ljava/lang/String;)I

    move-result v2

    .line 1460
    if-eq v2, v8, :cond_77

    .line 1462
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->buildEmptyGraphData(Ljava/lang/String;)Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    move-result-object v0

    .line 1463
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    const-string v2, "0d"

    invoke-virtual {v1, p1, v2, v0, v6}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v0

    .line 1465
    if-eq v0, v8, :cond_91

    move v1, v5

    move v2, v0

    .line 1467
    :goto_59
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_77

    .line 1469
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 1470
    if-eqz v0, :cond_8b

    .line 1472
    invoke-virtual {v0, v6}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->setUpdateDate(Ljava/lang/String;)V

    .line 1473
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    aget-object v4, v4, v7

    invoke-virtual {v2, p1, v4, v0, v6}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateGraphData(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)I

    move-result v2

    .line 1475
    if-eqz v2, :cond_8b

    .line 1483
    :cond_77
    :goto_77
    if-ne v2, v8, :cond_8f

    .line 1485
    sget-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v0, :cond_84

    .line 1486
    const-string v0, ""

    const-string v1, "DB Full Error"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_84
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->setResult(I)V

    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->finish()V

    goto :goto_1c

    .line 1467
    :cond_8b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_59

    :cond_8f
    move v3, v5

    .line 1492
    goto :goto_1c

    :cond_91
    move v2, v0

    goto :goto_77

    :cond_93
    move v2, v1

    goto :goto_77
.end method

.method public setArrowVisibility()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2526
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 2527
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->selectAllIndicesList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    .line 2530
    :cond_f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 2531
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mStockListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2f

    .line 2532
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->leftArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2533
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->rightArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2539
    :cond_2e
    :goto_2e
    return-void

    .line 2535
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->leftArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2536
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->rightArrowImg:Landroid/widget/ImageView;

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

    .line 1412
    if-eqz p2, :cond_1c

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 1414
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1416
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 1439
    :cond_1c
    :goto_1c
    return-void

    .line 1418
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1420
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v3

    goto :goto_1c

    .line 1422
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1424
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v4

    goto :goto_1c

    .line 1426
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1428
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v5

    goto :goto_1c

    .line 1430
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1432
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    aput-object p2, v0, v6

    goto :goto_1c

    .line 1434
    :cond_59
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mPeriodArray:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1436
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v1, 0x6

    aput-object p2, v0, v1

    goto :goto_1c
.end method

.method storeStockData2QueryResultArray(Ljava/lang/Object;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 1406
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mQueryResultArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1408
    :cond_9
    return-void
.end method
