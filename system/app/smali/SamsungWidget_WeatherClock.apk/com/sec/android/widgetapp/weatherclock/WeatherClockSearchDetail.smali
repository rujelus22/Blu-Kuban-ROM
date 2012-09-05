.class public Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;
.super Landroid/app/Activity;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# static fields
.field static NETWORK_TRY:Z

.field static POPUP_IS_ON:Z

.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private FiveDaySelect:Landroid/widget/LinearLayout;

.field private FourDaySelect:Landroid/widget/LinearLayout;

.field private LogGroup:Landroid/widget/RadioGroup;

.field private OneDaySelect:Landroid/widget/LinearLayout;

.field private SearchDetailCtx:Landroid/content/Context;

.field private SixDaySelect:Landroid/widget/LinearLayout;

.field private ThreeDaySelect:Landroid/widget/LinearLayout;

.field private TwoDaySelect:Landroid/widget/LinearLayout;

.field cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

.field private cityListImgBtn:Landroid/widget/ImageView;

.field private citySelectText:Landroid/widget/TextView;

.field private clickDownX:F

.field private clickUpX:F

.field private dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private detail_focus:Landroid/widget/RelativeLayout;

.field private detailmapbtn:Landroid/widget/TextView;

.field private detailmorebtn:Landroid/widget/TextView;

.field private detailstateText:Landroid/widget/TextView;

.field private fiveDayDateText:Landroid/widget/TextView;

.field private fiveDayHighTempText:Landroid/widget/TextView;

.field private fiveDayLowTempText:Landroid/widget/TextView;

.field private fiveDayText:Landroid/widget/TextView;

.field private fiveDayWeatherImg:Landroid/widget/ImageView;

.field private fivedayurl:Ljava/lang/String;

.field private flag:I

.field private forcastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fourDayDateText:Landroid/widget/TextView;

.field private fourDayHighTempText:Landroid/widget/TextView;

.field private fourDayLowTempText:Landroid/widget/TextView;

.field private fourDayText:Landroid/widget/TextView;

.field private fourDayWeatherImg:Landroid/widget/ImageView;

.field private fourdayurl:Ljava/lang/String;

.field private highTempText:Landroid/widget/TextView;

.field private httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

.field httpHandler:Landroid/os/Handler;

.field info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

.field private leftArrowImg:Landroid/widget/ImageView;

.field private lowTempText:Landroid/widget/TextView;

.field private mAppWidgetId:I

.field private mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field public mDecryptKey:Ljava/security/Key;

.field public mHttpThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field mIsVisible:Z

.field private mNetworkErrorDialog:Landroid/app/Dialog;

.field private mNetworkRetryCount:I

.field private mPopupDialog:Landroid/app/Dialog;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRefreshDialog:Landroid/app/Dialog;

.field private volatile mRequestCanceled:Z

.field private mSaveHandler:Landroid/os/Handler;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

.field private mUpdateBtn:Landroid/widget/ImageView;

.field private mUpdateFlipper:Landroid/widget/ViewFlipper;

.field private nowTempText:Landroid/widget/TextView;

.field private oneDayDateText:Landroid/widget/TextView;

.field private oneDayHighTempText:Landroid/widget/TextView;

.field private oneDayLowTempText:Landroid/widget/TextView;

.field private oneDayText:Landroid/widget/TextView;

.field private oneDayWeatherImg:Landroid/widget/ImageView;

.field private onedayurl:Ljava/lang/String;

.field private parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

.field private rightArrowImg:Landroid/widget/ImageView;

.field private selLocation:Ljava/lang/String;

.field private setChangeddirection:Z

.field private setLanddirection:Z

.field private sixDayDateText:Landroid/widget/TextView;

.field private sixDayHighTempText:Landroid/widget/TextView;

.field private sixDayLowTempText:Landroid/widget/TextView;

.field private sixDayText:Landroid/widget/TextView;

.field private sixDayWeatherImg:Landroid/widget/ImageView;

.field private sixdayurl:Ljava/lang/String;

.field private summerTimeImg:Landroid/widget/ImageView;

.field private tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

.field private threeDayDateText:Landroid/widget/TextView;

.field private threeDayHighTempText:Landroid/widget/TextView;

.field private threeDayLowTempText:Landroid/widget/TextView;

.field private threeDayText:Landroid/widget/TextView;

.field private threeDayWeatherImg:Landroid/widget/ImageView;

.field private threedayurl:Ljava/lang/String;

.field private todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

.field private todayTempImg:Landroid/widget/ImageView;

.field private todaydateText:Landroid/widget/TextView;

.field private twoDayDateText:Landroid/widget/TextView;

.field private twoDayHighTempText:Landroid/widget/TextView;

.field private twoDayLowTempText:Landroid/widget/TextView;

.field private twoDayText:Landroid/widget/TextView;

.field private twoDayWeatherImg:Landroid/widget/ImageView;

.field private twodayurl:Ljava/lang/String;

.field private updateText:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

.field private weatherIdx:I

.field private weatherInfoText:Landroid/widget/TextView;

.field private weatherTodayImgLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    const/4 v2, 0x0

    .line 134
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->keyBuf:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mappingKey:Ljava/lang/String;

    .line 147
    sput v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogState:I

    .line 159
    sput-boolean v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->POPUP_IS_ON:Z

    .line 160
    sput-boolean v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->NETWORK_TRY:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->clickDownX:F

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->clickUpX:F

    .line 128
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    .line 129
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 130
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mPopupDialog:Landroid/app/Dialog;

    .line 143
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;

    .line 145
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    .line 146
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogEdit:Landroid/widget/EditText;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    .line 154
    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mNetworkRetryCount:I

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRequestCanceled:Z

    .line 156
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mIsVisible:Z

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSaveHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    .line 163
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mCityList:Ljava/util/ArrayList;

    .line 165
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;

    .line 166
    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherIdx:I

    .line 170
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 171
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    .line 172
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->forcastList:Ljava/util/ArrayList;

    .line 173
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    .line 174
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    .line 179
    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->flag:I

    .line 181
    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setChangeddirection:Z

    .line 186
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z

    .line 189
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mDecryptKey:Ljava/security/Key;

    .line 801
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1409
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->httpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->insertSearchCityToDB()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 100
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->parseResponseAndSave2DB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    sput p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SearchDetailCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->stopHttpThread()V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->stopRefreshAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setSLog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dataUpdate()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRequestCanceled:Z

    return p1
.end method

.method private checkResultCode(I)I
    .registers 5
    .parameter "resultCode"

    .prologue
    const/4 v2, -0x1

    .line 2283
    const/4 v0, 0x0

    .line 2284
    .local v0, result:I
    if-ne v2, p1, :cond_7

    .line 2286
    const/16 v0, 0x3e7

    .line 2293
    :cond_6
    :goto_6
    return v0

    .line 2288
    :cond_7
    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getResultType()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 2291
    const/16 v0, 0x3e7

    goto :goto_6
.end method

.method private dataUpdate()V
    .registers 3

    .prologue
    .line 862
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 864
    const v0, 0x7f09001e

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 873
    :goto_c
    return-void

    .line 870
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDataRefresh(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private findLayoutId(I)I
    .registers 3
    .parameter

    .prologue
    const v0, 0x7f030008

    .line 1618
    packed-switch p1, :pswitch_data_54

    .line 1681
    :goto_6
    :pswitch_6
    return v0

    .line 1626
    :pswitch_7
    const v0, 0x7f030009

    goto :goto_6

    .line 1630
    :pswitch_b
    const v0, 0x7f03000a

    goto :goto_6

    .line 1632
    :pswitch_f
    const v0, 0x7f03000b

    goto :goto_6

    .line 1637
    :pswitch_13
    const v0, 0x7f03000c

    goto :goto_6

    .line 1639
    :pswitch_17
    const v0, 0x7f03000d

    goto :goto_6

    .line 1643
    :pswitch_1b
    const v0, 0x7f03000e

    goto :goto_6

    .line 1646
    :pswitch_1f
    const v0, 0x7f03000f

    goto :goto_6

    .line 1648
    :pswitch_23
    const v0, 0x7f030010

    goto :goto_6

    .line 1651
    :pswitch_27
    const v0, 0x7f030011

    goto :goto_6

    .line 1654
    :pswitch_2b
    const v0, 0x7f030012

    goto :goto_6

    .line 1658
    :pswitch_2f
    const v0, 0x7f030013

    goto :goto_6

    .line 1662
    :pswitch_33
    const v0, 0x7f030014

    goto :goto_6

    .line 1664
    :pswitch_37
    const v0, 0x7f030015

    goto :goto_6

    .line 1666
    :pswitch_3b
    const v0, 0x7f030016

    goto :goto_6

    .line 1668
    :pswitch_3f
    const v0, 0x7f030017

    goto :goto_6

    .line 1670
    :pswitch_43
    const v0, 0x7f030018

    goto :goto_6

    .line 1672
    :pswitch_47
    const v0, 0x7f030019

    goto :goto_6

    .line 1677
    :pswitch_4b
    const v0, 0x7f03001a

    goto :goto_6

    .line 1679
    :pswitch_4f
    const v0, 0x7f03001b

    goto :goto_6

    .line 1618
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_f
        :pswitch_13
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2b
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_6
        :pswitch_6
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4f
        :pswitch_13
        :pswitch_13
        :pswitch_1b
        :pswitch_1b
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method

.method private getDataUsingFlipper()V
    .registers 7

    .prologue
    .line 1066
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, city:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, location:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1070
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainUpdateTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getDetailUpdateTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_42

    .line 1073
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setUiWithDatabaseData(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDataRefresh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :goto_41
    return-void

    .line 1079
    :cond_42
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setUiWithDatabaseData(Ljava/lang/String;)V

    goto :goto_41
.end method

.method private getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;
    .registers 8
    .parameter "daytext"
    .parameter "iDayOfWeek"
    .parameter "iLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x66

    const/16 v2, 0xff

    .line 2268
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 2269
    .local v0, sDayOfWeek:Ljava/lang/String;
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2270
    sparse-switch p2, :sswitch_data_2e

    .line 2278
    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2272
    :sswitch_17
    const/16 v1, 0x33

    invoke-static {v2, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    .line 2275
    :sswitch_21
    const/16 v1, 0x99

    const/16 v2, 0xcc

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    .line 2270
    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_17
        0x7 -> :sswitch_21
    .end sparse-switch
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 845
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private getWeatherText(I)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f090048

    const v4, 0x7f090044

    const v3, 0x7f090041

    const v2, 0x7f09003c

    const v1, 0x7f09003a

    .line 1707
    const-string v0, ""

    .line 1708
    packed-switch p1, :pswitch_data_1f4

    .line 1830
    :goto_14
    :pswitch_14
    return-object v0

    .line 1710
    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1713
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1716
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1719
    :pswitch_39
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1722
    :pswitch_42
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1725
    :pswitch_4e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1728
    :pswitch_57
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1731
    :pswitch_63
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1734
    :pswitch_6f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1737
    :pswitch_7b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1740
    :pswitch_87
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1743
    :pswitch_90
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1746
    :pswitch_9d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1749
    :pswitch_aa
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1752
    :pswitch_b4
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1755
    :pswitch_c1
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1758
    :pswitch_ce
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1761
    :pswitch_db
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1764
    :pswitch_e5
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1767
    :pswitch_f2
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1770
    :pswitch_ff
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1773
    :pswitch_10c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1776
    :pswitch_119
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1779
    :pswitch_126
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1782
    :pswitch_133
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1785
    :pswitch_140
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1788
    :pswitch_14d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1791
    :pswitch_15a
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1794
    :pswitch_167
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1797
    :pswitch_174
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1800
    :pswitch_181
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1803
    :pswitch_18e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1806
    :pswitch_198
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1809
    :pswitch_1a5
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1812
    :pswitch_1af
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1815
    :pswitch_1bc
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1818
    :pswitch_1c6
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1821
    :pswitch_1d3
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1824
    :pswitch_1dd
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1827
    :pswitch_1e7
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1708
    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_15
        :pswitch_21
        :pswitch_2d
        :pswitch_39
        :pswitch_42
        :pswitch_4e
        :pswitch_57
        :pswitch_63
        :pswitch_14
        :pswitch_14
        :pswitch_6f
        :pswitch_7b
        :pswitch_87
        :pswitch_90
        :pswitch_9d
        :pswitch_aa
        :pswitch_b4
        :pswitch_c1
        :pswitch_ce
        :pswitch_db
        :pswitch_e5
        :pswitch_f2
        :pswitch_ff
        :pswitch_10c
        :pswitch_119
        :pswitch_126
        :pswitch_14
        :pswitch_14
        :pswitch_133
        :pswitch_140
        :pswitch_14d
        :pswitch_15a
        :pswitch_167
        :pswitch_174
        :pswitch_181
        :pswitch_18e
        :pswitch_198
        :pswitch_1a5
        :pswitch_1af
        :pswitch_1bc
        :pswitch_1c6
        :pswitch_1d3
        :pswitch_1dd
        :pswitch_1e7
    .end packed-switch
.end method

.method private hideAllDialog()V
    .registers 2

    .prologue
    .line 1528
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->hideRefreshDialog()V

    .line 1529
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1533
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_18

    .line 1541
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 1545
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 1552
    :cond_15
    :goto_15
    return-void

    .line 1547
    :catch_16
    move-exception v0

    goto :goto_15

    .line 1535
    :catch_18
    move-exception v0

    goto :goto_c
.end method

.method private hideRefreshDialog()V
    .registers 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 1594
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 1602
    :cond_9
    :goto_9
    return-void

    .line 1596
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private insertSearchCityToDB()V
    .registers 10

    .prologue
    const v8, -0x10428

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x3e7

    .line 2008
    .line 2010
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v0

    if-nez v0, :cond_105

    .line 2013
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainDefaultLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_123

    move v0, v1

    .line 2017
    :goto_19
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 2018
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 2020
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertCity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;Z)I

    move-result v0

    .line 2021
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->checkResultCode(I)I

    move-result v0

    .line 2022
    if-ne v6, v0, :cond_3c

    .line 2024
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2025
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    .line 2104
    :goto_3b
    return-void

    .line 2031
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisterdToMainInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2033
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 2034
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->checkResultCode(I)I

    move-result v0

    .line 2035
    if-ne v6, v0, :cond_6e

    .line 2037
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2038
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    goto :goto_3b

    .line 2044
    :cond_59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 2045
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->checkResultCode(I)I

    move-result v0

    .line 2046
    if-ne v6, v0, :cond_6e

    .line 2048
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2049
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    goto :goto_3b

    .line 2056
    :cond_6e
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToDetailInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 2058
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 2059
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->checkResultCode(I)I

    move-result v0

    .line 2060
    if-ne v6, v0, :cond_8b

    .line 2062
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2063
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    goto :goto_3b

    .line 2066
    :cond_8b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2089
    :goto_96
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SearchDetailCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 2090
    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 2091
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2092
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2093
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2094
    invoke-static {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 2095
    const-string v1, "flags"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2096
    invoke-virtual {p0, v0, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3b

    .line 2070
    :cond_c1
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    move-result v0

    .line 2071
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->checkResultCode(I)I

    move-result v0

    .line 2072
    if-ne v6, v0, :cond_d7

    .line 2074
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2075
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    goto/16 :goto_3b

    .line 2079
    :cond_d7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 2081
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_96

    .line 2085
    :cond_f9
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_96

    .line 2102
    :cond_105
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3b

    :cond_123
    move v0, v2

    goto/16 :goto_19
.end method

.method private parseResponseAndSave2DB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "cityName"
    .parameter "location"
    .parameter "responseBody"

    .prologue
    const/4 v4, 0x0

    .line 2241
    :try_start_1
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    .line 2242
    .local v3, updateDate:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v2

    .line 2243
    .local v2, tempScaleSetting:I
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5, v2, v6, v3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v0

    .line 2245
    .local v0, detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForcastSize()I

    move-result v5

    if-lez v5, :cond_39

    .line 2247
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    .line 2248
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;-><init>(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    .line 2249
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->hideRefreshDialog()V

    .line 2250
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setUiWithDatabaseData(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3a

    .line 2251
    const/4 v4, 0x1

    .line 2258
    .end local v0           #detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .end local v2           #tempScaleSetting:I
    .end local v3           #updateDate:Ljava/lang/String;
    :cond_39
    :goto_39
    return v4

    .line 2255
    :catch_3a
    move-exception v1

    .line 2257
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private performNetworkAccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "cityName"
    .parameter "location"

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1483
    .local v4, headerGroup:Lorg/apache/http/message/HeaderGroup;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v7

    .line 1484
    .local v7, tempScaleSetting:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0, p2, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 1485
    .local v3, url:Ljava/net/URL;
    if-eqz v3, :cond_39

    .line 1487
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->showRefreshDialog()V

    .line 1489
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 1490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    .line 1492
    :cond_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$8;

    invoke-direct {v5, p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$8;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v6

    .line 1516
    .local v6, t:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    .end local v6           #t:Ljava/lang/Thread;
    :cond_39
    return-void
.end method

.method private setEventListener()V
    .registers 3

    .prologue
    .line 981
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$5;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    return-void
.end method

.method private setFlipper(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 884
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    if-eqz v0, :cond_5e

    .line 886
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 887
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 889
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 891
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getProvider()I

    move-result v0

    if-nez v0, :cond_5f

    .line 893
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :goto_3b
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 912
    if-nez p1, :cond_70

    .line 914
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_5e

    .line 917
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFlipperIndex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 933
    :cond_5e
    :goto_5e
    return-void

    .line 897
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 922
    :cond_70
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFlipperIndex(Ljava/lang/String;)Z

    goto :goto_5e
.end method

.method private setFlipperIndex(Ljava/lang/String;)Z
    .registers 4
    .parameter "selLocation"

    .prologue
    .line 941
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, location:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 944
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDataUsingFlipper()V

    .line 945
    const/4 v1, 0x1

    .line 948
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 828
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->keyBuf:Ljava/lang/String;

    .line 837
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 839
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->keyBuf:Ljava/lang/String;

    .line 841
    :cond_2c
    return-void

    .line 834
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 4
    .parameter

    .prologue
    .line 850
    const-string v0, "prefs_slog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 851
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 852
    const-string v1, "slog_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 853
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 855
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 856
    return-void
.end method

.method private setTodayWeatherImg(I)V
    .registers 5
    .parameter

    .prologue
    .line 1607
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1609
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findLayoutId(I)I

    move-result v1

    .line 1610
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1611
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1612
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1613
    return-void
.end method

.method private setWebLink()V
    .registers 3

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmorebtn:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$11;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$11;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1847
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmapbtn:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$12;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1924
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->OneDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$13;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$13;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1935
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->TwoDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$14;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$14;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1946
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->ThreeDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$15;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$15;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1957
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FourDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$16;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$16;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1968
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FiveDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$17;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$17;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1979
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SixDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$18;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$18;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    return-void
.end method

.method private showRefreshDialog()V
    .registers 3

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1559
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2c

    .line 1561
    const/16 v0, 0x3ef

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$9;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$9;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-static {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    .line 1571
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$10;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1582
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startUpdateAnimation()V

    .line 1583
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1586
    :cond_2c
    return-void
.end method

.method private startUpdateAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1085
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setEnabled(Z)V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 1089
    return-void
.end method

.method private stopHttpThread()V
    .registers 4

    .prologue
    .line 1116
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    .line 1118
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1120
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 1121
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    .line 1123
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Ljava/lang/Thread;
    :cond_22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    .line 1125
    :cond_25
    return-void
.end method

.method private stopRefreshAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1093
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_16

    .line 1095
    :cond_9
    const/4 v0, 0x5

    .line 1096
    :goto_a
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_16

    .line 1098
    :cond_12
    add-int/lit8 v1, v0, -0x1

    .line 1099
    if-gtz v1, :cond_2e

    .line 1105
    :cond_16
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    .line 1107
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setEnabled(Z)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 1112
    :cond_2d
    return-void

    .line 1100
    :cond_2e
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    .line 1101
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    move v0, v1

    goto :goto_a
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 8
    .parameter "bytes"

    .prologue
    const/16 v6, 0x10

    .line 1993
    if-nez p0, :cond_6

    .line 1994
    const/4 v5, 0x0

    .line 2002
    :goto_5
    return-object v5

    .line 1997
    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1998
    .local v4, result:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_29

    aget-byte v1, v0, v2

    .line 1999
    .local v1, b:B
    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2000
    and-int/lit8 v5, v1, 0xf

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1998
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2002
    .end local v1           #b:B
    :cond_29
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method


# virtual methods
.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    .line 518
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 519
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    .line 520
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->leftArrowImg:Landroid/widget/ImageView;

    .line 521
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->rightArrowImg:Landroid/widget/ImageView;

    .line 523
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    .line 524
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmorebtn:Landroid/widget/TextView;

    .line 525
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmapbtn:Landroid/widget/TextView;

    .line 527
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 528
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    .line 530
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayWeatherImg:Landroid/widget/ImageView;

    .line 531
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayWeatherImg:Landroid/widget/ImageView;

    .line 532
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayWeatherImg:Landroid/widget/ImageView;

    .line 533
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayWeatherImg:Landroid/widget/ImageView;

    .line 534
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayWeatherImg:Landroid/widget/ImageView;

    .line 535
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayWeatherImg:Landroid/widget/ImageView;

    .line 536
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayTempImg:Landroid/widget/ImageView;

    .line 538
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityListImgBtn:Landroid/widget/ImageView;

    .line 539
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherInfoText:Landroid/widget/TextView;

    .line 549
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->nowTempText:Landroid/widget/TextView;

    .line 550
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->lowTempText:Landroid/widget/TextView;

    .line 551
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->highTempText:Landroid/widget/TextView;

    .line 552
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayLowTempText:Landroid/widget/TextView;

    .line 553
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayHighTempText:Landroid/widget/TextView;

    .line 554
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayLowTempText:Landroid/widget/TextView;

    .line 555
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayHighTempText:Landroid/widget/TextView;

    .line 556
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayLowTempText:Landroid/widget/TextView;

    .line 557
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayHighTempText:Landroid/widget/TextView;

    .line 558
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayLowTempText:Landroid/widget/TextView;

    .line 559
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayHighTempText:Landroid/widget/TextView;

    .line 560
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    .line 561
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    .line 562
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayLowTempText:Landroid/widget/TextView;

    .line 563
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayHighTempText:Landroid/widget/TextView;

    .line 564
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->updateText:Landroid/widget/TextView;

    .line 565
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todaydateText:Landroid/widget/TextView;

    .line 566
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayDateText:Landroid/widget/TextView;

    .line 567
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayDateText:Landroid/widget/TextView;

    .line 568
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayDateText:Landroid/widget/TextView;

    .line 569
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayDateText:Landroid/widget/TextView;

    .line 570
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayDateText:Landroid/widget/TextView;

    .line 571
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayDateText:Landroid/widget/TextView;

    .line 573
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayText:Landroid/widget/TextView;

    .line 574
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayText:Landroid/widget/TextView;

    .line 575
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayText:Landroid/widget/TextView;

    .line 576
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayText:Landroid/widget/TextView;

    .line 577
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayText:Landroid/widget/TextView;

    .line 578
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayText:Landroid/widget/TextView;

    .line 583
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 584
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 586
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 587
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 589
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    .line 590
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 591
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mPopupDialog:Landroid/app/Dialog;

    .line 597
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 599
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSaveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 600
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSaveHandler:Landroid/os/Handler;

    .line 602
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    .line 604
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->OneDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->TwoDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->ThreeDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FourDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FiveDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SixDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    .line 611
    return-void
.end method

.method public deleteMe(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_d

    .line 1523
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1524
    :cond_d
    return-void
.end method

.method public getDataRefresh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "cityName"
    .parameter "location"

    .prologue
    const/4 v0, 0x0

    .line 1474
    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mNetworkRetryCount:I

    .line 1475
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRequestCanceled:Z

    .line 1477
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->performNetworkAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method public initWeatherClockView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 281
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayWeatherImg:Landroid/widget/ImageView;

    .line 288
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayWeatherImg:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayWeatherImg:Landroid/widget/ImageView;

    .line 290
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayWeatherImg:Landroid/widget/ImageView;

    .line 291
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayWeatherImg:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayWeatherImg:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayTempImg:Landroid/widget/ImageView;

    .line 303
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    .line 305
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todaydateText:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayDateText:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayDateText:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayDateText:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayDateText:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayDateText:Landroid/widget/TextView;

    .line 311
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayDateText:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->nowTempText:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->lowTempText:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->highTempText:Landroid/widget/TextView;

    .line 318
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayLowTempText:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayHighTempText:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayLowTempText:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayHighTempText:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayLowTempText:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayHighTempText:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayLowTempText:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayHighTempText:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayLowTempText:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayHighTempText:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayText:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayText:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayText:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayText:Landroid/widget/TextView;

    .line 335
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayText:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayText:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityListImgBtn:Landroid/widget/ImageView;

    .line 340
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b4

    .line 342
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityListImgBtn:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityListImgBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    :goto_1ce
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherInfoText:Landroid/widget/TextView;

    .line 370
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmorebtn:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmapbtn:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->summerTimeImg:Landroid/widget/ImageView;

    .line 376
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->OneDaySelect:Landroid/widget/LinearLayout;

    .line 377
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->TwoDaySelect:Landroid/widget/LinearLayout;

    .line 378
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->ThreeDaySelect:Landroid/widget/LinearLayout;

    .line 379
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FourDaySelect:Landroid/widget/LinearLayout;

    .line 380
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FiveDaySelect:Landroid/widget/LinearLayout;

    .line 381
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SixDaySelect:Landroid/widget/LinearLayout;

    .line 385
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->leftArrowImg:Landroid/widget/ImageView;

    .line 386
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->rightArrowImg:Landroid/widget/ImageView;

    .line 387
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    .line 388
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->updateText:Landroid/widget/TextView;

    .line 389
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    .line 395
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    .line 397
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityListImgBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFlipper(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setEventListener()V

    .line 402
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setWebLink()V

    .line 404
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 406
    return-void

    .line 354
    :cond_2b4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    const/16 v1, 0x5207

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1ce
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mIsVisible:Z

    return v0
.end method

.method makeFormatDate()Ljava/text/SimpleDateFormat;
    .registers 3

    .prologue
    .line 1319
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 1326
    :cond_12
    const-string v0, "mm-dd-yyyy"

    .line 1329
    :cond_14
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1331
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1338
    :goto_23
    return-object v0

    .line 1335
    :cond_24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_23
.end method

.method makeTodayDate(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1344
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1349
    :cond_17
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDefaultDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    :cond_1b
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    .line 1354
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x14

    invoke-static {v1, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    .line 1356
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090070

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1357
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090071

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1358
    const/4 v1, 0x0

    .line 1359
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 1360
    if-eqz v6, :cond_154

    .line 1361
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ja"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ko"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 1362
    :cond_73
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1364
    const-string v0, "%te%s %s %s%s%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v9

    aput-object v4, v1, v10

    aput-object v2, v1, v8

    const-string v2, "("

    aput-object v2, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    :goto_99
    return-object v0

    .line 1366
    :cond_9a
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1368
    const-string v0, "%s %te%s %s%s%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    const-string v2, "("

    aput-object v2, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    .line 1372
    :cond_c1
    const-string v0, "%s %te%s %s%s%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    const-string v2, "("

    aput-object v2, v1, v11

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x5

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    .line 1377
    :cond_e0
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 1380
    const-string v0, "%s %te%s %s"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    .line 1382
    :cond_fd
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1385
    const-string v0, "%s %s %te%s"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object v2, v1, v10

    aput-object p1, v1, v8

    aput-object v4, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    .line 1387
    :cond_11a
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 1389
    const-string v0, "%s %te%s %s"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object p1, v1, v10

    aput-object v4, v1, v8

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_99

    .line 1393
    :cond_138
    const-string v0, "%s %tY%s %s %te%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object p1, v1, v10

    aput-object v5, v1, v8

    aput-object v2, v1, v11

    aput-object p1, v1, v12

    const/4 v2, 0x5

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_99

    :cond_154
    move-object v0, v1

    goto/16 :goto_99
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v2, 0x3e7

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 2182
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2184
    if-ne v2, p2, :cond_10

    .line 2186
    invoke-virtual {p0, v2, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2187
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    .line 2235
    :cond_f
    :goto_f
    return-void

    .line 2191
    :cond_10
    const/16 v2, 0x5207

    if-ne p1, v2, :cond_27

    .line 2193
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v2

    if-nez v2, :cond_23

    .line 2195
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 2196
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    goto :goto_f

    .line 2201
    :cond_23
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_f

    .line 2204
    :cond_27
    const/16 v2, 0x55ef

    if-ne p1, v2, :cond_2f

    .line 2207
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_f

    .line 2209
    :cond_2f
    const/16 v2, 0x59d7

    if-ne p1, v2, :cond_3d

    .line 2211
    if-ne p2, v3, :cond_f

    .line 2213
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2215
    .local v1, location:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_f

    .line 2221
    .end local v1           #location:Ljava/lang/String;
    :cond_3d
    const/16 v2, 0x5dbf

    if-ne p1, v2, :cond_f

    .line 2223
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2224
    .local v0, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_54

    .line 2226
    :cond_50
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    goto :goto_f

    .line 2231
    :cond_54
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 421
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setContentView(I)V

    .line 422
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setActivityVisibleState(Z)V

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->initWeatherClockView()V

    .line 427
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 429
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startUpdateAnimation()V

    .line 432
    :cond_1f
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z

    .line 434
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 436
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocusFromTouch()Z

    .line 439
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "bundel"

    .prologue
    const/4 v9, 0x1

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const v6, 0x7f03002b

    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setContentView(I)V

    .line 195
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 196
    iput-object p0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SearchDetailCtx:Landroid/content/Context;

    .line 199
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mDecryptKey:Ljava/security/Key;

    if-nez v6, :cond_1b

    .line 201
    :try_start_13
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->KEYDATA:[B

    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/common/LocalSecurity;->generateKey([B)Ljava/security/Key;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mDecryptKey:Ljava/security/Key;
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_13 .. :try_end_1b} :catch_125
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_1b} :catch_12f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_13 .. :try_end_1b} :catch_139

    .line 212
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "flags"

    const/16 v8, -0x3e7

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->flag:I

    .line 214
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 217
    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setActivityVisibleState(Z)V

    .line 219
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 220
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 221
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 222
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 225
    :try_start_58
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 226
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_8a

    .line 228
    const-string v6, "cityInfo"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 229
    const-string v6, "todayInfo"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    .line 230
    const-string v6, "forcastList"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->forcastList:Ljava/util/ArrayList;

    .line 231
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_8a} :catch_170

    .line 238
    .end local v5           #intent:Landroid/content/Intent;
    :cond_8a
    :goto_8a
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    .line 239
    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    invoke-direct {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    .line 240
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getCurrentTemp()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setCurrentTemp(F)V

    .line 241
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getHighTemp()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setHighTemp(F)V

    .line 243
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getIconNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setIconNum(I)V

    .line 244
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getLowTemp()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setLowTemp(F)V

    .line 245
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setTempScale(I)V

    .line 246
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setTimeZone(Ljava/lang/String;)V

    .line 247
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 248
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 249
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getWeatherText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setWeatherText(Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->tempToday:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V

    .line 253
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->forcastList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_113
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_143

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    .line 255
    .local v3, g:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-virtual {v6, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    goto :goto_113

    .line 202
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #g:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_125
    move-exception v1

    .line 203
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v6, ""

    const-string v7, "InvalidKeyException"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 204
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_12f
    move-exception v1

    .line 205
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, ""

    const-string v7, "NoSuchAlgorithmException"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 206
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_139
    move-exception v1

    .line 207
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v6, ""

    const-string v7, "InvalidKeySpecException"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 258
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_143
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 259
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 260
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_156

    .line 261
    const-string v6, "appWidgetId"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I

    .line 264
    :cond_156
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->initWeatherClockView()V

    .line 266
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 267
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 268
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 269
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->requestFocusFromTouch()Z

    .line 271
    iput-boolean v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z

    .line 274
    return-void

    .line 234
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_170
    move-exception v6

    goto/16 :goto_8a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 681
    packed-switch p1, :pswitch_data_10e

    .line 798
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 684
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 685
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 686
    const v0, 0x7f0c0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    .line 688
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 690
    const v0, 0x7f0c0012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;

    .line 691
    const v0, 0x7f0c0017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogEdit:Landroid/widget/EditText;

    .line 692
    sget v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogState:I

    .line 693
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 695
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 716
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$2;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 699
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 705
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0015

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 711
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 681
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 695
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 499
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setActivityVisibleState(Z)V

    .line 500
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->hideAllDialog()V

    .line 501
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->stopHttpThread()V

    .line 503
    const-string v0, "config"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    const-string v1, "NETWORK_TRY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cleanResource()V

    .line 509
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 618
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> KD <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 624
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 626
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->showDialog(I)V

    .line 627
    const-string v0, ""

    invoke-direct {p0, v0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 632
    :cond_37
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z

    if-ne v0, v4, :cond_52

    const/16 v0, 0x13

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x16

    if-ne p1, v0, :cond_52

    .line 637
    :cond_4b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFocusables(Ljava/lang/Boolean;)V

    .line 640
    :cond_52
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c001c

    const/4 v1, 0x1

    .line 647
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z

    if-ne v0, v1, :cond_3c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_18

    const/16 v0, 0x14

    if-eq p1, v0, :cond_18

    const/16 v0, 0x15

    if-eq p1, v0, :cond_18

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3c

    .line 652
    :cond_18
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 653
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 654
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setFocusables(Ljava/lang/Boolean;)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setLanddirection:Z

    .line 660
    :cond_3c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 2109
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2110
    const-string v0, ""

    const-string v1, "onNewIntent 2"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const v6, 0x80e7

    const/16 v5, 0x5dbf

    const/16 v4, 0x5207

    const/4 v0, 0x1

    .line 2141
    .line 2142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_8e

    .line 2177
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 2145
    :pswitch_11
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2146
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2147
    const-string v2, "flags"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2148
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 2152
    :pswitch_28
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2153
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2154
    const-string v2, "flags"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2155
    invoke-virtual {p0, v1, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 2159
    :pswitch_3f
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2160
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 2161
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2162
    const-string v2, "selCityName"

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2163
    const/16 v2, 0x55ef

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 2167
    :pswitch_73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->insertSearchCityToDB()V

    goto :goto_10

    .line 2171
    :pswitch_77
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2172
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2173
    const-string v2, "flags"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2174
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 2142
    :pswitch_data_8e
    .packed-switch 0x7f0c00c4
        :pswitch_73
        :pswitch_77
        :pswitch_11
        :pswitch_28
        :pswitch_3f
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->flag:I

    const v1, 0xf22f

    if-ne v0, v1, :cond_29

    .line 461
    const-string v0, ""

    const-string v1, "SearchDetail Die !!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    const/16 v1, 0x5207

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 467
    :cond_29
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setActivityVisibleState(Z)V

    .line 468
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 469
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2117
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2119
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2120
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2129
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2131
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    .line 2133
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2134
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2136
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 473
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 476
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    if-nez v0, :cond_1c

    .line 478
    const-string v0, ""

    const-string v1, "Don`t have Data in DB so finish!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setResult(ILandroid/content/Intent;)V

    .line 480
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->finish()V

    .line 484
    :cond_1c
    const-string v0, "config"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    const-string v1, "NETWORK_TRY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->NETWORK_TRY:Z

    .line 486
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setActivityVisibleState(Z)V

    .line 487
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 489
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDataFomat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 491
    invoke-static {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDataFomat(Landroid/content/Context;Z)Z

    .line 492
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setUiWithDatabaseData(Ljava/lang/String;)V

    .line 494
    :cond_3e
    return-void
.end method

.method public overridePendingTransition(II)V
    .registers 3
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 2299
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2300
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mIsVisible:Z

    .line 416
    return-void
.end method

.method public setFocusables(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 666
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->OneDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 667
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->TwoDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 668
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->ThreeDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 669
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FourDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 670
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FiveDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 671
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SixDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 672
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityListImgBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 673
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmorebtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 674
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailmapbtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 675
    return-void
.end method

.method public setUiWithDatabaseData(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getProvider()I

    move-result v0

    if-nez v0, :cond_6f2

    .line 1133
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->cityInfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v0

    .line 1146
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    if-eqz v1, :cond_6f1

    .line 1150
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->url:Ljava/lang/String;

    .line 1152
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 1153
    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 1157
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1160
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todaydateText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->makeTodayDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getIconNum()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->setTodayWeatherImg(I)V

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090034

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDateTimeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->updateText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->nowTempText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getCurrentTemp()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->highTempText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getHighTemp()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->lowTempText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getLowTemp()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherInfoText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getIconNum()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getWeatherText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->makeFormatDate()Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 1182
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1187
    const-string v4, "%te"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1190
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1193
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayText:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayWeatherImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1196
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayHighTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayLowTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->onedayurl:Ljava/lang/String;

    .line 1202
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1203
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1205
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayText:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayWeatherImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1208
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayHighTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayLowTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twodayurl:Ljava/lang/String;

    .line 1214
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1215
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1217
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayText:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayWeatherImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1220
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayHighTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayLowTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threedayurl:Ljava/lang/String;

    .line 1226
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1227
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1229
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayText:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayWeatherImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1232
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayHighTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayLowTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourdayurl:Ljava/lang/String;

    .line 1237
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1238
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1240
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayText:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayWeatherImg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1243
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fivedayurl:Ljava/lang/String;

    .line 1248
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1249
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1251
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayText:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayWeatherImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1254
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayHighTempText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v2

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayLowTempText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->getTempScale()I

    move-result v2

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixdayurl:Ljava/lang/String;

    .line 1258
    if-nez v0, :cond_704

    .line 1260
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayTempImg:Landroid/widget/ImageView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1268
    :goto_372
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todaydateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->weatherInfoText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1273
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->nowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1275
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->highTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->lowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1281
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->OneDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->oneDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->TwoDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->twoDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->ThreeDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->threeDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1293
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FourDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fourDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->FiveDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SixDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->sixDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_6f1
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_6f1} :catch_70e

    .line 1315
    :cond_6f1
    :goto_6f1
    return-void

    .line 1137
    :cond_6f2
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->detailstateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1264
    :cond_704
    :try_start_704
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->todayTempImg:Landroid/widget/ImageView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_70c
    .catch Ljava/lang/Exception; {:try_start_704 .. :try_end_70c} :catch_70e

    goto/16 :goto_372

    .line 1310
    :catch_70e
    move-exception v0

    .line 1313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f1
.end method

.method setViewUri(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 960
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    .line 961
    const/4 v0, 0x0

    .line 963
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    if-nez v2, :cond_11

    .line 964
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-direct {v2, p1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 967
    :cond_11
    const-string v2, "DETAIL_HOME"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    if-nez p3, :cond_28

    .line 968
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getLanguageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeQuickViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 976
    :cond_27
    :goto_27
    return-object v0

    .line 970
    :cond_28
    const-string v2, "DETAIL_MORE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    if-nez p3, :cond_3f

    .line 971
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getLanguageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeMoreViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_27

    .line 973
    :cond_3f
    const-string v2, "DETAIL_DAY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 974
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getLanguageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeDetailViewUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_27
.end method
