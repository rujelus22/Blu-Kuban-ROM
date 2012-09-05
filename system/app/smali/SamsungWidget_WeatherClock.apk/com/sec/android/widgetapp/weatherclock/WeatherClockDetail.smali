.class public Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;
.super Landroid/app/Activity;
.source "WeatherClockDetail.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    }
.end annotation


# static fields
.field public static EVENT_FLAG:Z

.field static NETWORK_TRY:Z

.field static POPUP_IS_ON:Z

.field public static detailContext:Landroid/app/Activity;

.field private static eventRegions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;

.field static offset:I


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field cities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cityListImgBtn:Landroid/widget/ImageView;

.field private citySelectText:Landroid/widget/TextView;

.field private citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

.field private dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field private detail_focus:Landroid/widget/RelativeLayout;

.field private detailmapbtn:Landroid/widget/TextView;

.field private detailmorebtn:Landroid/widget/TextView;

.field private detailstateText:Landroid/widget/TextView;

.field private downXPoint:F

.field private downYPoint:F

.field private exitFlag:Z

.field private fiveDayDateText:Landroid/widget/TextView;

.field private fiveDayHighTempText:Landroid/widget/TextView;

.field private fiveDayLowTempText:Landroid/widget/TextView;

.field public fiveDaySelect:Landroid/widget/LinearLayout;

.field private fiveDayText:Landroid/widget/TextView;

.field private fiveDayWeatherImg:Landroid/widget/ImageView;

.field public fivedayurl:Ljava/lang/String;

.field private forceClosing:Z

.field private fourDayDateText:Landroid/widget/TextView;

.field private fourDayHighTempText:Landroid/widget/TextView;

.field private fourDayLowTempText:Landroid/widget/TextView;

.field public fourDaySelect:Landroid/widget/LinearLayout;

.field private fourDayText:Landroid/widget/TextView;

.field private fourDayWeatherImg:Landroid/widget/ImageView;

.field public fourdayurl:Ljava/lang/String;

.field private gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

.field private highTempText:Landroid/widget/TextView;

.field private httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

.field httpHandler:Landroid/os/Handler;

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

.field private mPopupDialog:Landroid/app/Dialog;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRefreshDialog:Landroid/app/Dialog;

.field private volatile mRequestCanceled:Z

.field private mSaveHandler:Landroid/os/Handler;

.field private mSelectId:I

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

.field private mUpdateBtn:Landroid/widget/ImageView;

.field private mUpdateFlipper:Landroid/widget/ViewFlipper;

.field mapHandler:Landroid/os/Handler;

.field mapLocation:Ljava/lang/String;

.field mapitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

.field mapweather:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nowTempText:Landroid/widget/TextView;

.field private oneDayDateText:Landroid/widget/TextView;

.field private oneDayHighTempText:Landroid/widget/TextView;

.field private oneDayLowTempText:Landroid/widget/TextView;

.field public oneDaySelect:Landroid/widget/LinearLayout;

.field private oneDayText:Landroid/widget/TextView;

.field private oneDayWeatherImg:Landroid/widget/ImageView;

.field public onedayurl:Ljava/lang/String;

.field private parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

.field public performMapCancled:Z

.field private rightArrowImg:Landroid/widget/ImageView;

.field private selLocation:Ljava/lang/String;

.field private setChangeddirection:Z

.field private setLanddirection:Z

.field private sixDayDateText:Landroid/widget/TextView;

.field private sixDayHighTempText:Landroid/widget/TextView;

.field private sixDayLowTempText:Landroid/widget/TextView;

.field public sixDaySelect:Landroid/widget/LinearLayout;

.field private sixDayText:Landroid/widget/TextView;

.field private sixDayWeatherImg:Landroid/widget/ImageView;

.field public sixdayurl:Ljava/lang/String;

.field syncstamp:J

.field private tempscale:I

.field private threeDayDateText:Landroid/widget/TextView;

.field private threeDayHighTempText:Landroid/widget/TextView;

.field private threeDayLowTempText:Landroid/widget/TextView;

.field public threeDaySelect:Landroid/widget/LinearLayout;

.field private threeDayText:Landroid/widget/TextView;

.field private threeDayWeatherImg:Landroid/widget/ImageView;

.field public threedayurl:Ljava/lang/String;

.field private todayTempImg:Landroid/widget/ImageView;

.field private todaydateText:Landroid/widget/TextView;

.field private twoDayDateText:Landroid/widget/TextView;

.field private twoDayHighTempText:Landroid/widget/TextView;

.field private twoDayLowTempText:Landroid/widget/TextView;

.field public twoDaySelect:Landroid/widget/LinearLayout;

.field private twoDayText:Landroid/widget/TextView;

.field private twoDayWeatherImg:Landroid/widget/ImageView;

.field public twodayurl:Ljava/lang/String;

.field private upXPoint:F

.field private upYPoint:F

.field private updateText:Landroid/widget/TextView;

.field private updateTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

.field views:[Landroid/widget/FrameLayout;

.field private weatherIdx:I

.field private weatherInfoText:Landroid/widget/TextView;

.field private weatherTodayImgLayout:Landroid/widget/FrameLayout;

.field private weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    const/4 v2, 0x0

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailContext:Landroid/app/Activity;

    .line 152
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->keyBuf:Ljava/lang/String;

    .line 153
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

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mappingKey:Ljava/lang/String;

    .line 165
    sput v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogState:I

    .line 176
    sput-boolean v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->POPUP_IS_ON:Z

    .line 177
    sput-boolean v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->NETWORK_TRY:Z

    .line 546
    sput-boolean v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->EVENT_FLAG:Z

    .line 562
    sput v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->offset:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->downXPoint:F

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->downYPoint:F

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->upXPoint:F

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->upYPoint:F

    .line 133
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    .line 134
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 135
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mPopupDialog:Landroid/app/Dialog;

    .line 141
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->exitFlag:Z

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->onedayurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twodayurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threedayurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourdayurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fivedayurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixdayurl:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogText:Landroid/widget/TextView;

    .line 163
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    .line 164
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogEdit:Landroid/widget/EditText;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    .line 172
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z

    .line 173
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mIsVisible:Z

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSaveHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    .line 180
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 181
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 182
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    .line 183
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherIdx:I

    .line 187
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    .line 189
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->forceClosing:Z

    .line 193
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setChangeddirection:Z

    .line 194
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    .line 989
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1468
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->httpHandler:Landroid/os/Handler;

    .line 1889
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    .line 1916
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    .line 2620
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dataUpdate()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->parseResponseAndSave2DB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->stopHttpThread()V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->stopRefreshAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->showRefreshDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCities()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;)Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateMainWeatherInfoTable(Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 103
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogState:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    sput p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogState:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setSLog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static checkEventRegion(Landroid/view/MotionEvent;Z)V
    .registers 9
    .parameter "e"
    .parameter "click"

    .prologue
    .line 565
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    if-eqz v5, :cond_5d

    .line 567
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 568
    .local v3, x:F
    const/4 v4, 0x0

    .line 570
    .local v4, y:F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sget v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->offset:I

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 572
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 574
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 577
    .local v2, v:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 578
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 583
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1c

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1c

    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_1c

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_1c

    .line 585
    if-eqz p1, :cond_5e

    .line 587
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 588
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-interface {v5, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 597
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v1           #r:Landroid/graphics/Rect;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_5d
    return-void

    .line 593
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .restart local v1       #r:Landroid/graphics/Rect;
    .restart local v2       #v:Landroid/view/View;
    .restart local v3       #x:F
    .restart local v4       #y:F
    :cond_5e
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1c
.end method

.method public static checkEventRegion(Landroid/view/View;Z)Z
    .registers 9
    .parameter "view"
    .parameter "click"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 600
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    if-eqz v6, :cond_3d

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 603
    .local v0, eventId:I
    sget-object v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 605
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 607
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 608
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v2

    .line 610
    .local v2, tempId:I
    if-ne v2, v0, :cond_14

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 612
    if-eqz p1, :cond_3e

    .line 614
    invoke-virtual {v3, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 615
    sget-object v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-interface {v4, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_3c
    move v4, v5

    .line 624
    .end local v0           #eventId:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v2           #tempId:I
    .end local v3           #v:Landroid/view/View;
    :cond_3d
    return v4

    .line 618
    .restart local v0       #eventId:I
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .restart local v2       #tempId:I
    .restart local v3       #v:Landroid/view/View;
    :cond_3e
    invoke-virtual {v3, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3c
.end method

.method private dataUpdate()V
    .registers 2

    .prologue
    .line 1050
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1052
    const v0, 0x7f09001e

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 1057
    :goto_c
    return-void

    .line 1056
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getDataRefresh(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private findLayoutId(I)I
    .registers 3
    .parameter

    .prologue
    const v0, 0x7f030008

    .line 1674
    packed-switch p1, :pswitch_data_54

    .line 1737
    :goto_6
    :pswitch_6
    return v0

    .line 1682
    :pswitch_7
    const v0, 0x7f030009

    goto :goto_6

    .line 1686
    :pswitch_b
    const v0, 0x7f03000a

    goto :goto_6

    .line 1688
    :pswitch_f
    const v0, 0x7f03000b

    goto :goto_6

    .line 1693
    :pswitch_13
    const v0, 0x7f03000c

    goto :goto_6

    .line 1695
    :pswitch_17
    const v0, 0x7f03000d

    goto :goto_6

    .line 1699
    :pswitch_1b
    const v0, 0x7f03000e

    goto :goto_6

    .line 1702
    :pswitch_1f
    const v0, 0x7f03000f

    goto :goto_6

    .line 1704
    :pswitch_23
    const v0, 0x7f030010

    goto :goto_6

    .line 1707
    :pswitch_27
    const v0, 0x7f030011

    goto :goto_6

    .line 1710
    :pswitch_2b
    const v0, 0x7f030012

    goto :goto_6

    .line 1714
    :pswitch_2f
    const v0, 0x7f030013

    goto :goto_6

    .line 1718
    :pswitch_33
    const v0, 0x7f030014

    goto :goto_6

    .line 1720
    :pswitch_37
    const v0, 0x7f030015

    goto :goto_6

    .line 1722
    :pswitch_3b
    const v0, 0x7f030016

    goto :goto_6

    .line 1724
    :pswitch_3f
    const v0, 0x7f030017

    goto :goto_6

    .line 1726
    :pswitch_43
    const v0, 0x7f030018

    goto :goto_6

    .line 1728
    :pswitch_47
    const v0, 0x7f030019

    goto :goto_6

    .line 1733
    :pswitch_4b
    const v0, 0x7f03001a

    goto :goto_6

    .line 1735
    :pswitch_4f
    const v0, 0x7f03001b

    goto :goto_6

    .line 1674
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

    .line 2592
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 2593
    .local v0, sDayOfWeek:Ljava/lang/String;
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2594
    sparse-switch p2, :sswitch_data_2e

    .line 2602
    :goto_12
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2596
    :sswitch_17
    const/16 v1, 0x33

    invoke-static {v2, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    .line 2599
    :sswitch_21
    const/16 v1, 0x99

    const/16 v2, 0xcc

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    .line 2594
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
    .line 1033
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->keyBuf:Ljava/lang/String;

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

    .line 1763
    const-string v0, ""

    .line 1764
    packed-switch p1, :pswitch_data_1f4

    .line 1886
    :goto_14
    :pswitch_14
    return-object v0

    .line 1766
    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1769
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1772
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1775
    :pswitch_39
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1778
    :pswitch_42
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1781
    :pswitch_4e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1784
    :pswitch_57
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1787
    :pswitch_63
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1790
    :pswitch_6f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1793
    :pswitch_7b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1796
    :pswitch_87
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 1799
    :pswitch_90
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1802
    :pswitch_9d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1805
    :pswitch_aa
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1808
    :pswitch_b4
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1811
    :pswitch_c1
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1814
    :pswitch_ce
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1817
    :pswitch_db
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1820
    :pswitch_e5
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1823
    :pswitch_f2
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1826
    :pswitch_ff
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1829
    :pswitch_10c
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1832
    :pswitch_119
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1835
    :pswitch_126
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1838
    :pswitch_133
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1841
    :pswitch_140
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1844
    :pswitch_14d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1847
    :pswitch_15a
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1850
    :pswitch_167
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1853
    :pswitch_174
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1856
    :pswitch_181
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1859
    :pswitch_18e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1862
    :pswitch_198
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1865
    :pswitch_1a5
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1868
    :pswitch_1af
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1871
    :pswitch_1bc
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1874
    :pswitch_1c6
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1877
    :pswitch_1d3
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1880
    :pswitch_1dd
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1883
    :pswitch_1e7
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1764
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
    .line 1579
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V

    .line 1580
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1584
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_18

    .line 1592
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_15

    .line 1596
    :try_start_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 1603
    :cond_15
    :goto_15
    return-void

    .line 1598
    :catch_16
    move-exception v0

    goto :goto_15

    .line 1586
    :catch_18
    move-exception v0

    goto :goto_c
.end method

.method private hideRefreshDialog()V
    .registers 2

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1651
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_d

    .line 1657
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    .line 1659
    :cond_c
    return-void

    .line 1653
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private parseResponseAndSave2DB(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "location"
    .parameter "responseBody"

    .prologue
    .line 2506
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    .line 2507
    .local v2, updateDate:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v1

    .line 2508
    .local v1, tempScaleSetting:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v1, v4, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v0

    .line 2510
    .local v0, detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    if-eqz v0, :cond_28

    .line 2512
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSaveHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;

    invoke-direct {v4, p0, p1, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$26;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2550
    const/4 v3, 0x1

    .line 2553
    :goto_27
    return v3

    :cond_28
    const/4 v3, 0x0

    goto :goto_27
.end method

.method private performMapCities()V
    .registers 9

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 1922
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    const v1, -0x13d30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1924
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->syncstamp:J

    .line 1926
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->syncstamp:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;ZJ)V

    .line 1928
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1930
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    .line 1931
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1935
    :cond_2d
    :goto_2d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ab

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    if-nez v1, :cond_ab

    .line 1937
    const-string v2, ""

    .line 1938
    const/16 v1, 0x1f

    move-object v3, v2

    move v2, v1

    .line 1939
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    if-lez v2, :cond_80

    .line 1941
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1942
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 1943
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1944
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 1945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1946
    :cond_7c
    add-int/lit8 v2, v2, -0x1

    move-object v3, v1

    .line 1947
    goto :goto_3d

    .line 1949
    :cond_80
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetMultiData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 1950
    if-eqz v3, :cond_2d

    .line 1952
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v1, :cond_95

    .line 1953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    .line 1955
    :cond_95
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v1

    .line 2090
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 2093
    :cond_ab
    return-void
.end method

.method private performNetworkAccess(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v4

    .line 1530
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v0

    .line 1531
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeUrlForGetDetailData(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v3

    .line 1532
    if-eqz v3, :cond_43

    .line 1535
    const-string v0, ""

    const-string v1, "url have URL data!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->startUpdateAnimation()V

    .line 1537
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->showRefreshDialog()V

    .line 1539
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    if-nez v0, :cond_2c

    .line 1540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    .line 1542
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v0

    .line 1564
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    :cond_43
    return-void
.end method

.method private setEventListener()V
    .registers 3

    .prologue
    .line 1083
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$6;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$6;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$7;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    return-void
.end method

.method private setFlipper(Ljava/lang/String;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 2488
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2d

    .line 2490
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 2492
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 2493
    .local v1, item:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2495
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    if-eqz v2, :cond_28

    .line 2496
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSelection(I)V

    .line 2490
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2499
    .end local v1           #item:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    :cond_2b
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    .line 2501
    .end local v0           #i:I
    :cond_2d
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 1016
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->keyBuf:Ljava/lang/String;

    .line 1025
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 1027
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->keyBuf:Ljava/lang/String;

    .line 1029
    :cond_2c
    return-void

    .line 1022
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 4
    .parameter

    .prologue
    .line 1038
    const-string v0, "prefs_slog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1039
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1040
    const-string v1, "slog_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1041
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1043
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 1044
    return-void
.end method

.method private setTodayWeatherImg(I)V
    .registers 5
    .parameter

    .prologue
    .line 1663
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1665
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findLayoutId(I)I

    move-result v1

    .line 1666
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1667
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1668
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1669
    return-void
.end method

.method private setWebLink()V
    .registers 3

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmorebtn:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$14;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$14;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2110
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmapbtn:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$15;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2163
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cityListImgBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$16;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$16;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2176
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$17;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$17;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setOnClickRegion(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 2188
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    if-eqz v0, :cond_36

    .line 2190
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$18;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$18;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->post(Ljava/lang/Runnable;)Z

    .line 2205
    :cond_36
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$19;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$19;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setOnClickRegion(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 2216
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$20;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$20;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setOnClickRegion(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 2227
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$21;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$21;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setOnClickRegion(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 2238
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$22;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$22;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setOnClickRegion(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 2249
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$23;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$23;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setOnClickRegion(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 2259
    return-void
.end method

.method private showRefreshDialog()V
    .registers 3

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1608
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1610
    const-string v0, ""

    const-string v1, "shwRfrDlg@Visible"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    if-nez v0, :cond_36

    .line 1615
    const/16 v0, 0x3ef

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$10;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$10;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-static {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    .line 1625
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$11;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1640
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1643
    :cond_36
    return-void
.end method

.method private startUpdateAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1122
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1123
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 1126
    return-void
.end method

.method private stopHttpThread()V
    .registers 4

    .prologue
    .line 1152
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    .line 1154
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1156
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

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

    .line 1157
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_12

    .line 1159
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Ljava/lang/Thread;
    :cond_22
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    .line 1161
    :cond_25
    return-void
.end method

.method private stopRefreshAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1130
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_16

    .line 1132
    :cond_9
    const/4 v0, 0x5

    .line 1133
    .local v0, temp_seq:I
    :goto_a
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_16

    .line 1135
    :cond_12
    add-int/lit8 v0, v0, -0x1

    .line 1136
    if-gtz v0, :cond_2e

    .line 1142
    .end local v0           #temp_seq:I
    :cond_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_2d

    .line 1144
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setEnabled(Z)V

    .line 1145
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1146
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 1148
    :cond_2d
    return-void

    .line 1137
    .restart local v0       #temp_seq:I
    :cond_2e
    const v1, 0x7f0c0022

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    .line 1138
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    goto :goto_a
.end method

.method private updateMainWeatherInfoTable(Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;Ljava/lang/String;)V
    .registers 4
    .parameter "info"
    .parameter "location"

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, p2, p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    .line 2589
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 640
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    if-eqz v1, :cond_19

    .line 642
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 643
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 644
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->views:[Landroid/widget/FrameLayout;

    aput-object v2, v1, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 647
    .end local v0           #i:I
    :cond_19
    sput-object v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    .line 662
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_26

    .line 664
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    .line 671
    :cond_26
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDaySelect:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2f

    .line 672
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDaySelect:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_38

    .line 675
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    :cond_38
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDaySelect:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_41

    .line 678
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    :cond_41
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDaySelect:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4a

    .line 680
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDaySelect:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_53

    .line 682
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    :cond_53
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDaySelect:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5c

    .line 684
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    :cond_5c
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    if-eqz v1, :cond_67

    .line 688
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 689
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    .line 692
    :cond_67
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 694
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_74

    .line 696
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 697
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    .line 699
    :cond_74
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->leftArrowImg:Landroid/widget/ImageView;

    .line 700
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->rightArrowImg:Landroid/widget/ImageView;

    .line 702
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    .line 703
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmorebtn:Landroid/widget/TextView;

    .line 704
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmapbtn:Landroid/widget/TextView;

    .line 706
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_89

    .line 708
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 709
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    .line 712
    :cond_89
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayWeatherImg:Landroid/widget/ImageView;

    .line 713
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayWeatherImg:Landroid/widget/ImageView;

    .line 714
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayWeatherImg:Landroid/widget/ImageView;

    .line 715
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayWeatherImg:Landroid/widget/ImageView;

    .line 716
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayWeatherImg:Landroid/widget/ImageView;

    .line 717
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayWeatherImg:Landroid/widget/ImageView;

    .line 718
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todayTempImg:Landroid/widget/ImageView;

    .line 720
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cityListImgBtn:Landroid/widget/ImageView;

    .line 721
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherInfoText:Landroid/widget/TextView;

    .line 731
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->nowTempText:Landroid/widget/TextView;

    .line 732
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->lowTempText:Landroid/widget/TextView;

    .line 733
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->highTempText:Landroid/widget/TextView;

    .line 734
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayLowTempText:Landroid/widget/TextView;

    .line 735
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayHighTempText:Landroid/widget/TextView;

    .line 736
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayLowTempText:Landroid/widget/TextView;

    .line 737
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayHighTempText:Landroid/widget/TextView;

    .line 738
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayLowTempText:Landroid/widget/TextView;

    .line 739
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayHighTempText:Landroid/widget/TextView;

    .line 740
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayLowTempText:Landroid/widget/TextView;

    .line 741
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayHighTempText:Landroid/widget/TextView;

    .line 742
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    .line 743
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    .line 744
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayLowTempText:Landroid/widget/TextView;

    .line 745
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayHighTempText:Landroid/widget/TextView;

    .line 746
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateText:Landroid/widget/TextView;

    .line 747
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todaydateText:Landroid/widget/TextView;

    .line 748
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayDateText:Landroid/widget/TextView;

    .line 749
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayDateText:Landroid/widget/TextView;

    .line 750
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayDateText:Landroid/widget/TextView;

    .line 751
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayDateText:Landroid/widget/TextView;

    .line 752
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayDateText:Landroid/widget/TextView;

    .line 753
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayDateText:Landroid/widget/TextView;

    .line 755
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayText:Landroid/widget/TextView;

    .line 756
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayText:Landroid/widget/TextView;

    .line 757
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayText:Landroid/widget/TextView;

    .line 758
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayText:Landroid/widget/TextView;

    .line 759
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayText:Landroid/widget/TextView;

    .line 760
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayText:Landroid/widget/TextView;

    .line 765
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 766
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 768
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citydb:Lcom/sec/android/widgetapp/weatherclock/db/CityDBHelper;

    .line 770
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 771
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 773
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRefreshDialog:Landroid/app/Dialog;

    .line 774
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mNetworkErrorDialog:Landroid/app/Dialog;

    .line 775
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mPopupDialog:Landroid/app/Dialog;

    .line 781
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 783
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSaveHandler:Landroid/os/Handler;

    if-eqz v1, :cond_f5

    .line 785
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSaveHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 786
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSaveHandler:Landroid/os/Handler;

    .line 789
    :cond_f5
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    .line 790
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    if-eqz v1, :cond_102

    .line 792
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 793
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    .line 796
    :cond_102
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    .line 797
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 798
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;

    .line 799
    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    .line 800
    return-void
.end method

.method public deleteMe(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 1572
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 1573
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1575
    :cond_11
    return-void
.end method

.method public getDataRefresh(Ljava/lang/String;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 1522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z

    .line 1524
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performNetworkAccess(Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method public initWeatherClockView(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const v1, 0x7f0c002f

    const v0, 0x7f0c002e

    const/4 v3, 0x1

    .line 287
    if-eqz p1, :cond_25f

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citySelectText:Landroid/widget/TextView;

    .line 290
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailstateText:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f0c0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayWeatherImg:Landroid/widget/ImageView;

    .line 293
    const v0, 0x7f0c0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayWeatherImg:Landroid/widget/ImageView;

    .line 294
    const v0, 0x7f0c004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayWeatherImg:Landroid/widget/ImageView;

    .line 295
    const v0, 0x7f0c004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayWeatherImg:Landroid/widget/ImageView;

    .line 296
    const v0, 0x7f0c004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayWeatherImg:Landroid/widget/ImageView;

    .line 297
    const v0, 0x7f0c004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayWeatherImg:Landroid/widget/ImageView;

    .line 303
    const v0, 0x7f0c0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todayTempImg:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f0c002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherTodayImgLayout:Landroid/widget/FrameLayout;

    .line 310
    const v0, 0x7f0c0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todaydateText:Landroid/widget/TextView;

    .line 311
    const v0, 0x7f0c0042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayDateText:Landroid/widget/TextView;

    .line 312
    const v0, 0x7f0c0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayDateText:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0c0044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayDateText:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f0c0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayDateText:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f0c0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayDateText:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f0c0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayDateText:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f0c0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->nowTempText:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f0c0037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->lowTempText:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f0c0035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->highTempText:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f0c005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayLowTempText:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f0c004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayHighTempText:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0c005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayLowTempText:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f0c0050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayHighTempText:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f0c005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayLowTempText:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f0c0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayHighTempText:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f0c0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayLowTempText:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f0c0054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayHighTempText:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0c0062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f0c0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0c0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayLowTempText:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0c0058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayHighTempText:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f0c003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayText:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f0c003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayText:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f0c003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayText:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f0c003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayText:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f0c0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayText:Landroid/widget/TextView;

    .line 341
    const v0, 0x7f0c0041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayText:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f0c002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cityListImgBtn:Landroid/widget/ImageView;

    .line 343
    const v0, 0x7f0c0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherInfoText:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f0c0032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmorebtn:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f0c003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmapbtn:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmorebtn:Landroid/widget/TextView;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmapbtn:Landroid/widget/TextView;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    const v0, 0x7f0c0025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDaySelect:Landroid/widget/LinearLayout;

    .line 351
    const v0, 0x7f0c0026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDaySelect:Landroid/widget/LinearLayout;

    .line 352
    const v0, 0x7f0c0027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDaySelect:Landroid/widget/LinearLayout;

    .line 353
    const v0, 0x7f0c0028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDaySelect:Landroid/widget/LinearLayout;

    .line 354
    const v0, 0x7f0c0029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDaySelect:Landroid/widget/LinearLayout;

    .line 355
    const v0, 0x7f0c002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDaySelect:Landroid/widget/LinearLayout;

    .line 357
    const v0, 0x7f0c001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;

    .line 359
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cityListImgBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    :goto_24e
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 376
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setEventListener()V

    .line 377
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setWebLink()V

    .line 378
    return-void

    .line 366
    :cond_25f
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citySelectText:Landroid/widget/TextView;

    .line 367
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailstateText:Landroid/widget/TextView;

    goto :goto_24e
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mIsVisible:Z

    return v0
.end method

.method makeFormatDate()Ljava/text/SimpleDateFormat;
    .registers 3

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 1385
    :cond_12
    const-string v0, "mm-dd-yyyy"

    .line 1388
    :cond_14
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1390
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1397
    :goto_23
    return-object v0

    .line 1394
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

    .line 1403
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1406
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1408
    :cond_17
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDefaultDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    :cond_1b
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    .line 1413
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x14

    invoke-static {v1, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    .line 1415
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090070

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1416
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090071

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1417
    const/4 v1, 0x0

    .line 1418
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 1419
    if-eqz v6, :cond_154

    .line 1420
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

    .line 1421
    :cond_73
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1423
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

    .line 1457
    :goto_99
    return-object v0

    .line 1425
    :cond_9a
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1427
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

    .line 1431
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

    .line 1436
    :cond_e0
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 1439
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

    .line 1441
    :cond_fd
    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1444
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

    .line 1446
    :cond_11a
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 1448
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

    .line 1452
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
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3e7

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 2354
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2355
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detail on activity result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    if-ne v6, p2, :cond_33

    .line 2358
    invoke-virtual {p0, v6, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setResult(ILandroid/content/Intent;)V

    .line 2359
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    .line 2482
    :cond_32
    :goto_32
    return-void

    .line 2362
    :cond_33
    const v0, -0xcb84

    if-ne p1, v0, :cond_6b

    if-ne p2, v3, :cond_6b

    .line 2364
    const-string v0, ""

    const-string v1, "ACTIVITY_FLAG_DETAIL_TO_MAP"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2366
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 2369
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v1, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2370
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2371
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2372
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2374
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_32

    .line 2376
    :cond_6b
    const/16 v0, 0x5207

    if-ne p1, v0, :cond_a9

    .line 2378
    const-string v0, ""

    const-string v1, "ACTIVITY_FLAG_DETAIL_TO_LIST"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    if-nez v0, :cond_85

    .line 2381
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setResult(ILandroid/content/Intent;)V

    .line 2382
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    goto :goto_32

    .line 2386
    :cond_85
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2387
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 2388
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2389
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2390
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2391
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_32

    .line 2394
    :cond_a9
    const/16 v0, 0x55ef

    if-ne p1, v0, :cond_eb

    .line 2396
    const-string v0, ""

    const-string v1, "ACTIVITY_FLAG_DETAIL_TO_SETTINGS"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const/16 v0, 0x4b00

    if-ne p2, v0, :cond_d4

    .line 2399
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 2400
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loc setting changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_d4
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2403
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2404
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2405
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 2407
    :cond_eb
    const/16 v0, 0x59d7

    if-ne p1, v0, :cond_11a

    .line 2409
    const-string v0, ""

    const-string v1, "ACTIVITY_FLAG_DETAIL_DIRECT_ADD"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    if-ne p2, v3, :cond_32

    .line 2412
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 2414
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2415
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2416
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2417
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2419
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 2422
    :cond_11a
    const/16 v0, 0x5dbf

    if-ne p1, v0, :cond_154

    .line 2424
    const-string v0, ""

    const-string v1, "ACTIVITY_FLAG_DETAIL_DIRECT_DELETE"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2426
    if-eqz v0, :cond_133

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v5, :cond_138

    .line 2428
    :cond_133
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    goto/16 :goto_32

    .line 2432
    :cond_138
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 2434
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2435
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2436
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2437
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2439
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 2442
    :cond_154
    const/16 v0, 0x7917

    if-ne p1, v0, :cond_194

    .line 2444
    const-string v0, ""

    const-string v1, "ACTIVITY_FLAG_LIST_TO_SEARCH"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2446
    if-eqz v0, :cond_16d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v5, :cond_179

    .line 2448
    :cond_16d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    .line 2461
    :goto_170
    if-ne p2, v3, :cond_32

    .line 2462
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->exitFlag:Z

    .line 2463
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    goto/16 :goto_32

    .line 2452
    :cond_179
    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 2454
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2455
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2456
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2457
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2459
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_170

    .line 2466
    :cond_194
    const v0, -0x10428

    if-ne p1, v0, :cond_32

    .line 2468
    const-string v0, ""

    const-string v1, "ACTIVITY_FLAG_PREDETAIL_ADD_DETAIL"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    if-ne p2, v3, :cond_32

    .line 2471
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2472
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 2474
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v1, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2475
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2476
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2477
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2479
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 393
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setContentView(I)V

    .line 394
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setActivityVisibleState(Z)V

    .line 396
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateText:Landroid/widget/TextView;

    .line 397
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->leftArrowImg:Landroid/widget/ImageView;

    .line 398
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->rightArrowImg:Landroid/widget/ImageView;

    .line 399
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    .line 400
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    .line 402
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    if-eqz v0, :cond_51

    .line 404
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 405
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    .line 408
    :cond_51
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    if-eqz v0, :cond_5a

    .line 409
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 411
    :cond_5a
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 412
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 414
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    .line 415
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAnimationDuration(I)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSpacing(I)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setFadingEdgeLength(I)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 453
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    .line 454
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "bundel"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 201
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_30

    .line 203
    :cond_20
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->forceClosing:Z

    .line 204
    new-instance v3, Landroid/content/Intent;

    const-string v4, "sec.android.intent.action.HOME_RESUME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    .line 283
    :cond_2f
    :goto_2f
    return-void

    .line 209
    :cond_30
    sput-object p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailContext:Landroid/app/Activity;

    .line 210
    const v3, 0x7f03001e

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setContentView(I)V

    .line 211
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 212
    const-string v3, ""

    const-string v4, "onCreate@"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 214
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 216
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setActivityVisibleState(Z)V

    .line 218
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 219
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    .line 220
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->httpClient:Lcom/sec/android/widgetapp/weatherclock/http/AdvancedHttpClient;

    .line 222
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v3, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 224
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_80

    .line 225
    :cond_7d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    .line 227
    :cond_80
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    .line 229
    const v3, 0x7f0c0023

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateText:Landroid/widget/TextView;

    .line 230
    const v3, 0x7f0c001f

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->leftArrowImg:Landroid/widget/ImageView;

    .line 231
    const v3, 0x7f0c0020

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->rightArrowImg:Landroid/widget/ImageView;

    .line 232
    const v3, 0x7f0c0021

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    .line 233
    const v3, 0x7f0c0022

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateFlipper:Landroid/widget/ViewFlipper;

    .line 235
    const v3, 0x7f0c001e

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    .line 236
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAnimationDuration(I)V

    .line 237
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSpacing(I)V

    .line 238
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setFadingEdgeLength(I)V

    .line 239
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 240
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v3, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 241
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 243
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 276
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 277
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_2f

    .line 278
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "searchlocation"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    const-string v3, "selectLayout"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSelectId:I

    .line 281
    const-string v3, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApWdgId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 869
    packed-switch p1, :pswitch_data_10e

    .line 986
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 872
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 873
    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 874
    const v0, 0x7f0c0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    .line 876
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 878
    const v0, 0x7f0c0012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogText:Landroid/widget/TextView;

    .line 879
    const v0, 0x7f0c0017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogEdit:Landroid/widget/EditText;

    .line 880
    sget v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogState:I

    .line 881
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    .line 883
    sget v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogState:I

    packed-switch v0, :pswitch_data_114

    .line 904
    :cond_4d
    :goto_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$3;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 887
    :pswitch_87
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 893
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0015

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 899
    :pswitch_e0
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0016

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 869
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 883
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
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 531
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setActivityVisibleState(Z)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->httpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 534
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideAllDialog()V

    .line 535
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->stopHttpThread()V

    .line 537
    const-string v0, "config"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 539
    const-string v1, "NETWORK_TRY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 542
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->forceClosing:Z

    if-nez v0, :cond_31

    .line 543
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cleanResource()V

    .line 544
    :cond_31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 807
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

    .line 811
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 813
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 815
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->showDialog(I)V

    .line 816
    const-string v0, ""

    invoke-direct {p0, v0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 822
    :cond_37
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    if-ne v0, v4, :cond_52

    const/16 v0, 0x13

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x15

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x16

    if-ne p1, v0, :cond_52

    .line 827
    :cond_4b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFocusables(Ljava/lang/Boolean;)V

    .line 830
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

    .line 837
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    if-ne v0, v1, :cond_3c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_18

    const/16 v0, 0x14

    if-eq p1, v0, :cond_18

    const/16 v0, 0x15

    if-eq p1, v0, :cond_18

    const/16 v0, 0x16

    if-ne p1, v0, :cond_3c

    .line 842
    :cond_18
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 843
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 844
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFocusables(Ljava/lang/Boolean;)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    .line 849
    :cond_3c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2558
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2559
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2566
    if-eqz v0, :cond_5e

    .line 2567
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    .line 2568
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "searchlocation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 2569
    const-string v1, "selectLayout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mSelectId:I

    .line 2570
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnResume_srchLoc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "searchlocation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_5e
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2575
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mCityList:Ljava/util/ArrayList;

    .line 2577
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v1, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2578
    iput-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2579
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 2580
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2582
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setIntent(Landroid/content/Intent;)V

    .line 2584
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/high16 v6, 0x2400

    const/16 v5, 0x59d7

    const/16 v4, 0x5207

    const/4 v0, 0x1

    .line 2283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_c8

    .line 2349
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 2286
    :pswitch_10
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2287
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2288
    const-string v2, "flags"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2289
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2290
    invoke-virtual {p0, v1, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 2294
    :pswitch_2a
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2295
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2296
    const/16 v2, 0x7917

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 2300
    :pswitch_3e
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 2302
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2303
    const-string v2, "selCityName"

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2304
    const/16 v2, 0x55ef

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 2308
    :pswitch_6a
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2309
    const-string v2, "appWidgetId"

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2310
    const-string v2, "flags"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2311
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2312
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    .line 2317
    :pswitch_84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000a

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$25;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000b

    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$24;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$24;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2346
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_f

    .line 2283
    nop

    :pswitch_data_c8
    .packed-switch 0x7f0c00c4
        :pswitch_6a
        :pswitch_84
        :pswitch_10
        :pswitch_2a
        :pswitch_3e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 459
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 461
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 462
    const-string v0, ""

    const-string v1, "onPause@"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 465
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 467
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->forceClosing:Z

    if-nez v0, :cond_42

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weathercolco.action.DETAIL_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const-string v1, "WEATHER_CLOCK_NEW_LOCATION"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 474
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->setWidgetIndex(Landroid/content/Context;ILjava/lang/String;)V

    .line 477
    :cond_42
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2265
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2267
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2268
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2273
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2275
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isMaxCityListAdded()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2276
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2278
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 488
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 489
    const-string v0, "config"

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 490
    const-string v1, "NETWORK_TRY"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->NETWORK_TRY:Z

    .line 491
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setActivityVisibleState(Z)V

    .line 492
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 494
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    if-nez v0, :cond_30

    .line 496
    const-string v0, ""

    const-string v1, "Don`t have Data in DB so finish!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setResult(ILandroid/content/Intent;)V

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->finish()V

    .line 505
    :cond_30
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getDataFomat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 507
    invoke-static {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setDataFomat(Landroid/content/Context;Z)Z

    .line 508
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 509
    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 510
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    .line 511
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->gallery:Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherView:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$ViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 514
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 516
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    .line 523
    :goto_61
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setLanddirection:Z

    .line 525
    return-void

    .line 520
    :cond_64
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastSelectedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setFlipper(Ljava/lang/String;)V

    goto :goto_61
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 482
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 483
    const-string v0, ""

    const-string v1, "onStop@"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_1a

    .line 559
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 552
    :pswitch_e
    sget-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->EVENT_FLAG:Z

    if-eqz v0, :cond_9

    .line 554
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->EVENT_FLAG:Z

    .line 555
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->checkEventRegion(Landroid/view/MotionEvent;Z)V

    goto :goto_9

    .line 549
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mIsVisible:Z

    .line 388
    return-void
.end method

.method public setFocusables(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUpdateBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 855
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 856
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 858
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 859
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDaySelect:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 861
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cityListImgBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 862
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmorebtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 863
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailmapbtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 864
    return-void
.end method

.method public setOnClickRegion(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "v"
    .parameter "listener"

    .prologue
    .line 629
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    .line 634
    :cond_b
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->eventRegions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    return-void
.end method

.method public setUiWithDatabaseData(Ljava/lang/String;)V
    .registers 12
    .parameter

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1167
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 1169
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1171
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citySelectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailstateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1178
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v3

    .line 1179
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getDetailWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v4

    .line 1180
    const/4 v1, 0x0

    .line 1181
    const/4 v0, 0x0

    .line 1182
    if-eqz v3, :cond_47

    .line 1183
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v1

    .line 1184
    :cond_47
    if-eqz v4, :cond_4d

    .line 1185
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    .line 1187
    :cond_4d
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    .line 1189
    if-eqz v1, :cond_71e

    .line 1191
    if-eqz v0, :cond_5f

    .line 1192
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->url:Ljava/lang/String;

    .line 1194
    :cond_5f
    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7c

    .line 1196
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_71f

    .line 1197
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->leftArrowImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->rightArrowImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1206
    :cond_7c
    :goto_7c
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1207
    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 1212
    const/4 v0, 0x0

    .line 1213
    if-eqz v4, :cond_8f

    .line 1214
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    .line 1217
    :cond_8f
    if-eqz v0, :cond_71e

    .line 1218
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1220
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todaydateText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->makeTodayDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setTodayWeatherImg(I)V

    .line 1223
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->updateTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->nowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v3

    iget v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->highTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v3

    iget v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->lowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v3

    iget v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getWeatherText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->makeFormatDate()Ljava/text/SimpleDateFormat;

    move-result-object v2

    .line 1239
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1244
    const-string v5, "%te"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1247
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1250
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayText:Landroid/widget/TextView;

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x14

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1252
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayWeatherImg:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1253
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->onedayurl:Ljava/lang/String;

    .line 1259
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1260
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1262
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayText:Landroid/widget/TextView;

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x14

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayWeatherImg:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1265
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twodayurl:Ljava/lang/String;

    .line 1271
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1272
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1274
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayText:Landroid/widget/TextView;

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x14

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayWeatherImg:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1277
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threedayurl:Ljava/lang/String;

    .line 1283
    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1284
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1286
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayText:Landroid/widget/TextView;

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x14

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayWeatherImg:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1289
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourdayurl:Ljava/lang/String;

    .line 1294
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1295
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1297
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayText:Landroid/widget/TextView;

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0x14

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayWeatherImg:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1300
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v6

    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fivedayurl:Ljava/lang/String;

    .line 1305
    const/4 v3, 0x5

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1306
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1308
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayText:Landroid/widget/TextView;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x14

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getDayOfWeek(Landroid/widget/TextView;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayDateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayWeatherImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mUiUtil:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getSmallImage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1311
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v2

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v0

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIFZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixdayurl:Ljava/lang/String;

    .line 1315
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I

    if-nez v0, :cond_732

    .line 1317
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todayTempImg:Landroid/widget/ImageView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1324
    :goto_394
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todaydateText:Landroid/widget/TextView;

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

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->citySelectText:Landroid/widget/TextView;

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

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailstateText:Landroid/widget/TextView;

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

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->weatherInfoText:Landroid/widget/TextView;

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

    .line 1329
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->nowTempText:Landroid/widget/TextView;

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

    .line 1331
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->highTempText:Landroid/widget/TextView;

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

    .line 1333
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1334
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->lowTempText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1336
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1339
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocusFromTouch()Z

    .line 1340
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detail_focus:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->oneDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->twoDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1349
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->threeDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fourDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->fiveDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1358
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDaySelect:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayHighTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->sixDayLowTempText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1375
    :cond_71e
    :goto_71e
    return-void

    .line 1200
    :cond_71f
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->leftArrowImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->rightArrowImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_72b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_72b} :catch_72d

    goto/16 :goto_7c

    .line 1370
    :catch_72d
    move-exception v0

    .line 1373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_71e

    .line 1321
    :cond_732
    :try_start_732
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->todayTempImg:Landroid/widget/ImageView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_73a
    .catch Ljava/lang/Exception; {:try_start_732 .. :try_end_73a} :catch_72d

    goto/16 :goto_394
.end method

.method setViewUri(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;-><init>()V

    .line 1063
    const/4 v0, 0x0

    .line 1065
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    if-nez v2, :cond_13

    .line 1066
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    sget-object v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->detailContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    .line 1069
    :cond_13
    const-string v2, "DETAIL_HOME"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-nez p3, :cond_2a

    .line 1070
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getLanguageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeQuickViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1078
    :cond_29
    :goto_29
    return-object v0

    .line 1072
    :cond_2a
    const-string v2, "DETAIL_MORE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    if-nez p3, :cond_41

    .line 1073
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getLanguageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeMoreViewUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_29

    .line 1075
    :cond_41
    const-string v2, "DETAIL_DAY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1076
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->urlManager:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuweatherUiUtil;->getLanguageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherUrlManager;->makeDetailViewUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_29
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 2712
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2713
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->selLocation:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastSelectedLocation(Landroid/content/Context;Ljava/lang/String;)V

    .line 2718
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2719
    return-void
.end method
